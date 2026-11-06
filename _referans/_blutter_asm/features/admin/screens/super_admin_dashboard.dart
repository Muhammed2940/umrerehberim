// lib: , url: package:umrem_demo/features/admin/screens/super_admin_dashboard.dart

// class id: 1049535, size: 0x8
class :: {
}

// class id: 2485, size: 0x14, field offset: 0x14
class _SuperAdminDashboardState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e4398, size: 0x130
    // 0x5e4398: EnterFrame
    //     0x5e4398: stp             fp, lr, [SP, #-0x10]!
    //     0x5e439c: mov             fp, SP
    // 0x5e43a0: AllocStack(0x18)
    //     0x5e43a0: sub             SP, SP, #0x18
    // 0x5e43a4: SetupParameters(_SuperAdminDashboardState this /* r1 => r1, fp-0x8 */)
    //     0x5e43a4: stur            x1, [fp, #-8]
    // 0x5e43a8: CheckStackOverflow
    //     0x5e43a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e43ac: cmp             SP, x16
    //     0x5e43b0: b.ls            #0x5e44bc
    // 0x5e43b4: r1 = 1
    //     0x5e43b4: mov             x1, #1
    // 0x5e43b8: r0 = AllocateContext()
    //     0x5e43b8: bl              #0x927010  ; AllocateContextStub
    // 0x5e43bc: mov             x1, x0
    // 0x5e43c0: ldur            x0, [fp, #-8]
    // 0x5e43c4: StoreField: r1->field_f = r0
    //     0x5e43c4: stur            w0, [x1, #0xf]
    // 0x5e43c8: r0 = LoadStaticField(0x834)
    //     0x5e43c8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e43cc: ldr             x0, [x0, #0x1068]
    // 0x5e43d0: cmp             w0, NULL
    // 0x5e43d4: b.eq            #0x5e44c4
    // 0x5e43d8: LoadField: r3 = r0->field_53
    //     0x5e43d8: ldur            w3, [x0, #0x53]
    // 0x5e43dc: DecompressPointer r3
    //     0x5e43dc: add             x3, x3, HEAP, lsl #32
    // 0x5e43e0: stur            x3, [fp, #-0x10]
    // 0x5e43e4: LoadField: r0 = r3->field_7
    //     0x5e43e4: ldur            w0, [x3, #7]
    // 0x5e43e8: DecompressPointer r0
    //     0x5e43e8: add             x0, x0, HEAP, lsl #32
    // 0x5e43ec: mov             x2, x1
    // 0x5e43f0: stur            x0, [fp, #-8]
    // 0x5e43f4: r1 = Function '<anonymous closure>':.
    //     0x5e43f4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a548] AnonymousClosure: (0x5dff2c), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::initState (0x5dfddc)
    //     0x5e43f8: ldr             x1, [x1, #0x548]
    // 0x5e43fc: r0 = AllocateClosure()
    //     0x5e43fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e4400: ldur            x2, [fp, #-8]
    // 0x5e4404: mov             x3, x0
    // 0x5e4408: r1 = Null
    //     0x5e4408: mov             x1, NULL
    // 0x5e440c: stur            x3, [fp, #-8]
    // 0x5e4410: cmp             w2, NULL
    // 0x5e4414: b.eq            #0x5e4434
    // 0x5e4418: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e4418: ldur            w4, [x2, #0x17]
    // 0x5e441c: DecompressPointer r4
    //     0x5e441c: add             x4, x4, HEAP, lsl #32
    // 0x5e4420: r8 = X0
    //     0x5e4420: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e4424: LoadField: r9 = r4->field_7
    //     0x5e4424: ldur            x9, [x4, #7]
    // 0x5e4428: r3 = Null
    //     0x5e4428: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a550] Null
    //     0x5e442c: ldr             x3, [x3, #0x550]
    // 0x5e4430: blr             x9
    // 0x5e4434: ldur            x0, [fp, #-0x10]
    // 0x5e4438: LoadField: r1 = r0->field_b
    //     0x5e4438: ldur            w1, [x0, #0xb]
    // 0x5e443c: LoadField: r2 = r0->field_f
    //     0x5e443c: ldur            w2, [x0, #0xf]
    // 0x5e4440: DecompressPointer r2
    //     0x5e4440: add             x2, x2, HEAP, lsl #32
    // 0x5e4444: LoadField: r3 = r2->field_b
    //     0x5e4444: ldur            w3, [x2, #0xb]
    // 0x5e4448: r2 = LoadInt32Instr(r1)
    //     0x5e4448: sbfx            x2, x1, #1, #0x1f
    // 0x5e444c: stur            x2, [fp, #-0x18]
    // 0x5e4450: r1 = LoadInt32Instr(r3)
    //     0x5e4450: sbfx            x1, x3, #1, #0x1f
    // 0x5e4454: cmp             x2, x1
    // 0x5e4458: b.ne            #0x5e4464
    // 0x5e445c: mov             x1, x0
    // 0x5e4460: r0 = _growToNextCapacity()
    //     0x5e4460: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e4464: ldur            x2, [fp, #-0x10]
    // 0x5e4468: ldur            x3, [fp, #-0x18]
    // 0x5e446c: add             x4, x3, #1
    // 0x5e4470: lsl             x5, x4, #1
    // 0x5e4474: StoreField: r2->field_b = r5
    //     0x5e4474: stur            w5, [x2, #0xb]
    // 0x5e4478: LoadField: r1 = r2->field_f
    //     0x5e4478: ldur            w1, [x2, #0xf]
    // 0x5e447c: DecompressPointer r1
    //     0x5e447c: add             x1, x1, HEAP, lsl #32
    // 0x5e4480: ldur            x0, [fp, #-8]
    // 0x5e4484: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e4484: add             x25, x1, x3, lsl #2
    //     0x5e4488: add             x25, x25, #0xf
    //     0x5e448c: str             w0, [x25]
    //     0x5e4490: tbz             w0, #0, #0x5e44ac
    //     0x5e4494: ldurb           w16, [x1, #-1]
    //     0x5e4498: ldurb           w17, [x0, #-1]
    //     0x5e449c: and             x16, x17, x16, lsr #2
    //     0x5e44a0: tst             x16, HEAP, lsr #32
    //     0x5e44a4: b.eq            #0x5e44ac
    //     0x5e44a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e44ac: r0 = Null
    //     0x5e44ac: mov             x0, NULL
    // 0x5e44b0: LeaveFrame
    //     0x5e44b0: mov             SP, fp
    //     0x5e44b4: ldp             fp, lr, [SP], #0x10
    // 0x5e44b8: ret
    //     0x5e44b8: ret             
    // 0x5e44bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e44bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e44c0: b               #0x5e43b4
    // 0x5e44c4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e44c4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6e9d4c, size: 0x1a4
    // 0x6e9d4c: EnterFrame
    //     0x6e9d4c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e9d50: mov             fp, SP
    // 0x6e9d54: AllocStack(0x38)
    //     0x6e9d54: sub             SP, SP, #0x38
    // 0x6e9d58: SetupParameters(_SuperAdminDashboardState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6e9d58: stur            x1, [fp, #-8]
    //     0x6e9d5c: stur            x2, [fp, #-0x10]
    // 0x6e9d60: CheckStackOverflow
    //     0x6e9d60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e9d64: cmp             SP, x16
    //     0x6e9d68: b.ls            #0x6e9ee8
    // 0x6e9d6c: r1 = 2
    //     0x6e9d6c: mov             x1, #2
    // 0x6e9d70: r0 = AllocateContext()
    //     0x6e9d70: bl              #0x927010  ; AllocateContextStub
    // 0x6e9d74: mov             x3, x0
    // 0x6e9d78: ldur            x0, [fp, #-8]
    // 0x6e9d7c: stur            x3, [fp, #-0x18]
    // 0x6e9d80: StoreField: r3->field_f = r0
    //     0x6e9d80: stur            w0, [x3, #0xf]
    // 0x6e9d84: ldur            x0, [fp, #-0x10]
    // 0x6e9d88: StoreField: r3->field_13 = r0
    //     0x6e9d88: stur            w0, [x3, #0x13]
    // 0x6e9d8c: mov             x2, x3
    // 0x6e9d90: r1 = Function '<anonymous closure>':.
    //     0x6e9d90: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2d0] AnonymousClosure: (0x6ed6e4), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::build (0x6e9d4c)
    //     0x6e9d94: ldr             x1, [x1, #0x2d0]
    // 0x6e9d98: r0 = AllocateClosure()
    //     0x6e9d98: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e9d9c: stur            x0, [fp, #-8]
    // 0x6e9da0: r0 = IconButton()
    //     0x6e9da0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6e9da4: mov             x3, x0
    // 0x6e9da8: ldur            x0, [fp, #-8]
    // 0x6e9dac: stur            x3, [fp, #-0x10]
    // 0x6e9db0: StoreField: r3->field_3b = r0
    //     0x6e9db0: stur            w0, [x3, #0x3b]
    // 0x6e9db4: r0 = false
    //     0x6e9db4: add             x0, NULL, #0x30  ; false
    // 0x6e9db8: StoreField: r3->field_4f = r0
    //     0x6e9db8: stur            w0, [x3, #0x4f]
    // 0x6e9dbc: r1 = Instance_Icon
    //     0x6e9dbc: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2d8] Obj!Icon@a1e0f1
    //     0x6e9dc0: ldr             x1, [x1, #0x2d8]
    // 0x6e9dc4: StoreField: r3->field_1f = r1
    //     0x6e9dc4: stur            w1, [x3, #0x1f]
    // 0x6e9dc8: r1 = Instance__IconButtonVariant
    //     0x6e9dc8: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6e9dcc: ldr             x1, [x1, #0x1b8]
    // 0x6e9dd0: StoreField: r3->field_6f = r1
    //     0x6e9dd0: stur            w1, [x3, #0x6f]
    // 0x6e9dd4: r1 = Null
    //     0x6e9dd4: mov             x1, NULL
    // 0x6e9dd8: r2 = 2
    //     0x6e9dd8: mov             x2, #2
    // 0x6e9ddc: r0 = AllocateArray()
    //     0x6e9ddc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e9de0: mov             x2, x0
    // 0x6e9de4: ldur            x0, [fp, #-0x10]
    // 0x6e9de8: stur            x2, [fp, #-8]
    // 0x6e9dec: StoreField: r2->field_f = r0
    //     0x6e9dec: stur            w0, [x2, #0xf]
    // 0x6e9df0: r1 = <Widget>
    //     0x6e9df0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e9df4: r0 = AllocateGrowableArray()
    //     0x6e9df4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e9df8: mov             x1, x0
    // 0x6e9dfc: ldur            x0, [fp, #-8]
    // 0x6e9e00: stur            x1, [fp, #-0x10]
    // 0x6e9e04: StoreField: r1->field_f = r0
    //     0x6e9e04: stur            w0, [x1, #0xf]
    // 0x6e9e08: r0 = 2
    //     0x6e9e08: mov             x0, #2
    // 0x6e9e0c: StoreField: r1->field_b = r0
    //     0x6e9e0c: stur            w0, [x1, #0xb]
    // 0x6e9e10: r0 = AppBar()
    //     0x6e9e10: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6e9e14: stur            x0, [fp, #-8]
    // 0x6e9e18: r16 = Instance_Color
    //     0x6e9e18: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6e9e1c: ldr             x16, [x16, #0xf30]
    // 0x6e9e20: r30 = true
    //     0x6e9e20: add             lr, NULL, #0x20  ; true
    // 0x6e9e24: stp             lr, x16, [SP, #0x10]
    // 0x6e9e28: r16 = Instance_IconThemeData
    //     0x6e9e28: ldr             x16, [PP, #0x57e0]  ; [pp+0x57e0] Obj!IconThemeData@a1a731
    // 0x6e9e2c: ldur            lr, [fp, #-0x10]
    // 0x6e9e30: stp             lr, x16, [SP]
    // 0x6e9e34: mov             x1, x0
    // 0x6e9e38: r2 = Instance_Text
    //     0x6e9e38: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a2e0] Obj!Text@a1bdb1
    //     0x6e9e3c: ldr             x2, [x2, #0x2e0]
    // 0x6e9e40: r4 = const [0, 0x6, 0x4, 0x2, actions, 0x5, backgroundColor, 0x2, centerTitle, 0x3, iconTheme, 0x4, null]
    //     0x6e9e40: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a2e8] List(13) [0, 0x6, 0x4, 0x2, "actions", 0x5, "backgroundColor", 0x2, "centerTitle", 0x3, "iconTheme", 0x4, Null]
    //     0x6e9e44: ldr             x4, [x4, #0x2e8]
    // 0x6e9e48: r0 = AppBar()
    //     0x6e9e48: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6e9e4c: ldur            x2, [fp, #-0x18]
    // 0x6e9e50: r1 = Function '<anonymous closure>':.
    //     0x6e9e50: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2f0] AnonymousClosure: (0x6e9ef0), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::build (0x6e9d4c)
    //     0x6e9e54: ldr             x1, [x1, #0x2f0]
    // 0x6e9e58: r0 = AllocateClosure()
    //     0x6e9e58: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e9e5c: r1 = <AgencyProvider>
    //     0x6e9e5c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6e9e60: ldr             x1, [x1, #0xb60]
    // 0x6e9e64: stur            x0, [fp, #-0x10]
    // 0x6e9e68: r0 = Consumer()
    //     0x6e9e68: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6e9e6c: mov             x1, x0
    // 0x6e9e70: ldur            x0, [fp, #-0x10]
    // 0x6e9e74: stur            x1, [fp, #-0x18]
    // 0x6e9e78: StoreField: r1->field_13 = r0
    //     0x6e9e78: stur            w0, [x1, #0x13]
    // 0x6e9e7c: r0 = Scaffold()
    //     0x6e9e7c: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6e9e80: ldur            x1, [fp, #-8]
    // 0x6e9e84: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e9e84: stur            w1, [x0, #0x17]
    // 0x6e9e88: ldur            x1, [fp, #-0x18]
    // 0x6e9e8c: StoreField: r0->field_1b = r1
    //     0x6e9e8c: stur            w1, [x0, #0x1b]
    // 0x6e9e90: r1 = Instance_AlignmentDirectional
    //     0x6e9e90: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6e9e94: ldr             x1, [x1, #0x350]
    // 0x6e9e98: StoreField: r0->field_2f = r1
    //     0x6e9e98: stur            w1, [x0, #0x2f]
    // 0x6e9e9c: r1 = Instance_Color
    //     0x6e9e9c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x6e9ea0: ldr             x1, [x1, #0xf48]
    // 0x6e9ea4: StoreField: r0->field_4f = r1
    //     0x6e9ea4: stur            w1, [x0, #0x4f]
    // 0x6e9ea8: r1 = true
    //     0x6e9ea8: add             x1, NULL, #0x20  ; true
    // 0x6e9eac: StoreField: r0->field_5f = r1
    //     0x6e9eac: stur            w1, [x0, #0x5f]
    // 0x6e9eb0: r2 = Instance_DragStartBehavior
    //     0x6e9eb0: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6e9eb4: StoreField: r0->field_63 = r2
    //     0x6e9eb4: stur            w2, [x0, #0x63]
    // 0x6e9eb8: r2 = false
    //     0x6e9eb8: add             x2, NULL, #0x30  ; false
    // 0x6e9ebc: StoreField: r0->field_b = r2
    //     0x6e9ebc: stur            w2, [x0, #0xb]
    // 0x6e9ec0: StoreField: r0->field_f = r1
    //     0x6e9ec0: stur            w1, [x0, #0xf]
    // 0x6e9ec4: StoreField: r0->field_13 = r2
    //     0x6e9ec4: stur            w2, [x0, #0x13]
    // 0x6e9ec8: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6e9ec8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6e9ecc: ldr             x2, [x2, #0x358]
    // 0x6e9ed0: StoreField: r0->field_4b = r2
    //     0x6e9ed0: stur            w2, [x0, #0x4b]
    // 0x6e9ed4: StoreField: r0->field_6b = r1
    //     0x6e9ed4: stur            w1, [x0, #0x6b]
    // 0x6e9ed8: StoreField: r0->field_6f = r1
    //     0x6e9ed8: stur            w1, [x0, #0x6f]
    // 0x6e9edc: LeaveFrame
    //     0x6e9edc: mov             SP, fp
    //     0x6e9ee0: ldp             fp, lr, [SP], #0x10
    // 0x6e9ee4: ret
    //     0x6e9ee4: ret             
    // 0x6e9ee8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e9ee8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e9eec: b               #0x6e9d6c
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6e9ef0, size: 0xa50
    // 0x6e9ef0: EnterFrame
    //     0x6e9ef0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e9ef4: mov             fp, SP
    // 0x6e9ef8: AllocStack(0x58)
    //     0x6e9ef8: sub             SP, SP, #0x58
    // 0x6e9efc: SetupParameters([dynamic _ /* r0 */])
    //     0x6e9efc: ldr             x0, [fp, #0x28]
    //     0x6e9f00: ldur            w1, [x0, #0x17]
    //     0x6e9f04: add             x1, x1, HEAP, lsl #32
    //     0x6e9f08: stur            x1, [fp, #-8]
    // 0x6e9f0c: CheckStackOverflow
    //     0x6e9f0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e9f10: cmp             SP, x16
    //     0x6e9f14: b.ls            #0x6ea938
    // 0x6e9f18: r1 = 2
    //     0x6e9f18: mov             x1, #2
    // 0x6e9f1c: r0 = AllocateContext()
    //     0x6e9f1c: bl              #0x927010  ; AllocateContextStub
    // 0x6e9f20: mov             x1, x0
    // 0x6e9f24: ldur            x0, [fp, #-8]
    // 0x6e9f28: stur            x1, [fp, #-0x10]
    // 0x6e9f2c: StoreField: r1->field_b = r0
    //     0x6e9f2c: stur            w0, [x1, #0xb]
    // 0x6e9f30: ldr             x2, [fp, #0x20]
    // 0x6e9f34: StoreField: r1->field_f = r2
    //     0x6e9f34: stur            w2, [x1, #0xf]
    // 0x6e9f38: ldr             x2, [fp, #0x18]
    // 0x6e9f3c: StoreField: r1->field_13 = r2
    //     0x6e9f3c: stur            w2, [x1, #0x13]
    // 0x6e9f40: LoadField: r3 = r2->field_27
    //     0x6e9f40: ldur            w3, [x2, #0x27]
    // 0x6e9f44: DecompressPointer r3
    //     0x6e9f44: add             x3, x3, HEAP, lsl #32
    // 0x6e9f48: tbnz            w3, #4, #0x6e9f60
    // 0x6e9f4c: r0 = Instance_Center
    //     0x6e9f4c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f40] Obj!Center@a1fe11
    //     0x6e9f50: ldr             x0, [x0, #0xf40]
    // 0x6e9f54: LeaveFrame
    //     0x6e9f54: mov             SP, fp
    //     0x6e9f58: ldp             fp, lr, [SP], #0x10
    // 0x6e9f5c: ret
    //     0x6e9f5c: ret             
    // 0x6e9f60: r0 = Radius()
    //     0x6e9f60: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e9f64: d0 = 16.000000
    //     0x6e9f64: fmov            d0, #16.00000000
    // 0x6e9f68: stur            x0, [fp, #-0x18]
    // 0x6e9f6c: StoreField: r0->field_7 = d0
    //     0x6e9f6c: stur            d0, [x0, #7]
    // 0x6e9f70: StoreField: r0->field_f = d0
    //     0x6e9f70: stur            d0, [x0, #0xf]
    // 0x6e9f74: r0 = BorderRadius()
    //     0x6e9f74: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e9f78: mov             x2, x0
    // 0x6e9f7c: ldur            x0, [fp, #-0x18]
    // 0x6e9f80: stur            x2, [fp, #-0x20]
    // 0x6e9f84: StoreField: r2->field_7 = r0
    //     0x6e9f84: stur            w0, [x2, #7]
    // 0x6e9f88: StoreField: r2->field_b = r0
    //     0x6e9f88: stur            w0, [x2, #0xb]
    // 0x6e9f8c: StoreField: r2->field_f = r0
    //     0x6e9f8c: stur            w0, [x2, #0xf]
    // 0x6e9f90: StoreField: r2->field_13 = r0
    //     0x6e9f90: stur            w0, [x2, #0x13]
    // 0x6e9f94: r16 = 0.300000
    //     0x6e9f94: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x6e9f98: ldr             x16, [x16, #0x320]
    // 0x6e9f9c: str             x16, [SP]
    // 0x6e9fa0: r1 = Instance_Color
    //     0x6e9fa0: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6e9fa4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6e9fa4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6e9fa8: ldr             x4, [x4, #0x198]
    // 0x6e9fac: r0 = withValues()
    //     0x6e9fac: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6e9fb0: stur            x0, [fp, #-0x18]
    // 0x6e9fb4: r0 = BoxShadow()
    //     0x6e9fb4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6e9fb8: stur            x0, [fp, #-0x28]
    // 0x6e9fbc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6e9fbc: stur            xzr, [x0, #0x17]
    // 0x6e9fc0: r1 = Instance_BlurStyle
    //     0x6e9fc0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6e9fc4: ldr             x1, [x1, #0x9b0]
    // 0x6e9fc8: StoreField: r0->field_1f = r1
    //     0x6e9fc8: stur            w1, [x0, #0x1f]
    // 0x6e9fcc: ldur            x1, [fp, #-0x18]
    // 0x6e9fd0: StoreField: r0->field_7 = r1
    //     0x6e9fd0: stur            w1, [x0, #7]
    // 0x6e9fd4: r1 = Instance_Offset
    //     0x6e9fd4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2f8] Obj!Offset@a26a71
    //     0x6e9fd8: ldr             x1, [x1, #0x2f8]
    // 0x6e9fdc: StoreField: r0->field_b = r1
    //     0x6e9fdc: stur            w1, [x0, #0xb]
    // 0x6e9fe0: d0 = 10.000000
    //     0x6e9fe0: fmov            d0, #10.00000000
    // 0x6e9fe4: StoreField: r0->field_f = d0
    //     0x6e9fe4: stur            d0, [x0, #0xf]
    // 0x6e9fe8: r1 = Null
    //     0x6e9fe8: mov             x1, NULL
    // 0x6e9fec: r2 = 2
    //     0x6e9fec: mov             x2, #2
    // 0x6e9ff0: r0 = AllocateArray()
    //     0x6e9ff0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e9ff4: mov             x2, x0
    // 0x6e9ff8: ldur            x0, [fp, #-0x28]
    // 0x6e9ffc: stur            x2, [fp, #-0x18]
    // 0x6ea000: StoreField: r2->field_f = r0
    //     0x6ea000: stur            w0, [x2, #0xf]
    // 0x6ea004: r1 = <BoxShadow>
    //     0x6ea004: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6ea008: ldr             x1, [x1, #0x9c0]
    // 0x6ea00c: r0 = AllocateGrowableArray()
    //     0x6ea00c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea010: mov             x1, x0
    // 0x6ea014: ldur            x0, [fp, #-0x18]
    // 0x6ea018: stur            x1, [fp, #-0x28]
    // 0x6ea01c: StoreField: r1->field_f = r0
    //     0x6ea01c: stur            w0, [x1, #0xf]
    // 0x6ea020: r0 = 2
    //     0x6ea020: mov             x0, #2
    // 0x6ea024: StoreField: r1->field_b = r0
    //     0x6ea024: stur            w0, [x1, #0xb]
    // 0x6ea028: r0 = BoxDecoration()
    //     0x6ea028: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ea02c: mov             x2, x0
    // 0x6ea030: ldur            x0, [fp, #-0x20]
    // 0x6ea034: stur            x2, [fp, #-0x18]
    // 0x6ea038: StoreField: r2->field_13 = r0
    //     0x6ea038: stur            w0, [x2, #0x13]
    // 0x6ea03c: ldur            x0, [fp, #-0x28]
    // 0x6ea040: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ea040: stur            w0, [x2, #0x17]
    // 0x6ea044: r0 = Instance_LinearGradient
    //     0x6ea044: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a300] Obj!LinearGradient@a0b7b1
    //     0x6ea048: ldr             x0, [x0, #0x300]
    // 0x6ea04c: StoreField: r2->field_1b = r0
    //     0x6ea04c: stur            w0, [x2, #0x1b]
    // 0x6ea050: r0 = Instance_BoxShape
    //     0x6ea050: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ea054: ldr             x0, [x0, #0x1c8]
    // 0x6ea058: StoreField: r2->field_23 = r0
    //     0x6ea058: stur            w0, [x2, #0x23]
    // 0x6ea05c: r16 = 0.200000
    //     0x6ea05c: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6ea060: ldr             x16, [x16, #0x1f0]
    // 0x6ea064: str             x16, [SP]
    // 0x6ea068: r1 = Instance_Color
    //     0x6ea068: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ea06c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ea06c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ea070: ldr             x4, [x4, #0x198]
    // 0x6ea074: r0 = withValues()
    //     0x6ea074: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ea078: stur            x0, [fp, #-0x20]
    // 0x6ea07c: r0 = Radius()
    //     0x6ea07c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ea080: d0 = 12.000000
    //     0x6ea080: fmov            d0, #12.00000000
    // 0x6ea084: stur            x0, [fp, #-0x28]
    // 0x6ea088: StoreField: r0->field_7 = d0
    //     0x6ea088: stur            d0, [x0, #7]
    // 0x6ea08c: StoreField: r0->field_f = d0
    //     0x6ea08c: stur            d0, [x0, #0xf]
    // 0x6ea090: r0 = BorderRadius()
    //     0x6ea090: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ea094: mov             x1, x0
    // 0x6ea098: ldur            x0, [fp, #-0x28]
    // 0x6ea09c: stur            x1, [fp, #-0x30]
    // 0x6ea0a0: StoreField: r1->field_7 = r0
    //     0x6ea0a0: stur            w0, [x1, #7]
    // 0x6ea0a4: StoreField: r1->field_b = r0
    //     0x6ea0a4: stur            w0, [x1, #0xb]
    // 0x6ea0a8: StoreField: r1->field_f = r0
    //     0x6ea0a8: stur            w0, [x1, #0xf]
    // 0x6ea0ac: StoreField: r1->field_13 = r0
    //     0x6ea0ac: stur            w0, [x1, #0x13]
    // 0x6ea0b0: r0 = BoxDecoration()
    //     0x6ea0b0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ea0b4: mov             x1, x0
    // 0x6ea0b8: ldur            x0, [fp, #-0x20]
    // 0x6ea0bc: stur            x1, [fp, #-0x28]
    // 0x6ea0c0: StoreField: r1->field_7 = r0
    //     0x6ea0c0: stur            w0, [x1, #7]
    // 0x6ea0c4: ldur            x0, [fp, #-0x30]
    // 0x6ea0c8: StoreField: r1->field_13 = r0
    //     0x6ea0c8: stur            w0, [x1, #0x13]
    // 0x6ea0cc: r0 = Instance_BoxShape
    //     0x6ea0cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ea0d0: ldr             x0, [x0, #0x1c8]
    // 0x6ea0d4: StoreField: r1->field_23 = r0
    //     0x6ea0d4: stur            w0, [x1, #0x23]
    // 0x6ea0d8: r0 = Container()
    //     0x6ea0d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ea0dc: stur            x0, [fp, #-0x20]
    // 0x6ea0e0: r16 = Instance_EdgeInsets
    //     0x6ea0e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x6ea0e4: ldr             x16, [x16, #0x370]
    // 0x6ea0e8: ldur            lr, [fp, #-0x28]
    // 0x6ea0ec: stp             lr, x16, [SP, #8]
    // 0x6ea0f0: r16 = Instance_Icon
    //     0x6ea0f0: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a308] Obj!Icon@a1e531
    //     0x6ea0f4: ldr             x16, [x16, #0x308]
    // 0x6ea0f8: str             x16, [SP]
    // 0x6ea0fc: mov             x1, x0
    // 0x6ea100: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6ea100: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6ea104: ldr             x4, [x4, #0x1e8]
    // 0x6ea108: r0 = Container()
    //     0x6ea108: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ea10c: r1 = Null
    //     0x6ea10c: mov             x1, NULL
    // 0x6ea110: r2 = 6
    //     0x6ea110: mov             x2, #6
    // 0x6ea114: r0 = AllocateArray()
    //     0x6ea114: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ea118: mov             x2, x0
    // 0x6ea11c: ldur            x0, [fp, #-0x20]
    // 0x6ea120: stur            x2, [fp, #-0x28]
    // 0x6ea124: StoreField: r2->field_f = r0
    //     0x6ea124: stur            w0, [x2, #0xf]
    // 0x6ea128: r16 = Instance_SizedBox
    //     0x6ea128: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x6ea12c: ldr             x16, [x16, #0x758]
    // 0x6ea130: StoreField: r2->field_13 = r16
    //     0x6ea130: stur            w16, [x2, #0x13]
    // 0x6ea134: r16 = Instance_Expanded
    //     0x6ea134: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a310] Obj!Expanded@a1ad31
    //     0x6ea138: ldr             x16, [x16, #0x310]
    // 0x6ea13c: ArrayStore: r2[0] = r16  ; List_4
    //     0x6ea13c: stur            w16, [x2, #0x17]
    // 0x6ea140: r1 = <Widget>
    //     0x6ea140: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ea144: r0 = AllocateGrowableArray()
    //     0x6ea144: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea148: mov             x1, x0
    // 0x6ea14c: ldur            x0, [fp, #-0x28]
    // 0x6ea150: stur            x1, [fp, #-0x20]
    // 0x6ea154: StoreField: r1->field_f = r0
    //     0x6ea154: stur            w0, [x1, #0xf]
    // 0x6ea158: r2 = 6
    //     0x6ea158: mov             x2, #6
    // 0x6ea15c: StoreField: r1->field_b = r2
    //     0x6ea15c: stur            w2, [x1, #0xb]
    // 0x6ea160: r0 = Row()
    //     0x6ea160: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ea164: mov             x2, x0
    // 0x6ea168: r1 = Instance_Axis
    //     0x6ea168: ldr             x1, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ea16c: stur            x2, [fp, #-0x28]
    // 0x6ea170: StoreField: r2->field_f = r1
    //     0x6ea170: stur            w1, [x2, #0xf]
    // 0x6ea174: r3 = Instance_MainAxisAlignment
    //     0x6ea174: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ea178: ldr             x3, [x3, #0x230]
    // 0x6ea17c: StoreField: r2->field_13 = r3
    //     0x6ea17c: stur            w3, [x2, #0x13]
    // 0x6ea180: r4 = Instance_MainAxisSize
    //     0x6ea180: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ea184: ldr             x4, [x4, #0x330]
    // 0x6ea188: ArrayStore: r2[0] = r4  ; List_4
    //     0x6ea188: stur            w4, [x2, #0x17]
    // 0x6ea18c: r5 = Instance_CrossAxisAlignment
    //     0x6ea18c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ea190: ldr             x5, [x5, #0x338]
    // 0x6ea194: StoreField: r2->field_1b = r5
    //     0x6ea194: stur            w5, [x2, #0x1b]
    // 0x6ea198: r6 = Instance_VerticalDirection
    //     0x6ea198: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ea19c: ldr             x6, [x6, #0x340]
    // 0x6ea1a0: StoreField: r2->field_23 = r6
    //     0x6ea1a0: stur            w6, [x2, #0x23]
    // 0x6ea1a4: r7 = Instance_Clip
    //     0x6ea1a4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ea1a8: ldr             x7, [x7, #0x348]
    // 0x6ea1ac: StoreField: r2->field_2b = r7
    //     0x6ea1ac: stur            w7, [x2, #0x2b]
    // 0x6ea1b0: StoreField: r2->field_2f = rZR
    //     0x6ea1b0: stur            xzr, [x2, #0x2f]
    // 0x6ea1b4: ldur            x0, [fp, #-0x20]
    // 0x6ea1b8: StoreField: r2->field_b = r0
    //     0x6ea1b8: stur            w0, [x2, #0xb]
    // 0x6ea1bc: ldur            x8, [fp, #-8]
    // 0x6ea1c0: LoadField: r9 = r8->field_f
    //     0x6ea1c0: ldur            w9, [x8, #0xf]
    // 0x6ea1c4: DecompressPointer r9
    //     0x6ea1c4: add             x9, x9, HEAP, lsl #32
    // 0x6ea1c8: ldur            x10, [fp, #-0x10]
    // 0x6ea1cc: stur            x9, [fp, #-0x20]
    // 0x6ea1d0: LoadField: r0 = r10->field_13
    //     0x6ea1d0: ldur            w0, [x10, #0x13]
    // 0x6ea1d4: DecompressPointer r0
    //     0x6ea1d4: add             x0, x0, HEAP, lsl #32
    // 0x6ea1d8: LoadField: r11 = r0->field_2f
    //     0x6ea1d8: ldur            w11, [x0, #0x2f]
    // 0x6ea1dc: DecompressPointer r11
    //     0x6ea1dc: add             x11, x11, HEAP, lsl #32
    // 0x6ea1e0: r0 = LoadClassIdInstr(r11)
    //     0x6ea1e0: ldur            x0, [x11, #-1]
    //     0x6ea1e4: ubfx            x0, x0, #0xc, #0x14
    // 0x6ea1e8: str             x11, [SP]
    // 0x6ea1ec: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6ea1ec: mov             x17, #0x879f
    //     0x6ea1f0: add             lr, x0, x17
    //     0x6ea1f4: ldr             lr, [x21, lr, lsl #3]
    //     0x6ea1f8: blr             lr
    // 0x6ea1fc: str             x0, [SP]
    // 0x6ea200: r0 = _interpolateSingle()
    //     0x6ea200: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x6ea204: ldur            x1, [fp, #-0x20]
    // 0x6ea208: mov             x3, x0
    // 0x6ea20c: r2 = "Toplam Acenta"
    //     0x6ea20c: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a318] "Toplam Acenta"
    //     0x6ea210: ldr             x2, [x2, #0x318]
    // 0x6ea214: r5 = Instance_IconData
    //     0x6ea214: add             x5, PP, #0x19, lsl #12  ; [pp+0x19700] Obj!IconData@a09ec1
    //     0x6ea218: ldr             x5, [x5, #0x700]
    // 0x6ea21c: r0 = _buildStatCard()
    //     0x6ea21c: bl              #0x6ea940  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildStatCard
    // 0x6ea220: mov             x3, x0
    // 0x6ea224: ldur            x0, [fp, #-8]
    // 0x6ea228: stur            x3, [fp, #-0x30]
    // 0x6ea22c: LoadField: r4 = r0->field_f
    //     0x6ea22c: ldur            w4, [x0, #0xf]
    // 0x6ea230: DecompressPointer r4
    //     0x6ea230: add             x4, x4, HEAP, lsl #32
    // 0x6ea234: ldur            x0, [fp, #-0x10]
    // 0x6ea238: stur            x4, [fp, #-0x20]
    // 0x6ea23c: LoadField: r1 = r0->field_13
    //     0x6ea23c: ldur            w1, [x0, #0x13]
    // 0x6ea240: DecompressPointer r1
    //     0x6ea240: add             x1, x1, HEAP, lsl #32
    // 0x6ea244: LoadField: r5 = r1->field_2f
    //     0x6ea244: ldur            w5, [x1, #0x2f]
    // 0x6ea248: DecompressPointer r5
    //     0x6ea248: add             x5, x5, HEAP, lsl #32
    // 0x6ea24c: stur            x5, [fp, #-8]
    // 0x6ea250: r1 = Function '<anonymous closure>':.
    //     0x6ea250: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a320] Function: [dart:ffi] Array::_nestedDimensions (0x424af4)
    //     0x6ea254: ldr             x1, [x1, #0x320]
    // 0x6ea258: r2 = Null
    //     0x6ea258: mov             x2, NULL
    // 0x6ea25c: r0 = AllocateClosure()
    //     0x6ea25c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ea260: ldur            x1, [fp, #-8]
    // 0x6ea264: r2 = LoadClassIdInstr(r1)
    //     0x6ea264: ldur            x2, [x1, #-1]
    //     0x6ea268: ubfx            x2, x2, #0xc, #0x14
    // 0x6ea26c: mov             x16, x0
    // 0x6ea270: mov             x0, x2
    // 0x6ea274: mov             x2, x16
    // 0x6ea278: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6ea278: mov             x17, #0xd348
    //     0x6ea27c: add             lr, x0, x17
    //     0x6ea280: ldr             lr, [x21, lr, lsl #3]
    //     0x6ea284: blr             lr
    // 0x6ea288: str             x0, [SP]
    // 0x6ea28c: r0 = length()
    //     0x6ea28c: bl              #0x558a38  ; [dart:core] Iterable::length
    // 0x6ea290: str             x0, [SP]
    // 0x6ea294: r0 = _interpolateSingle()
    //     0x6ea294: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x6ea298: ldur            x1, [fp, #-0x20]
    // 0x6ea29c: mov             x3, x0
    // 0x6ea2a0: r2 = "Aktif Acenta"
    //     0x6ea2a0: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a328] "Aktif Acenta"
    //     0x6ea2a4: ldr             x2, [x2, #0x328]
    // 0x6ea2a8: r5 = Instance_IconData
    //     0x6ea2a8: add             x5, PP, #0x1a, lsl #12  ; [pp+0x1a330] Obj!IconData@a0a041
    //     0x6ea2ac: ldr             x5, [x5, #0x330]
    // 0x6ea2b0: r0 = _buildStatCard()
    //     0x6ea2b0: bl              #0x6ea940  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildStatCard
    // 0x6ea2b4: r1 = Null
    //     0x6ea2b4: mov             x1, NULL
    // 0x6ea2b8: r2 = 6
    //     0x6ea2b8: mov             x2, #6
    // 0x6ea2bc: stur            x0, [fp, #-8]
    // 0x6ea2c0: r0 = AllocateArray()
    //     0x6ea2c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ea2c4: mov             x2, x0
    // 0x6ea2c8: ldur            x0, [fp, #-0x30]
    // 0x6ea2cc: stur            x2, [fp, #-0x20]
    // 0x6ea2d0: StoreField: r2->field_f = r0
    //     0x6ea2d0: stur            w0, [x2, #0xf]
    // 0x6ea2d4: r16 = Instance_SizedBox
    //     0x6ea2d4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6ea2d8: ldr             x16, [x16, #0x360]
    // 0x6ea2dc: StoreField: r2->field_13 = r16
    //     0x6ea2dc: stur            w16, [x2, #0x13]
    // 0x6ea2e0: ldur            x0, [fp, #-8]
    // 0x6ea2e4: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ea2e4: stur            w0, [x2, #0x17]
    // 0x6ea2e8: r1 = <Widget>
    //     0x6ea2e8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ea2ec: r0 = AllocateGrowableArray()
    //     0x6ea2ec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea2f0: mov             x1, x0
    // 0x6ea2f4: ldur            x0, [fp, #-0x20]
    // 0x6ea2f8: stur            x1, [fp, #-8]
    // 0x6ea2fc: StoreField: r1->field_f = r0
    //     0x6ea2fc: stur            w0, [x1, #0xf]
    // 0x6ea300: r2 = 6
    //     0x6ea300: mov             x2, #6
    // 0x6ea304: StoreField: r1->field_b = r2
    //     0x6ea304: stur            w2, [x1, #0xb]
    // 0x6ea308: r0 = Row()
    //     0x6ea308: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ea30c: mov             x3, x0
    // 0x6ea310: r0 = Instance_Axis
    //     0x6ea310: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ea314: stur            x3, [fp, #-0x20]
    // 0x6ea318: StoreField: r3->field_f = r0
    //     0x6ea318: stur            w0, [x3, #0xf]
    // 0x6ea31c: r4 = Instance_MainAxisAlignment
    //     0x6ea31c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ea320: ldr             x4, [x4, #0x230]
    // 0x6ea324: StoreField: r3->field_13 = r4
    //     0x6ea324: stur            w4, [x3, #0x13]
    // 0x6ea328: r5 = Instance_MainAxisSize
    //     0x6ea328: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ea32c: ldr             x5, [x5, #0x330]
    // 0x6ea330: ArrayStore: r3[0] = r5  ; List_4
    //     0x6ea330: stur            w5, [x3, #0x17]
    // 0x6ea334: r6 = Instance_CrossAxisAlignment
    //     0x6ea334: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ea338: ldr             x6, [x6, #0x338]
    // 0x6ea33c: StoreField: r3->field_1b = r6
    //     0x6ea33c: stur            w6, [x3, #0x1b]
    // 0x6ea340: r7 = Instance_VerticalDirection
    //     0x6ea340: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ea344: ldr             x7, [x7, #0x340]
    // 0x6ea348: StoreField: r3->field_23 = r7
    //     0x6ea348: stur            w7, [x3, #0x23]
    // 0x6ea34c: r8 = Instance_Clip
    //     0x6ea34c: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ea350: ldr             x8, [x8, #0x348]
    // 0x6ea354: StoreField: r3->field_2b = r8
    //     0x6ea354: stur            w8, [x3, #0x2b]
    // 0x6ea358: StoreField: r3->field_2f = rZR
    //     0x6ea358: stur            xzr, [x3, #0x2f]
    // 0x6ea35c: ldur            x1, [fp, #-8]
    // 0x6ea360: StoreField: r3->field_b = r1
    //     0x6ea360: stur            w1, [x3, #0xb]
    // 0x6ea364: r1 = Null
    //     0x6ea364: mov             x1, NULL
    // 0x6ea368: r2 = 6
    //     0x6ea368: mov             x2, #6
    // 0x6ea36c: r0 = AllocateArray()
    //     0x6ea36c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ea370: mov             x2, x0
    // 0x6ea374: ldur            x0, [fp, #-0x28]
    // 0x6ea378: stur            x2, [fp, #-8]
    // 0x6ea37c: StoreField: r2->field_f = r0
    //     0x6ea37c: stur            w0, [x2, #0xf]
    // 0x6ea380: r16 = Instance_SizedBox
    //     0x6ea380: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x6ea384: ldr             x16, [x16, #0x470]
    // 0x6ea388: StoreField: r2->field_13 = r16
    //     0x6ea388: stur            w16, [x2, #0x13]
    // 0x6ea38c: ldur            x0, [fp, #-0x20]
    // 0x6ea390: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ea390: stur            w0, [x2, #0x17]
    // 0x6ea394: r1 = <Widget>
    //     0x6ea394: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ea398: r0 = AllocateGrowableArray()
    //     0x6ea398: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea39c: mov             x1, x0
    // 0x6ea3a0: ldur            x0, [fp, #-8]
    // 0x6ea3a4: stur            x1, [fp, #-0x20]
    // 0x6ea3a8: StoreField: r1->field_f = r0
    //     0x6ea3a8: stur            w0, [x1, #0xf]
    // 0x6ea3ac: r0 = 6
    //     0x6ea3ac: mov             x0, #6
    // 0x6ea3b0: StoreField: r1->field_b = r0
    //     0x6ea3b0: stur            w0, [x1, #0xb]
    // 0x6ea3b4: r0 = Column()
    //     0x6ea3b4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6ea3b8: mov             x1, x0
    // 0x6ea3bc: r0 = Instance_Axis
    //     0x6ea3bc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ea3c0: stur            x1, [fp, #-8]
    // 0x6ea3c4: StoreField: r1->field_f = r0
    //     0x6ea3c4: stur            w0, [x1, #0xf]
    // 0x6ea3c8: r2 = Instance_MainAxisAlignment
    //     0x6ea3c8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ea3cc: ldr             x2, [x2, #0x230]
    // 0x6ea3d0: StoreField: r1->field_13 = r2
    //     0x6ea3d0: stur            w2, [x1, #0x13]
    // 0x6ea3d4: r3 = Instance_MainAxisSize
    //     0x6ea3d4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ea3d8: ldr             x3, [x3, #0x330]
    // 0x6ea3dc: ArrayStore: r1[0] = r3  ; List_4
    //     0x6ea3dc: stur            w3, [x1, #0x17]
    // 0x6ea3e0: r4 = Instance_CrossAxisAlignment
    //     0x6ea3e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6ea3e4: ldr             x4, [x4, #0x238]
    // 0x6ea3e8: StoreField: r1->field_1b = r4
    //     0x6ea3e8: stur            w4, [x1, #0x1b]
    // 0x6ea3ec: r5 = Instance_VerticalDirection
    //     0x6ea3ec: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ea3f0: ldr             x5, [x5, #0x340]
    // 0x6ea3f4: StoreField: r1->field_23 = r5
    //     0x6ea3f4: stur            w5, [x1, #0x23]
    // 0x6ea3f8: r6 = Instance_Clip
    //     0x6ea3f8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ea3fc: ldr             x6, [x6, #0x348]
    // 0x6ea400: StoreField: r1->field_2b = r6
    //     0x6ea400: stur            w6, [x1, #0x2b]
    // 0x6ea404: StoreField: r1->field_2f = rZR
    //     0x6ea404: stur            xzr, [x1, #0x2f]
    // 0x6ea408: ldur            x7, [fp, #-0x20]
    // 0x6ea40c: StoreField: r1->field_b = r7
    //     0x6ea40c: stur            w7, [x1, #0xb]
    // 0x6ea410: r0 = Container()
    //     0x6ea410: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ea414: stur            x0, [fp, #-0x20]
    // 0x6ea418: r16 = inf
    //     0x6ea418: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6ea41c: ldr             x16, [x16, #0xb20]
    // 0x6ea420: r30 = Instance_EdgeInsets
    //     0x6ea420: ldr             lr, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6ea424: stp             lr, x16, [SP, #0x10]
    // 0x6ea428: ldur            x16, [fp, #-0x18]
    // 0x6ea42c: ldur            lr, [fp, #-8]
    // 0x6ea430: stp             lr, x16, [SP]
    // 0x6ea434: mov             x1, x0
    // 0x6ea438: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6ea438: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6ea43c: ldr             x4, [x4, #0xb28]
    // 0x6ea440: r0 = Container()
    //     0x6ea440: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ea444: r0 = Radius()
    //     0x6ea444: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ea448: d0 = 8.000000
    //     0x6ea448: fmov            d0, #8.00000000
    // 0x6ea44c: stur            x0, [fp, #-8]
    // 0x6ea450: StoreField: r0->field_7 = d0
    //     0x6ea450: stur            d0, [x0, #7]
    // 0x6ea454: StoreField: r0->field_f = d0
    //     0x6ea454: stur            d0, [x0, #0xf]
    // 0x6ea458: r0 = BorderRadius()
    //     0x6ea458: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ea45c: mov             x1, x0
    // 0x6ea460: ldur            x0, [fp, #-8]
    // 0x6ea464: stur            x1, [fp, #-0x18]
    // 0x6ea468: StoreField: r1->field_7 = r0
    //     0x6ea468: stur            w0, [x1, #7]
    // 0x6ea46c: StoreField: r1->field_b = r0
    //     0x6ea46c: stur            w0, [x1, #0xb]
    // 0x6ea470: StoreField: r1->field_f = r0
    //     0x6ea470: stur            w0, [x1, #0xf]
    // 0x6ea474: StoreField: r1->field_13 = r0
    //     0x6ea474: stur            w0, [x1, #0x13]
    // 0x6ea478: r0 = RoundedRectangleBorder()
    //     0x6ea478: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6ea47c: mov             x1, x0
    // 0x6ea480: ldur            x0, [fp, #-0x18]
    // 0x6ea484: StoreField: r1->field_b = r0
    //     0x6ea484: stur            w0, [x1, #0xb]
    // 0x6ea488: r0 = Instance_BorderSide
    //     0x6ea488: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6ea48c: ldr             x0, [x0, #0xcb8]
    // 0x6ea490: StoreField: r1->field_7 = r0
    //     0x6ea490: stur            w0, [x1, #7]
    // 0x6ea494: r16 = Instance_Color
    //     0x6ea494: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6ea498: ldr             x16, [x16, #0xf30]
    // 0x6ea49c: r30 = Instance_Color
    //     0x6ea49c: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ea4a0: stp             lr, x16, [SP, #8]
    // 0x6ea4a4: str             x1, [SP]
    // 0x6ea4a8: r4 = const [0, 0x3, 0x3, 0, backgroundColor, 0, foregroundColor, 0x1, shape, 0x2, null]
    //     0x6ea4a8: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a338] List(11) [0, 0x3, 0x3, 0, "backgroundColor", 0, "foregroundColor", 0x1, "shape", 0x2, Null]
    //     0x6ea4ac: ldr             x4, [x4, #0x338]
    // 0x6ea4b0: r0 = styleFrom()
    //     0x6ea4b0: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6ea4b4: ldur            x2, [fp, #-0x10]
    // 0x6ea4b8: r1 = Function '<anonymous closure>':.
    //     0x6ea4b8: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a340] AnonymousClosure: (0x6ed684), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::build (0x6e9d4c)
    //     0x6ea4bc: ldr             x1, [x1, #0x340]
    // 0x6ea4c0: stur            x0, [fp, #-8]
    // 0x6ea4c4: r0 = AllocateClosure()
    //     0x6ea4c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ea4c8: stur            x0, [fp, #-0x18]
    // 0x6ea4cc: r0 = _ElevatedButtonWithIcon()
    //     0x6ea4cc: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x6ea4d0: mov             x1, x0
    // 0x6ea4d4: ldur            x5, [fp, #-0x18]
    // 0x6ea4d8: ldur            x6, [fp, #-8]
    // 0x6ea4dc: r2 = Instance_Icon
    //     0x6ea4dc: add             x2, PP, #0x19, lsl #12  ; [pp+0x19940] Obj!Icon@a1e131
    //     0x6ea4e0: ldr             x2, [x2, #0x940]
    // 0x6ea4e4: r3 = Instance_Text
    //     0x6ea4e4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a348] Obj!Text@a1bcc1
    //     0x6ea4e8: ldr             x3, [x3, #0x348]
    // 0x6ea4ec: stur            x0, [fp, #-8]
    // 0x6ea4f0: r0 = _ElevatedButtonWithIcon()
    //     0x6ea4f0: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x6ea4f4: r1 = Null
    //     0x6ea4f4: mov             x1, NULL
    // 0x6ea4f8: r2 = 4
    //     0x6ea4f8: mov             x2, #4
    // 0x6ea4fc: r0 = AllocateArray()
    //     0x6ea4fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ea500: stur            x0, [fp, #-0x18]
    // 0x6ea504: r16 = Instance_Text
    //     0x6ea504: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a350] Obj!Text@a1bc71
    //     0x6ea508: ldr             x16, [x16, #0x350]
    // 0x6ea50c: StoreField: r0->field_f = r16
    //     0x6ea50c: stur            w16, [x0, #0xf]
    // 0x6ea510: ldur            x1, [fp, #-8]
    // 0x6ea514: StoreField: r0->field_13 = r1
    //     0x6ea514: stur            w1, [x0, #0x13]
    // 0x6ea518: r1 = <Widget>
    //     0x6ea518: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ea51c: r0 = AllocateGrowableArray()
    //     0x6ea51c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea520: mov             x1, x0
    // 0x6ea524: ldur            x0, [fp, #-0x18]
    // 0x6ea528: stur            x1, [fp, #-8]
    // 0x6ea52c: StoreField: r1->field_f = r0
    //     0x6ea52c: stur            w0, [x1, #0xf]
    // 0x6ea530: r0 = 4
    //     0x6ea530: mov             x0, #4
    // 0x6ea534: StoreField: r1->field_b = r0
    //     0x6ea534: stur            w0, [x1, #0xb]
    // 0x6ea538: r0 = Row()
    //     0x6ea538: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ea53c: mov             x3, x0
    // 0x6ea540: r0 = Instance_Axis
    //     0x6ea540: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ea544: stur            x3, [fp, #-0x18]
    // 0x6ea548: StoreField: r3->field_f = r0
    //     0x6ea548: stur            w0, [x3, #0xf]
    // 0x6ea54c: r0 = Instance_MainAxisAlignment
    //     0x6ea54c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x6ea550: ldr             x0, [x0, #0xd20]
    // 0x6ea554: StoreField: r3->field_13 = r0
    //     0x6ea554: stur            w0, [x3, #0x13]
    // 0x6ea558: r0 = Instance_MainAxisSize
    //     0x6ea558: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ea55c: ldr             x0, [x0, #0x330]
    // 0x6ea560: ArrayStore: r3[0] = r0  ; List_4
    //     0x6ea560: stur            w0, [x3, #0x17]
    // 0x6ea564: r1 = Instance_CrossAxisAlignment
    //     0x6ea564: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ea568: ldr             x1, [x1, #0x338]
    // 0x6ea56c: StoreField: r3->field_1b = r1
    //     0x6ea56c: stur            w1, [x3, #0x1b]
    // 0x6ea570: r4 = Instance_VerticalDirection
    //     0x6ea570: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ea574: ldr             x4, [x4, #0x340]
    // 0x6ea578: StoreField: r3->field_23 = r4
    //     0x6ea578: stur            w4, [x3, #0x23]
    // 0x6ea57c: r5 = Instance_Clip
    //     0x6ea57c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ea580: ldr             x5, [x5, #0x348]
    // 0x6ea584: StoreField: r3->field_2b = r5
    //     0x6ea584: stur            w5, [x3, #0x2b]
    // 0x6ea588: StoreField: r3->field_2f = rZR
    //     0x6ea588: stur            xzr, [x3, #0x2f]
    // 0x6ea58c: ldur            x1, [fp, #-8]
    // 0x6ea590: StoreField: r3->field_b = r1
    //     0x6ea590: stur            w1, [x3, #0xb]
    // 0x6ea594: r1 = Null
    //     0x6ea594: mov             x1, NULL
    // 0x6ea598: r2 = 8
    //     0x6ea598: mov             x2, #8
    // 0x6ea59c: r0 = AllocateArray()
    //     0x6ea59c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ea5a0: mov             x2, x0
    // 0x6ea5a4: ldur            x0, [fp, #-0x20]
    // 0x6ea5a8: stur            x2, [fp, #-8]
    // 0x6ea5ac: StoreField: r2->field_f = r0
    //     0x6ea5ac: stur            w0, [x2, #0xf]
    // 0x6ea5b0: r16 = Instance_SizedBox
    //     0x6ea5b0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6ea5b4: ldr             x16, [x16, #0x310]
    // 0x6ea5b8: StoreField: r2->field_13 = r16
    //     0x6ea5b8: stur            w16, [x2, #0x13]
    // 0x6ea5bc: ldur            x0, [fp, #-0x18]
    // 0x6ea5c0: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ea5c0: stur            w0, [x2, #0x17]
    // 0x6ea5c4: r16 = Instance_SizedBox
    //     0x6ea5c4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6ea5c8: ldr             x16, [x16, #0x310]
    // 0x6ea5cc: StoreField: r2->field_1b = r16
    //     0x6ea5cc: stur            w16, [x2, #0x1b]
    // 0x6ea5d0: r1 = <Widget>
    //     0x6ea5d0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ea5d4: r0 = AllocateGrowableArray()
    //     0x6ea5d4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ea5d8: mov             x2, x0
    // 0x6ea5dc: ldur            x0, [fp, #-8]
    // 0x6ea5e0: stur            x2, [fp, #-0x18]
    // 0x6ea5e4: StoreField: r2->field_f = r0
    //     0x6ea5e4: stur            w0, [x2, #0xf]
    // 0x6ea5e8: r0 = 8
    //     0x6ea5e8: mov             x0, #8
    // 0x6ea5ec: StoreField: r2->field_b = r0
    //     0x6ea5ec: stur            w0, [x2, #0xb]
    // 0x6ea5f0: ldur            x3, [fp, #-0x10]
    // 0x6ea5f4: LoadField: r0 = r3->field_13
    //     0x6ea5f4: ldur            w0, [x3, #0x13]
    // 0x6ea5f8: DecompressPointer r0
    //     0x6ea5f8: add             x0, x0, HEAP, lsl #32
    // 0x6ea5fc: LoadField: r1 = r0->field_2f
    //     0x6ea5fc: ldur            w1, [x0, #0x2f]
    // 0x6ea600: DecompressPointer r1
    //     0x6ea600: add             x1, x1, HEAP, lsl #32
    // 0x6ea604: r0 = LoadClassIdInstr(r1)
    //     0x6ea604: ldur            x0, [x1, #-1]
    //     0x6ea608: ubfx            x0, x0, #0xc, #0x14
    // 0x6ea60c: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6ea60c: mov             x17, #0xcda7
    //     0x6ea610: add             lr, x0, x17
    //     0x6ea614: ldr             lr, [x21, lr, lsl #3]
    //     0x6ea618: blr             lr
    // 0x6ea61c: tbnz            w0, #4, #0x6ea790
    // 0x6ea620: ldur            x0, [fp, #-0x18]
    // 0x6ea624: r16 = 0.050000
    //     0x6ea624: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6ea628: str             x16, [SP]
    // 0x6ea62c: r1 = Instance_Color
    //     0x6ea62c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ea630: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ea630: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ea634: ldr             x4, [x4, #0x198]
    // 0x6ea638: r0 = withValues()
    //     0x6ea638: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ea63c: stur            x0, [fp, #-8]
    // 0x6ea640: r0 = Radius()
    //     0x6ea640: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ea644: d0 = 12.000000
    //     0x6ea644: fmov            d0, #12.00000000
    // 0x6ea648: stur            x0, [fp, #-0x20]
    // 0x6ea64c: StoreField: r0->field_7 = d0
    //     0x6ea64c: stur            d0, [x0, #7]
    // 0x6ea650: StoreField: r0->field_f = d0
    //     0x6ea650: stur            d0, [x0, #0xf]
    // 0x6ea654: r0 = BorderRadius()
    //     0x6ea654: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ea658: mov             x2, x0
    // 0x6ea65c: ldur            x0, [fp, #-0x20]
    // 0x6ea660: stur            x2, [fp, #-0x28]
    // 0x6ea664: StoreField: r2->field_7 = r0
    //     0x6ea664: stur            w0, [x2, #7]
    // 0x6ea668: StoreField: r2->field_b = r0
    //     0x6ea668: stur            w0, [x2, #0xb]
    // 0x6ea66c: StoreField: r2->field_f = r0
    //     0x6ea66c: stur            w0, [x2, #0xf]
    // 0x6ea670: StoreField: r2->field_13 = r0
    //     0x6ea670: stur            w0, [x2, #0x13]
    // 0x6ea674: r16 = 0.100000
    //     0x6ea674: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6ea678: ldr             x16, [x16, #0x1f8]
    // 0x6ea67c: str             x16, [SP]
    // 0x6ea680: r1 = Instance_Color
    //     0x6ea680: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ea684: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ea684: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ea688: ldr             x4, [x4, #0x198]
    // 0x6ea68c: r0 = withValues()
    //     0x6ea68c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ea690: str             x0, [SP]
    // 0x6ea694: r1 = Null
    //     0x6ea694: mov             x1, NULL
    // 0x6ea698: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6ea698: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6ea69c: ldr             x4, [x4, #0x788]
    // 0x6ea6a0: r0 = Border.all()
    //     0x6ea6a0: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6ea6a4: stur            x0, [fp, #-0x20]
    // 0x6ea6a8: r0 = BoxDecoration()
    //     0x6ea6a8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ea6ac: mov             x1, x0
    // 0x6ea6b0: ldur            x0, [fp, #-8]
    // 0x6ea6b4: stur            x1, [fp, #-0x30]
    // 0x6ea6b8: StoreField: r1->field_7 = r0
    //     0x6ea6b8: stur            w0, [x1, #7]
    // 0x6ea6bc: ldur            x0, [fp, #-0x20]
    // 0x6ea6c0: StoreField: r1->field_f = r0
    //     0x6ea6c0: stur            w0, [x1, #0xf]
    // 0x6ea6c4: ldur            x0, [fp, #-0x28]
    // 0x6ea6c8: StoreField: r1->field_13 = r0
    //     0x6ea6c8: stur            w0, [x1, #0x13]
    // 0x6ea6cc: r0 = Instance_BoxShape
    //     0x6ea6cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ea6d0: ldr             x0, [x0, #0x1c8]
    // 0x6ea6d4: StoreField: r1->field_23 = r0
    //     0x6ea6d4: stur            w0, [x1, #0x23]
    // 0x6ea6d8: r0 = Container()
    //     0x6ea6d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ea6dc: stur            x0, [fp, #-8]
    // 0x6ea6e0: r16 = inf
    //     0x6ea6e0: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6ea6e4: ldr             x16, [x16, #0xb20]
    // 0x6ea6e8: r30 = Instance_EdgeInsets
    //     0x6ea6e8: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a358] Obj!EdgeInsets@a0c411
    //     0x6ea6ec: ldr             lr, [lr, #0x358]
    // 0x6ea6f0: stp             lr, x16, [SP, #0x10]
    // 0x6ea6f4: ldur            x16, [fp, #-0x30]
    // 0x6ea6f8: r30 = Instance_Column
    //     0x6ea6f8: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a360] Obj!Column@a1ffd1
    //     0x6ea6fc: ldr             lr, [lr, #0x360]
    // 0x6ea700: stp             lr, x16, [SP]
    // 0x6ea704: mov             x1, x0
    // 0x6ea708: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6ea708: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6ea70c: ldr             x4, [x4, #0xb28]
    // 0x6ea710: r0 = Container()
    //     0x6ea710: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ea714: ldur            x0, [fp, #-0x18]
    // 0x6ea718: LoadField: r1 = r0->field_b
    //     0x6ea718: ldur            w1, [x0, #0xb]
    // 0x6ea71c: LoadField: r2 = r0->field_f
    //     0x6ea71c: ldur            w2, [x0, #0xf]
    // 0x6ea720: DecompressPointer r2
    //     0x6ea720: add             x2, x2, HEAP, lsl #32
    // 0x6ea724: LoadField: r3 = r2->field_b
    //     0x6ea724: ldur            w3, [x2, #0xb]
    // 0x6ea728: r2 = LoadInt32Instr(r1)
    //     0x6ea728: sbfx            x2, x1, #1, #0x1f
    // 0x6ea72c: stur            x2, [fp, #-0x38]
    // 0x6ea730: r1 = LoadInt32Instr(r3)
    //     0x6ea730: sbfx            x1, x3, #1, #0x1f
    // 0x6ea734: cmp             x2, x1
    // 0x6ea738: b.ne            #0x6ea744
    // 0x6ea73c: mov             x1, x0
    // 0x6ea740: r0 = _growToNextCapacity()
    //     0x6ea740: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6ea744: ldur            x2, [fp, #-0x18]
    // 0x6ea748: ldur            x3, [fp, #-0x38]
    // 0x6ea74c: add             x0, x3, #1
    // 0x6ea750: lsl             x1, x0, #1
    // 0x6ea754: StoreField: r2->field_b = r1
    //     0x6ea754: stur            w1, [x2, #0xb]
    // 0x6ea758: LoadField: r1 = r2->field_f
    //     0x6ea758: ldur            w1, [x2, #0xf]
    // 0x6ea75c: DecompressPointer r1
    //     0x6ea75c: add             x1, x1, HEAP, lsl #32
    // 0x6ea760: ldur            x0, [fp, #-8]
    // 0x6ea764: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6ea764: add             x25, x1, x3, lsl #2
    //     0x6ea768: add             x25, x25, #0xf
    //     0x6ea76c: str             w0, [x25]
    //     0x6ea770: tbz             w0, #0, #0x6ea78c
    //     0x6ea774: ldurb           w16, [x1, #-1]
    //     0x6ea778: ldurb           w17, [x0, #-1]
    //     0x6ea77c: and             x16, x17, x16, lsr #2
    //     0x6ea780: tst             x16, HEAP, lsr #32
    //     0x6ea784: b.eq            #0x6ea78c
    //     0x6ea788: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ea78c: b               #0x6ea888
    // 0x6ea790: ldur            x1, [fp, #-0x10]
    // 0x6ea794: ldur            x2, [fp, #-0x18]
    // 0x6ea798: LoadField: r0 = r1->field_13
    //     0x6ea798: ldur            w0, [x1, #0x13]
    // 0x6ea79c: DecompressPointer r0
    //     0x6ea79c: add             x0, x0, HEAP, lsl #32
    // 0x6ea7a0: LoadField: r3 = r0->field_2f
    //     0x6ea7a0: ldur            w3, [x0, #0x2f]
    // 0x6ea7a4: DecompressPointer r3
    //     0x6ea7a4: add             x3, x3, HEAP, lsl #32
    // 0x6ea7a8: r0 = LoadClassIdInstr(r3)
    //     0x6ea7a8: ldur            x0, [x3, #-1]
    //     0x6ea7ac: ubfx            x0, x0, #0xc, #0x14
    // 0x6ea7b0: str             x3, [SP]
    // 0x6ea7b4: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6ea7b4: mov             x17, #0x879f
    //     0x6ea7b8: add             lr, x0, x17
    //     0x6ea7bc: ldr             lr, [x21, lr, lsl #3]
    //     0x6ea7c0: blr             lr
    // 0x6ea7c4: r3 = LoadInt32Instr(r0)
    //     0x6ea7c4: sbfx            x3, x0, #1, #0x1f
    // 0x6ea7c8: ldur            x2, [fp, #-0x10]
    // 0x6ea7cc: stur            x3, [fp, #-0x38]
    // 0x6ea7d0: r1 = Function '<anonymous closure>':.
    //     0x6ea7d0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a368] AnonymousClosure: (0x6eac00), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::build (0x6e9d4c)
    //     0x6ea7d4: ldr             x1, [x1, #0x368]
    // 0x6ea7d8: r0 = AllocateClosure()
    //     0x6ea7d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ea7dc: stur            x0, [fp, #-8]
    // 0x6ea7e0: r0 = ListView()
    //     0x6ea7e0: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6ea7e4: stur            x0, [fp, #-0x10]
    // 0x6ea7e8: r16 = true
    //     0x6ea7e8: add             x16, NULL, #0x20  ; true
    // 0x6ea7ec: r30 = Instance_NeverScrollableScrollPhysics
    //     0x6ea7ec: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a370] Obj!NeverScrollableScrollPhysics@a0a9a1
    //     0x6ea7f0: ldr             lr, [lr, #0x370]
    // 0x6ea7f4: stp             lr, x16, [SP]
    // 0x6ea7f8: mov             x1, x0
    // 0x6ea7fc: ldur            x2, [fp, #-8]
    // 0x6ea800: ldur            x3, [fp, #-0x38]
    // 0x6ea804: r4 = const [0, 0x5, 0x2, 0x3, physics, 0x4, shrinkWrap, 0x3, null]
    //     0x6ea804: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a378] List(9) [0, 0x5, 0x2, 0x3, "physics", 0x4, "shrinkWrap", 0x3, Null]
    //     0x6ea808: ldr             x4, [x4, #0x378]
    // 0x6ea80c: r0 = ListView.builder()
    //     0x6ea80c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6ea810: ldur            x0, [fp, #-0x18]
    // 0x6ea814: LoadField: r1 = r0->field_b
    //     0x6ea814: ldur            w1, [x0, #0xb]
    // 0x6ea818: LoadField: r2 = r0->field_f
    //     0x6ea818: ldur            w2, [x0, #0xf]
    // 0x6ea81c: DecompressPointer r2
    //     0x6ea81c: add             x2, x2, HEAP, lsl #32
    // 0x6ea820: LoadField: r3 = r2->field_b
    //     0x6ea820: ldur            w3, [x2, #0xb]
    // 0x6ea824: r2 = LoadInt32Instr(r1)
    //     0x6ea824: sbfx            x2, x1, #1, #0x1f
    // 0x6ea828: stur            x2, [fp, #-0x38]
    // 0x6ea82c: r1 = LoadInt32Instr(r3)
    //     0x6ea82c: sbfx            x1, x3, #1, #0x1f
    // 0x6ea830: cmp             x2, x1
    // 0x6ea834: b.ne            #0x6ea840
    // 0x6ea838: mov             x1, x0
    // 0x6ea83c: r0 = _growToNextCapacity()
    //     0x6ea83c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6ea840: ldur            x2, [fp, #-0x18]
    // 0x6ea844: ldur            x3, [fp, #-0x38]
    // 0x6ea848: add             x0, x3, #1
    // 0x6ea84c: lsl             x1, x0, #1
    // 0x6ea850: StoreField: r2->field_b = r1
    //     0x6ea850: stur            w1, [x2, #0xb]
    // 0x6ea854: LoadField: r1 = r2->field_f
    //     0x6ea854: ldur            w1, [x2, #0xf]
    // 0x6ea858: DecompressPointer r1
    //     0x6ea858: add             x1, x1, HEAP, lsl #32
    // 0x6ea85c: ldur            x0, [fp, #-0x10]
    // 0x6ea860: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6ea860: add             x25, x1, x3, lsl #2
    //     0x6ea864: add             x25, x25, #0xf
    //     0x6ea868: str             w0, [x25]
    //     0x6ea86c: tbz             w0, #0, #0x6ea888
    //     0x6ea870: ldurb           w16, [x1, #-1]
    //     0x6ea874: ldurb           w17, [x0, #-1]
    //     0x6ea878: and             x16, x17, x16, lsr #2
    //     0x6ea87c: tst             x16, HEAP, lsr #32
    //     0x6ea880: b.eq            #0x6ea888
    //     0x6ea884: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ea888: r0 = Column()
    //     0x6ea888: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6ea88c: mov             x1, x0
    // 0x6ea890: r0 = Instance_Axis
    //     0x6ea890: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ea894: stur            x1, [fp, #-8]
    // 0x6ea898: StoreField: r1->field_f = r0
    //     0x6ea898: stur            w0, [x1, #0xf]
    // 0x6ea89c: r2 = Instance_MainAxisAlignment
    //     0x6ea89c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ea8a0: ldr             x2, [x2, #0x230]
    // 0x6ea8a4: StoreField: r1->field_13 = r2
    //     0x6ea8a4: stur            w2, [x1, #0x13]
    // 0x6ea8a8: r2 = Instance_MainAxisSize
    //     0x6ea8a8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ea8ac: ldr             x2, [x2, #0x330]
    // 0x6ea8b0: ArrayStore: r1[0] = r2  ; List_4
    //     0x6ea8b0: stur            w2, [x1, #0x17]
    // 0x6ea8b4: r2 = Instance_CrossAxisAlignment
    //     0x6ea8b4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6ea8b8: ldr             x2, [x2, #0x238]
    // 0x6ea8bc: StoreField: r1->field_1b = r2
    //     0x6ea8bc: stur            w2, [x1, #0x1b]
    // 0x6ea8c0: r2 = Instance_VerticalDirection
    //     0x6ea8c0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ea8c4: ldr             x2, [x2, #0x340]
    // 0x6ea8c8: StoreField: r1->field_23 = r2
    //     0x6ea8c8: stur            w2, [x1, #0x23]
    // 0x6ea8cc: r2 = Instance_Clip
    //     0x6ea8cc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ea8d0: ldr             x2, [x2, #0x348]
    // 0x6ea8d4: StoreField: r1->field_2b = r2
    //     0x6ea8d4: stur            w2, [x1, #0x2b]
    // 0x6ea8d8: StoreField: r1->field_2f = rZR
    //     0x6ea8d8: stur            xzr, [x1, #0x2f]
    // 0x6ea8dc: ldur            x2, [fp, #-0x18]
    // 0x6ea8e0: StoreField: r1->field_b = r2
    //     0x6ea8e0: stur            w2, [x1, #0xb]
    // 0x6ea8e4: r0 = SingleChildScrollView()
    //     0x6ea8e4: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6ea8e8: r1 = Instance_Axis
    //     0x6ea8e8: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ea8ec: StoreField: r0->field_b = r1
    //     0x6ea8ec: stur            w1, [x0, #0xb]
    // 0x6ea8f0: r1 = false
    //     0x6ea8f0: add             x1, NULL, #0x30  ; false
    // 0x6ea8f4: StoreField: r0->field_f = r1
    //     0x6ea8f4: stur            w1, [x0, #0xf]
    // 0x6ea8f8: r1 = Instance_EdgeInsets
    //     0x6ea8f8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6ea8fc: ldr             x1, [x1, #0x240]
    // 0x6ea900: StoreField: r0->field_13 = r1
    //     0x6ea900: stur            w1, [x0, #0x13]
    // 0x6ea904: ldur            x1, [fp, #-8]
    // 0x6ea908: StoreField: r0->field_23 = r1
    //     0x6ea908: stur            w1, [x0, #0x23]
    // 0x6ea90c: r1 = Instance_DragStartBehavior
    //     0x6ea90c: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6ea910: StoreField: r0->field_27 = r1
    //     0x6ea910: stur            w1, [x0, #0x27]
    // 0x6ea914: r1 = Instance_Clip
    //     0x6ea914: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6ea918: ldr             x1, [x1, #0x2d8]
    // 0x6ea91c: StoreField: r0->field_2b = r1
    //     0x6ea91c: stur            w1, [x0, #0x2b]
    // 0x6ea920: r1 = Instance_HitTestBehavior
    //     0x6ea920: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6ea924: ldr             x1, [x1, #0xe20]
    // 0x6ea928: StoreField: r0->field_2f = r1
    //     0x6ea928: stur            w1, [x0, #0x2f]
    // 0x6ea92c: LeaveFrame
    //     0x6ea92c: mov             SP, fp
    //     0x6ea930: ldp             fp, lr, [SP], #0x10
    // 0x6ea934: ret
    //     0x6ea934: ret             
    // 0x6ea938: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ea938: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ea93c: b               #0x6e9f18
  }
  _ _buildStatCard(/* No info */) {
    // ** addr: 0x6ea940, size: 0x2c0
    // 0x6ea940: EnterFrame
    //     0x6ea940: stp             fp, lr, [SP, #-0x10]!
    //     0x6ea944: mov             fp, SP
    // 0x6ea948: AllocStack(0x48)
    //     0x6ea948: sub             SP, SP, #0x48
    // 0x6ea94c: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */)
    //     0x6ea94c: stur            x2, [fp, #-8]
    //     0x6ea950: stur            x3, [fp, #-0x10]
    //     0x6ea954: stur            x5, [fp, #-0x18]
    // 0x6ea958: CheckStackOverflow
    //     0x6ea958: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ea95c: cmp             SP, x16
    //     0x6ea960: b.ls            #0x6eabf8
    // 0x6ea964: r16 = 0.150000
    //     0x6ea964: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x6ea968: ldr             x16, [x16, #0xe38]
    // 0x6ea96c: str             x16, [SP]
    // 0x6ea970: r1 = Instance_Color
    //     0x6ea970: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ea974: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ea974: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ea978: ldr             x4, [x4, #0x198]
    // 0x6ea97c: r0 = withValues()
    //     0x6ea97c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ea980: stur            x0, [fp, #-0x20]
    // 0x6ea984: r0 = Radius()
    //     0x6ea984: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ea988: d0 = 12.000000
    //     0x6ea988: fmov            d0, #12.00000000
    // 0x6ea98c: stur            x0, [fp, #-0x28]
    // 0x6ea990: StoreField: r0->field_7 = d0
    //     0x6ea990: stur            d0, [x0, #7]
    // 0x6ea994: StoreField: r0->field_f = d0
    //     0x6ea994: stur            d0, [x0, #0xf]
    // 0x6ea998: r0 = BorderRadius()
    //     0x6ea998: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ea99c: mov             x1, x0
    // 0x6ea9a0: ldur            x0, [fp, #-0x28]
    // 0x6ea9a4: stur            x1, [fp, #-0x30]
    // 0x6ea9a8: StoreField: r1->field_7 = r0
    //     0x6ea9a8: stur            w0, [x1, #7]
    // 0x6ea9ac: StoreField: r1->field_b = r0
    //     0x6ea9ac: stur            w0, [x1, #0xb]
    // 0x6ea9b0: StoreField: r1->field_f = r0
    //     0x6ea9b0: stur            w0, [x1, #0xf]
    // 0x6ea9b4: StoreField: r1->field_13 = r0
    //     0x6ea9b4: stur            w0, [x1, #0x13]
    // 0x6ea9b8: r0 = BoxDecoration()
    //     0x6ea9b8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ea9bc: mov             x1, x0
    // 0x6ea9c0: ldur            x0, [fp, #-0x20]
    // 0x6ea9c4: stur            x1, [fp, #-0x28]
    // 0x6ea9c8: StoreField: r1->field_7 = r0
    //     0x6ea9c8: stur            w0, [x1, #7]
    // 0x6ea9cc: ldur            x0, [fp, #-0x30]
    // 0x6ea9d0: StoreField: r1->field_13 = r0
    //     0x6ea9d0: stur            w0, [x1, #0x13]
    // 0x6ea9d4: r0 = Instance_BoxShape
    //     0x6ea9d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ea9d8: ldr             x0, [x0, #0x1c8]
    // 0x6ea9dc: StoreField: r1->field_23 = r0
    //     0x6ea9dc: stur            w0, [x1, #0x23]
    // 0x6ea9e0: r0 = Icon()
    //     0x6ea9e0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ea9e4: mov             x1, x0
    // 0x6ea9e8: ldur            x0, [fp, #-0x18]
    // 0x6ea9ec: stur            x1, [fp, #-0x20]
    // 0x6ea9f0: StoreField: r1->field_b = r0
    //     0x6ea9f0: stur            w0, [x1, #0xb]
    // 0x6ea9f4: r0 = 24.000000
    //     0x6ea9f4: add             x0, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x6ea9f8: ldr             x0, [x0, #0xf28]
    // 0x6ea9fc: StoreField: r1->field_f = r0
    //     0x6ea9fc: stur            w0, [x1, #0xf]
    // 0x6eaa00: r0 = Instance_Color
    //     0x6eaa00: ldr             x0, [PP, #0x5768]  ; [pp+0x5768] Obj!Color@a21c71
    // 0x6eaa04: StoreField: r1->field_23 = r0
    //     0x6eaa04: stur            w0, [x1, #0x23]
    // 0x6eaa08: r0 = Text()
    //     0x6eaa08: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eaa0c: mov             x1, x0
    // 0x6eaa10: ldur            x0, [fp, #-0x10]
    // 0x6eaa14: stur            x1, [fp, #-0x18]
    // 0x6eaa18: StoreField: r1->field_b = r0
    //     0x6eaa18: stur            w0, [x1, #0xb]
    // 0x6eaa1c: r0 = Instance_TextStyle
    //     0x6eaa1c: add             x0, PP, #0x15, lsl #12  ; [pp+0x154b8] Obj!TextStyle@a17521
    //     0x6eaa20: ldr             x0, [x0, #0x4b8]
    // 0x6eaa24: StoreField: r1->field_13 = r0
    //     0x6eaa24: stur            w0, [x1, #0x13]
    // 0x6eaa28: r0 = Text()
    //     0x6eaa28: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eaa2c: mov             x3, x0
    // 0x6eaa30: ldur            x0, [fp, #-8]
    // 0x6eaa34: stur            x3, [fp, #-0x10]
    // 0x6eaa38: StoreField: r3->field_b = r0
    //     0x6eaa38: stur            w0, [x3, #0xb]
    // 0x6eaa3c: r0 = Instance_TextStyle
    //     0x6eaa3c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4f8] Obj!TextStyle@a174b1
    //     0x6eaa40: ldr             x0, [x0, #0x4f8]
    // 0x6eaa44: StoreField: r3->field_13 = r0
    //     0x6eaa44: stur            w0, [x3, #0x13]
    // 0x6eaa48: r1 = Null
    //     0x6eaa48: mov             x1, NULL
    // 0x6eaa4c: r2 = 4
    //     0x6eaa4c: mov             x2, #4
    // 0x6eaa50: r0 = AllocateArray()
    //     0x6eaa50: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eaa54: mov             x2, x0
    // 0x6eaa58: ldur            x0, [fp, #-0x18]
    // 0x6eaa5c: stur            x2, [fp, #-8]
    // 0x6eaa60: StoreField: r2->field_f = r0
    //     0x6eaa60: stur            w0, [x2, #0xf]
    // 0x6eaa64: ldur            x0, [fp, #-0x10]
    // 0x6eaa68: StoreField: r2->field_13 = r0
    //     0x6eaa68: stur            w0, [x2, #0x13]
    // 0x6eaa6c: r1 = <Widget>
    //     0x6eaa6c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eaa70: r0 = AllocateGrowableArray()
    //     0x6eaa70: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eaa74: mov             x1, x0
    // 0x6eaa78: ldur            x0, [fp, #-8]
    // 0x6eaa7c: stur            x1, [fp, #-0x10]
    // 0x6eaa80: StoreField: r1->field_f = r0
    //     0x6eaa80: stur            w0, [x1, #0xf]
    // 0x6eaa84: r0 = 4
    //     0x6eaa84: mov             x0, #4
    // 0x6eaa88: StoreField: r1->field_b = r0
    //     0x6eaa88: stur            w0, [x1, #0xb]
    // 0x6eaa8c: r0 = Column()
    //     0x6eaa8c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6eaa90: mov             x3, x0
    // 0x6eaa94: r0 = Instance_Axis
    //     0x6eaa94: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6eaa98: stur            x3, [fp, #-8]
    // 0x6eaa9c: StoreField: r3->field_f = r0
    //     0x6eaa9c: stur            w0, [x3, #0xf]
    // 0x6eaaa0: r0 = Instance_MainAxisAlignment
    //     0x6eaaa0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eaaa4: ldr             x0, [x0, #0x230]
    // 0x6eaaa8: StoreField: r3->field_13 = r0
    //     0x6eaaa8: stur            w0, [x3, #0x13]
    // 0x6eaaac: r4 = Instance_MainAxisSize
    //     0x6eaaac: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eaab0: ldr             x4, [x4, #0x330]
    // 0x6eaab4: ArrayStore: r3[0] = r4  ; List_4
    //     0x6eaab4: stur            w4, [x3, #0x17]
    // 0x6eaab8: r1 = Instance_CrossAxisAlignment
    //     0x6eaab8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6eaabc: ldr             x1, [x1, #0x238]
    // 0x6eaac0: StoreField: r3->field_1b = r1
    //     0x6eaac0: stur            w1, [x3, #0x1b]
    // 0x6eaac4: r5 = Instance_VerticalDirection
    //     0x6eaac4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eaac8: ldr             x5, [x5, #0x340]
    // 0x6eaacc: StoreField: r3->field_23 = r5
    //     0x6eaacc: stur            w5, [x3, #0x23]
    // 0x6eaad0: r6 = Instance_Clip
    //     0x6eaad0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eaad4: ldr             x6, [x6, #0x348]
    // 0x6eaad8: StoreField: r3->field_2b = r6
    //     0x6eaad8: stur            w6, [x3, #0x2b]
    // 0x6eaadc: StoreField: r3->field_2f = rZR
    //     0x6eaadc: stur            xzr, [x3, #0x2f]
    // 0x6eaae0: ldur            x1, [fp, #-0x10]
    // 0x6eaae4: StoreField: r3->field_b = r1
    //     0x6eaae4: stur            w1, [x3, #0xb]
    // 0x6eaae8: r1 = Null
    //     0x6eaae8: mov             x1, NULL
    // 0x6eaaec: r2 = 6
    //     0x6eaaec: mov             x2, #6
    // 0x6eaaf0: r0 = AllocateArray()
    //     0x6eaaf0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eaaf4: mov             x2, x0
    // 0x6eaaf8: ldur            x0, [fp, #-0x20]
    // 0x6eaafc: stur            x2, [fp, #-0x10]
    // 0x6eab00: StoreField: r2->field_f = r0
    //     0x6eab00: stur            w0, [x2, #0xf]
    // 0x6eab04: r16 = Instance_SizedBox
    //     0x6eab04: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6eab08: ldr             x16, [x16, #0x360]
    // 0x6eab0c: StoreField: r2->field_13 = r16
    //     0x6eab0c: stur            w16, [x2, #0x13]
    // 0x6eab10: ldur            x0, [fp, #-8]
    // 0x6eab14: ArrayStore: r2[0] = r0  ; List_4
    //     0x6eab14: stur            w0, [x2, #0x17]
    // 0x6eab18: r1 = <Widget>
    //     0x6eab18: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eab1c: r0 = AllocateGrowableArray()
    //     0x6eab1c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eab20: mov             x1, x0
    // 0x6eab24: ldur            x0, [fp, #-0x10]
    // 0x6eab28: stur            x1, [fp, #-8]
    // 0x6eab2c: StoreField: r1->field_f = r0
    //     0x6eab2c: stur            w0, [x1, #0xf]
    // 0x6eab30: r0 = 6
    //     0x6eab30: mov             x0, #6
    // 0x6eab34: StoreField: r1->field_b = r0
    //     0x6eab34: stur            w0, [x1, #0xb]
    // 0x6eab38: r0 = Row()
    //     0x6eab38: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6eab3c: mov             x1, x0
    // 0x6eab40: r0 = Instance_Axis
    //     0x6eab40: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6eab44: stur            x1, [fp, #-0x10]
    // 0x6eab48: StoreField: r1->field_f = r0
    //     0x6eab48: stur            w0, [x1, #0xf]
    // 0x6eab4c: r0 = Instance_MainAxisAlignment
    //     0x6eab4c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eab50: ldr             x0, [x0, #0x230]
    // 0x6eab54: StoreField: r1->field_13 = r0
    //     0x6eab54: stur            w0, [x1, #0x13]
    // 0x6eab58: r0 = Instance_MainAxisSize
    //     0x6eab58: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eab5c: ldr             x0, [x0, #0x330]
    // 0x6eab60: ArrayStore: r1[0] = r0  ; List_4
    //     0x6eab60: stur            w0, [x1, #0x17]
    // 0x6eab64: r0 = Instance_CrossAxisAlignment
    //     0x6eab64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6eab68: ldr             x0, [x0, #0x338]
    // 0x6eab6c: StoreField: r1->field_1b = r0
    //     0x6eab6c: stur            w0, [x1, #0x1b]
    // 0x6eab70: r0 = Instance_VerticalDirection
    //     0x6eab70: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eab74: ldr             x0, [x0, #0x340]
    // 0x6eab78: StoreField: r1->field_23 = r0
    //     0x6eab78: stur            w0, [x1, #0x23]
    // 0x6eab7c: r0 = Instance_Clip
    //     0x6eab7c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eab80: ldr             x0, [x0, #0x348]
    // 0x6eab84: StoreField: r1->field_2b = r0
    //     0x6eab84: stur            w0, [x1, #0x2b]
    // 0x6eab88: StoreField: r1->field_2f = rZR
    //     0x6eab88: stur            xzr, [x1, #0x2f]
    // 0x6eab8c: ldur            x0, [fp, #-8]
    // 0x6eab90: StoreField: r1->field_b = r0
    //     0x6eab90: stur            w0, [x1, #0xb]
    // 0x6eab94: r0 = Container()
    //     0x6eab94: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6eab98: stur            x0, [fp, #-8]
    // 0x6eab9c: r16 = Instance_EdgeInsets
    //     0x6eab9c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6eaba0: ldr             x16, [x16, #0x240]
    // 0x6eaba4: ldur            lr, [fp, #-0x28]
    // 0x6eaba8: stp             lr, x16, [SP, #8]
    // 0x6eabac: ldur            x16, [fp, #-0x10]
    // 0x6eabb0: str             x16, [SP]
    // 0x6eabb4: mov             x1, x0
    // 0x6eabb8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6eabb8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6eabbc: ldr             x4, [x4, #0x1e8]
    // 0x6eabc0: r0 = Container()
    //     0x6eabc0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6eabc4: r1 = <FlexParentData>
    //     0x6eabc4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6eabc8: ldr             x1, [x1, #0x340]
    // 0x6eabcc: r0 = Expanded()
    //     0x6eabcc: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6eabd0: r1 = 1
    //     0x6eabd0: mov             x1, #1
    // 0x6eabd4: StoreField: r0->field_13 = r1
    //     0x6eabd4: stur            x1, [x0, #0x13]
    // 0x6eabd8: r1 = Instance_FlexFit
    //     0x6eabd8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6eabdc: ldr             x1, [x1, #0x348]
    // 0x6eabe0: StoreField: r0->field_1b = r1
    //     0x6eabe0: stur            w1, [x0, #0x1b]
    // 0x6eabe4: ldur            x1, [fp, #-8]
    // 0x6eabe8: StoreField: r0->field_b = r1
    //     0x6eabe8: stur            w1, [x0, #0xb]
    // 0x6eabec: LeaveFrame
    //     0x6eabec: mov             SP, fp
    //     0x6eabf0: ldp             fp, lr, [SP], #0x10
    // 0x6eabf4: ret
    //     0x6eabf4: ret             
    // 0x6eabf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eabf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eabfc: b               #0x6ea964
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6eac00, size: 0x9c
    // 0x6eac00: EnterFrame
    //     0x6eac00: stp             fp, lr, [SP, #-0x10]!
    //     0x6eac04: mov             fp, SP
    // 0x6eac08: AllocStack(0x18)
    //     0x6eac08: sub             SP, SP, #0x18
    // 0x6eac0c: SetupParameters([dynamic _ /* r0 */])
    //     0x6eac0c: ldr             x0, [fp, #0x20]
    //     0x6eac10: ldur            w1, [x0, #0x17]
    //     0x6eac14: add             x1, x1, HEAP, lsl #32
    //     0x6eac18: stur            x1, [fp, #-8]
    // 0x6eac1c: CheckStackOverflow
    //     0x6eac1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6eac20: cmp             SP, x16
    //     0x6eac24: b.ls            #0x6eac94
    // 0x6eac28: LoadField: r0 = r1->field_13
    //     0x6eac28: ldur            w0, [x1, #0x13]
    // 0x6eac2c: DecompressPointer r0
    //     0x6eac2c: add             x0, x0, HEAP, lsl #32
    // 0x6eac30: LoadField: r2 = r0->field_2f
    //     0x6eac30: ldur            w2, [x0, #0x2f]
    // 0x6eac34: DecompressPointer r2
    //     0x6eac34: add             x2, x2, HEAP, lsl #32
    // 0x6eac38: r0 = LoadClassIdInstr(r2)
    //     0x6eac38: ldur            x0, [x2, #-1]
    //     0x6eac3c: ubfx            x0, x0, #0xc, #0x14
    // 0x6eac40: ldr             x16, [fp, #0x10]
    // 0x6eac44: stp             x16, x2, [SP]
    // 0x6eac48: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6eac48: sub             lr, x0, #0xdfc
    //     0x6eac4c: ldr             lr, [x21, lr, lsl #3]
    //     0x6eac50: blr             lr
    // 0x6eac54: mov             x1, x0
    // 0x6eac58: ldur            x0, [fp, #-8]
    // 0x6eac5c: LoadField: r2 = r0->field_b
    //     0x6eac5c: ldur            w2, [x0, #0xb]
    // 0x6eac60: DecompressPointer r2
    //     0x6eac60: add             x2, x2, HEAP, lsl #32
    // 0x6eac64: LoadField: r3 = r2->field_f
    //     0x6eac64: ldur            w3, [x2, #0xf]
    // 0x6eac68: DecompressPointer r3
    //     0x6eac68: add             x3, x3, HEAP, lsl #32
    // 0x6eac6c: LoadField: r5 = r0->field_13
    //     0x6eac6c: ldur            w5, [x0, #0x13]
    // 0x6eac70: DecompressPointer r5
    //     0x6eac70: add             x5, x5, HEAP, lsl #32
    // 0x6eac74: mov             x16, x1
    // 0x6eac78: mov             x1, x3
    // 0x6eac7c: mov             x3, x16
    // 0x6eac80: ldr             x2, [fp, #0x18]
    // 0x6eac84: r0 = _buildAgencyCard()
    //     0x6eac84: bl              #0x6eac9c  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildAgencyCard
    // 0x6eac88: LeaveFrame
    //     0x6eac88: mov             SP, fp
    //     0x6eac8c: ldp             fp, lr, [SP], #0x10
    // 0x6eac90: ret
    //     0x6eac90: ret             
    // 0x6eac94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eac94: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eac98: b               #0x6eac28
  }
  _ _buildAgencyCard(/* No info */) {
    // ** addr: 0x6eac9c, size: 0xef0
    // 0x6eac9c: EnterFrame
    //     0x6eac9c: stp             fp, lr, [SP, #-0x10]!
    //     0x6eaca0: mov             fp, SP
    // 0x6eaca4: AllocStack(0x80)
    //     0x6eaca4: sub             SP, SP, #0x80
    // 0x6eaca8: SetupParameters(_SuperAdminDashboardState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */)
    //     0x6eaca8: stur            x1, [fp, #-8]
    //     0x6eacac: stur            x2, [fp, #-0x10]
    //     0x6eacb0: stur            x3, [fp, #-0x18]
    //     0x6eacb4: stur            x5, [fp, #-0x20]
    // 0x6eacb8: CheckStackOverflow
    //     0x6eacb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6eacbc: cmp             SP, x16
    //     0x6eacc0: b.ls            #0x6ebb80
    // 0x6eacc4: r1 = 4
    //     0x6eacc4: mov             x1, #4
    // 0x6eacc8: r0 = AllocateContext()
    //     0x6eacc8: bl              #0x927010  ; AllocateContextStub
    // 0x6eaccc: mov             x2, x0
    // 0x6eacd0: ldur            x0, [fp, #-8]
    // 0x6eacd4: stur            x2, [fp, #-0x28]
    // 0x6eacd8: StoreField: r2->field_f = r0
    //     0x6eacd8: stur            w0, [x2, #0xf]
    // 0x6eacdc: ldur            x1, [fp, #-0x10]
    // 0x6eace0: StoreField: r2->field_13 = r1
    //     0x6eace0: stur            w1, [x2, #0x13]
    // 0x6eace4: ldur            x1, [fp, #-0x18]
    // 0x6eace8: ArrayStore: r2[0] = r1  ; List_4
    //     0x6eace8: stur            w1, [x2, #0x17]
    // 0x6eacec: ldur            x1, [fp, #-0x20]
    // 0x6eacf0: StoreField: r2->field_1b = r1
    //     0x6eacf0: stur            w1, [x2, #0x1b]
    // 0x6eacf4: r16 = 0.080000
    //     0x6eacf4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x6eacf8: ldr             x16, [x16, #0xe30]
    // 0x6eacfc: str             x16, [SP]
    // 0x6ead00: r1 = Instance_Color
    //     0x6ead00: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ead04: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ead04: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ead08: ldr             x4, [x4, #0x198]
    // 0x6ead0c: r0 = withValues()
    //     0x6ead0c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ead10: stur            x0, [fp, #-0x10]
    // 0x6ead14: r0 = Radius()
    //     0x6ead14: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ead18: d0 = 12.000000
    //     0x6ead18: fmov            d0, #12.00000000
    // 0x6ead1c: stur            x0, [fp, #-0x18]
    // 0x6ead20: StoreField: r0->field_7 = d0
    //     0x6ead20: stur            d0, [x0, #7]
    // 0x6ead24: StoreField: r0->field_f = d0
    //     0x6ead24: stur            d0, [x0, #0xf]
    // 0x6ead28: r0 = BorderRadius()
    //     0x6ead28: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ead2c: mov             x2, x0
    // 0x6ead30: ldur            x0, [fp, #-0x18]
    // 0x6ead34: stur            x2, [fp, #-0x20]
    // 0x6ead38: StoreField: r2->field_7 = r0
    //     0x6ead38: stur            w0, [x2, #7]
    // 0x6ead3c: StoreField: r2->field_b = r0
    //     0x6ead3c: stur            w0, [x2, #0xb]
    // 0x6ead40: StoreField: r2->field_f = r0
    //     0x6ead40: stur            w0, [x2, #0xf]
    // 0x6ead44: StoreField: r2->field_13 = r0
    //     0x6ead44: stur            w0, [x2, #0x13]
    // 0x6ead48: ldur            x0, [fp, #-0x28]
    // 0x6ead4c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6ead4c: ldur            w1, [x0, #0x17]
    // 0x6ead50: DecompressPointer r1
    //     0x6ead50: add             x1, x1, HEAP, lsl #32
    // 0x6ead54: LoadField: r3 = r1->field_1f
    //     0x6ead54: ldur            w3, [x1, #0x1f]
    // 0x6ead58: DecompressPointer r3
    //     0x6ead58: add             x3, x3, HEAP, lsl #32
    // 0x6ead5c: tbnz            w3, #4, #0x6ead88
    // 0x6ead60: r16 = 0.300000
    //     0x6ead60: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x6ead64: ldr             x16, [x16, #0x320]
    // 0x6ead68: str             x16, [SP]
    // 0x6ead6c: r1 = Instance_Color
    //     0x6ead6c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6ead70: ldr             x1, [x1, #0xf30]
    // 0x6ead74: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ead74: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ead78: ldr             x4, [x4, #0x198]
    // 0x6ead7c: r0 = withValues()
    //     0x6ead7c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ead80: mov             x1, x0
    // 0x6ead84: b               #0x6eada8
    // 0x6ead88: r16 = 0.100000
    //     0x6ead88: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6ead8c: ldr             x16, [x16, #0x1f8]
    // 0x6ead90: str             x16, [SP]
    // 0x6ead94: r1 = Instance_Color
    //     0x6ead94: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ead98: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ead98: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ead9c: ldr             x4, [x4, #0x198]
    // 0x6eada0: r0 = withValues()
    //     0x6eada0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eada4: mov             x1, x0
    // 0x6eada8: ldur            x2, [fp, #-0x28]
    // 0x6eadac: ldur            x3, [fp, #-0x10]
    // 0x6eadb0: ldur            x0, [fp, #-0x20]
    // 0x6eadb4: str             x1, [SP]
    // 0x6eadb8: r1 = Null
    //     0x6eadb8: mov             x1, NULL
    // 0x6eadbc: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6eadbc: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6eadc0: ldr             x4, [x4, #0x788]
    // 0x6eadc4: r0 = Border.all()
    //     0x6eadc4: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6eadc8: stur            x0, [fp, #-0x18]
    // 0x6eadcc: r0 = BoxDecoration()
    //     0x6eadcc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6eadd0: mov             x1, x0
    // 0x6eadd4: ldur            x0, [fp, #-0x10]
    // 0x6eadd8: stur            x1, [fp, #-0x30]
    // 0x6eaddc: StoreField: r1->field_7 = r0
    //     0x6eaddc: stur            w0, [x1, #7]
    // 0x6eade0: ldur            x0, [fp, #-0x18]
    // 0x6eade4: StoreField: r1->field_f = r0
    //     0x6eade4: stur            w0, [x1, #0xf]
    // 0x6eade8: ldur            x0, [fp, #-0x20]
    // 0x6eadec: StoreField: r1->field_13 = r0
    //     0x6eadec: stur            w0, [x1, #0x13]
    // 0x6eadf0: r0 = Instance_BoxShape
    //     0x6eadf0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6eadf4: ldr             x0, [x0, #0x1c8]
    // 0x6eadf8: StoreField: r1->field_23 = r0
    //     0x6eadf8: stur            w0, [x1, #0x23]
    // 0x6eadfc: r0 = Radius()
    //     0x6eadfc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6eae00: d0 = 12.000000
    //     0x6eae00: fmov            d0, #12.00000000
    // 0x6eae04: stur            x0, [fp, #-0x10]
    // 0x6eae08: StoreField: r0->field_7 = d0
    //     0x6eae08: stur            d0, [x0, #7]
    // 0x6eae0c: StoreField: r0->field_f = d0
    //     0x6eae0c: stur            d0, [x0, #0xf]
    // 0x6eae10: r0 = BorderRadius()
    //     0x6eae10: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6eae14: mov             x2, x0
    // 0x6eae18: ldur            x0, [fp, #-0x10]
    // 0x6eae1c: stur            x2, [fp, #-0x18]
    // 0x6eae20: StoreField: r2->field_7 = r0
    //     0x6eae20: stur            w0, [x2, #7]
    // 0x6eae24: StoreField: r2->field_b = r0
    //     0x6eae24: stur            w0, [x2, #0xb]
    // 0x6eae28: StoreField: r2->field_f = r0
    //     0x6eae28: stur            w0, [x2, #0xf]
    // 0x6eae2c: StoreField: r2->field_13 = r0
    //     0x6eae2c: stur            w0, [x2, #0x13]
    // 0x6eae30: ldur            x0, [fp, #-0x28]
    // 0x6eae34: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6eae34: ldur            w1, [x0, #0x17]
    // 0x6eae38: DecompressPointer r1
    //     0x6eae38: add             x1, x1, HEAP, lsl #32
    // 0x6eae3c: LoadField: r3 = r1->field_1f
    //     0x6eae3c: ldur            w3, [x1, #0x1f]
    // 0x6eae40: DecompressPointer r3
    //     0x6eae40: add             x3, x3, HEAP, lsl #32
    // 0x6eae44: tbnz            w3, #4, #0x6eae6c
    // 0x6eae48: r16 = 0.200000
    //     0x6eae48: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6eae4c: ldr             x16, [x16, #0x1f0]
    // 0x6eae50: str             x16, [SP]
    // 0x6eae54: r1 = Instance_Color
    //     0x6eae54: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6eae58: ldr             x1, [x1, #0xf30]
    // 0x6eae5c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6eae5c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6eae60: ldr             x4, [x4, #0x198]
    // 0x6eae64: r0 = withValues()
    //     0x6eae64: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eae68: b               #0x6eae8c
    // 0x6eae6c: r16 = 0.200000
    //     0x6eae6c: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6eae70: ldr             x16, [x16, #0x1f0]
    // 0x6eae74: str             x16, [SP]
    // 0x6eae78: r1 = Instance_MaterialColor
    //     0x6eae78: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6eae7c: ldr             x1, [x1, #0xbc8]
    // 0x6eae80: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6eae80: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6eae84: ldr             x4, [x4, #0x198]
    // 0x6eae88: r0 = withValues()
    //     0x6eae88: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eae8c: ldur            x2, [fp, #-0x28]
    // 0x6eae90: stur            x0, [fp, #-0x10]
    // 0x6eae94: r0 = Radius()
    //     0x6eae94: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6eae98: d0 = 10.000000
    //     0x6eae98: fmov            d0, #10.00000000
    // 0x6eae9c: stur            x0, [fp, #-0x20]
    // 0x6eaea0: StoreField: r0->field_7 = d0
    //     0x6eaea0: stur            d0, [x0, #7]
    // 0x6eaea4: StoreField: r0->field_f = d0
    //     0x6eaea4: stur            d0, [x0, #0xf]
    // 0x6eaea8: r0 = BorderRadius()
    //     0x6eaea8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6eaeac: mov             x1, x0
    // 0x6eaeb0: ldur            x0, [fp, #-0x20]
    // 0x6eaeb4: stur            x1, [fp, #-0x38]
    // 0x6eaeb8: StoreField: r1->field_7 = r0
    //     0x6eaeb8: stur            w0, [x1, #7]
    // 0x6eaebc: StoreField: r1->field_b = r0
    //     0x6eaebc: stur            w0, [x1, #0xb]
    // 0x6eaec0: StoreField: r1->field_f = r0
    //     0x6eaec0: stur            w0, [x1, #0xf]
    // 0x6eaec4: StoreField: r1->field_13 = r0
    //     0x6eaec4: stur            w0, [x1, #0x13]
    // 0x6eaec8: r0 = BoxDecoration()
    //     0x6eaec8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6eaecc: mov             x1, x0
    // 0x6eaed0: ldur            x0, [fp, #-0x10]
    // 0x6eaed4: stur            x1, [fp, #-0x20]
    // 0x6eaed8: StoreField: r1->field_7 = r0
    //     0x6eaed8: stur            w0, [x1, #7]
    // 0x6eaedc: ldur            x0, [fp, #-0x38]
    // 0x6eaee0: StoreField: r1->field_13 = r0
    //     0x6eaee0: stur            w0, [x1, #0x13]
    // 0x6eaee4: r0 = Instance_BoxShape
    //     0x6eaee4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6eaee8: ldr             x0, [x0, #0x1c8]
    // 0x6eaeec: StoreField: r1->field_23 = r0
    //     0x6eaeec: stur            w0, [x1, #0x23]
    // 0x6eaef0: ldur            x2, [fp, #-0x28]
    // 0x6eaef4: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x6eaef4: ldur            w3, [x2, #0x17]
    // 0x6eaef8: DecompressPointer r3
    //     0x6eaef8: add             x3, x3, HEAP, lsl #32
    // 0x6eaefc: LoadField: r4 = r3->field_b
    //     0x6eaefc: ldur            w4, [x3, #0xb]
    // 0x6eaf00: DecompressPointer r4
    //     0x6eaf00: add             x4, x4, HEAP, lsl #32
    // 0x6eaf04: LoadField: r3 = r4->field_7
    //     0x6eaf04: ldur            w3, [x4, #7]
    // 0x6eaf08: cbz             w3, #0x6eaf34
    // 0x6eaf0c: stp             xzr, x4, [SP]
    // 0x6eaf10: r0 = []()
    //     0x6eaf10: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x6eaf14: r1 = LoadClassIdInstr(r0)
    //     0x6eaf14: ldur            x1, [x0, #-1]
    //     0x6eaf18: ubfx            x1, x1, #0xc, #0x14
    // 0x6eaf1c: str             x0, [SP]
    // 0x6eaf20: mov             x0, x1
    // 0x6eaf24: r0 = GDT[cid_x0 + -0xff6]()
    //     0x6eaf24: sub             lr, x0, #0xff6
    //     0x6eaf28: ldr             lr, [x21, lr, lsl #3]
    //     0x6eaf2c: blr             lr
    // 0x6eaf30: b               #0x6eaf3c
    // 0x6eaf34: r0 = "A"
    //     0x6eaf34: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a380] "A"
    //     0x6eaf38: ldr             x0, [x0, #0x380]
    // 0x6eaf3c: ldur            x2, [fp, #-0x28]
    // 0x6eaf40: stur            x0, [fp, #-0x38]
    // 0x6eaf44: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x6eaf44: ldur            w1, [x2, #0x17]
    // 0x6eaf48: DecompressPointer r1
    //     0x6eaf48: add             x1, x1, HEAP, lsl #32
    // 0x6eaf4c: LoadField: r3 = r1->field_1f
    //     0x6eaf4c: ldur            w3, [x1, #0x1f]
    // 0x6eaf50: DecompressPointer r3
    //     0x6eaf50: add             x3, x3, HEAP, lsl #32
    // 0x6eaf54: tbnz            w3, #4, #0x6eaf64
    // 0x6eaf58: r1 = Instance_Color
    //     0x6eaf58: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a388] Obj!Color@a254b1
    //     0x6eaf5c: ldr             x1, [x1, #0x388]
    // 0x6eaf60: b               #0x6eaf6c
    // 0x6eaf64: r1 = Instance_MaterialColor
    //     0x6eaf64: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6eaf68: ldr             x1, [x1, #0xbc8]
    // 0x6eaf6c: stur            x1, [fp, #-0x10]
    // 0x6eaf70: r0 = TextStyle()
    //     0x6eaf70: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6eaf74: mov             x1, x0
    // 0x6eaf78: r0 = true
    //     0x6eaf78: add             x0, NULL, #0x20  ; true
    // 0x6eaf7c: stur            x1, [fp, #-0x40]
    // 0x6eaf80: StoreField: r1->field_7 = r0
    //     0x6eaf80: stur            w0, [x1, #7]
    // 0x6eaf84: ldur            x2, [fp, #-0x10]
    // 0x6eaf88: StoreField: r1->field_b = r2
    //     0x6eaf88: stur            w2, [x1, #0xb]
    // 0x6eaf8c: r2 = 24.000000
    //     0x6eaf8c: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x6eaf90: ldr             x2, [x2, #0xf28]
    // 0x6eaf94: StoreField: r1->field_1f = r2
    //     0x6eaf94: stur            w2, [x1, #0x1f]
    // 0x6eaf98: r2 = Instance_FontWeight
    //     0x6eaf98: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6eaf9c: ldr             x2, [x2, #0x1d0]
    // 0x6eafa0: StoreField: r1->field_23 = r2
    //     0x6eafa0: stur            w2, [x1, #0x23]
    // 0x6eafa4: r0 = Text()
    //     0x6eafa4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eafa8: mov             x1, x0
    // 0x6eafac: ldur            x0, [fp, #-0x38]
    // 0x6eafb0: stur            x1, [fp, #-0x10]
    // 0x6eafb4: StoreField: r1->field_b = r0
    //     0x6eafb4: stur            w0, [x1, #0xb]
    // 0x6eafb8: ldur            x0, [fp, #-0x40]
    // 0x6eafbc: StoreField: r1->field_13 = r0
    //     0x6eafbc: stur            w0, [x1, #0x13]
    // 0x6eafc0: r0 = Center()
    //     0x6eafc0: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6eafc4: mov             x1, x0
    // 0x6eafc8: r0 = Instance_Alignment
    //     0x6eafc8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6eafcc: ldr             x0, [x0, #0x60]
    // 0x6eafd0: stur            x1, [fp, #-0x38]
    // 0x6eafd4: StoreField: r1->field_f = r0
    //     0x6eafd4: stur            w0, [x1, #0xf]
    // 0x6eafd8: ldur            x0, [fp, #-0x10]
    // 0x6eafdc: StoreField: r1->field_b = r0
    //     0x6eafdc: stur            w0, [x1, #0xb]
    // 0x6eafe0: r0 = Container()
    //     0x6eafe0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6eafe4: stur            x0, [fp, #-0x10]
    // 0x6eafe8: r16 = 50.000000
    //     0x6eafe8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6eafec: ldr             x16, [x16, #0xa48]
    // 0x6eaff0: r30 = 50.000000
    //     0x6eaff0: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6eaff4: ldr             lr, [lr, #0xa48]
    // 0x6eaff8: stp             lr, x16, [SP, #0x10]
    // 0x6eaffc: ldur            x16, [fp, #-0x20]
    // 0x6eb000: ldur            lr, [fp, #-0x38]
    // 0x6eb004: stp             lr, x16, [SP]
    // 0x6eb008: mov             x1, x0
    // 0x6eb00c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6eb00c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6eb010: ldr             x4, [x4, #0x990]
    // 0x6eb014: r0 = Container()
    //     0x6eb014: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6eb018: ldur            x2, [fp, #-0x28]
    // 0x6eb01c: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x6eb01c: ldur            w0, [x2, #0x17]
    // 0x6eb020: DecompressPointer r0
    //     0x6eb020: add             x0, x0, HEAP, lsl #32
    // 0x6eb024: stur            x0, [fp, #-0x38]
    // 0x6eb028: LoadField: r1 = r0->field_b
    //     0x6eb028: ldur            w1, [x0, #0xb]
    // 0x6eb02c: DecompressPointer r1
    //     0x6eb02c: add             x1, x1, HEAP, lsl #32
    // 0x6eb030: stur            x1, [fp, #-0x20]
    // 0x6eb034: r0 = Text()
    //     0x6eb034: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eb038: mov             x2, x0
    // 0x6eb03c: ldur            x0, [fp, #-0x20]
    // 0x6eb040: stur            x2, [fp, #-0x40]
    // 0x6eb044: StoreField: r2->field_b = r0
    //     0x6eb044: stur            w0, [x2, #0xb]
    // 0x6eb048: r0 = Instance_TextStyle
    //     0x6eb048: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a390] Obj!TextStyle@a17ad1
    //     0x6eb04c: ldr             x0, [x0, #0x390]
    // 0x6eb050: StoreField: r2->field_13 = r0
    //     0x6eb050: stur            w0, [x2, #0x13]
    // 0x6eb054: ldur            x0, [fp, #-0x38]
    // 0x6eb058: LoadField: r1 = r0->field_1f
    //     0x6eb058: ldur            w1, [x0, #0x1f]
    // 0x6eb05c: DecompressPointer r1
    //     0x6eb05c: add             x1, x1, HEAP, lsl #32
    // 0x6eb060: tbnz            w1, #4, #0x6eb088
    // 0x6eb064: r16 = 0.200000
    //     0x6eb064: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6eb068: ldr             x16, [x16, #0x1f0]
    // 0x6eb06c: str             x16, [SP]
    // 0x6eb070: r1 = Instance_MaterialColor
    //     0x6eb070: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6eb074: ldr             x1, [x1, #0x5d8]
    // 0x6eb078: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6eb078: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6eb07c: ldr             x4, [x4, #0x198]
    // 0x6eb080: r0 = withValues()
    //     0x6eb080: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eb084: b               #0x6eb0a8
    // 0x6eb088: r16 = 0.200000
    //     0x6eb088: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6eb08c: ldr             x16, [x16, #0x1f0]
    // 0x6eb090: str             x16, [SP]
    // 0x6eb094: r1 = Instance_MaterialColor
    //     0x6eb094: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x6eb098: ldr             x1, [x1, #0xb90]
    // 0x6eb09c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6eb09c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6eb0a0: ldr             x4, [x4, #0x198]
    // 0x6eb0a4: r0 = withValues()
    //     0x6eb0a4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eb0a8: ldur            x2, [fp, #-0x28]
    // 0x6eb0ac: stur            x0, [fp, #-0x20]
    // 0x6eb0b0: r0 = Radius()
    //     0x6eb0b0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6eb0b4: d0 = 4.000000
    //     0x6eb0b4: fmov            d0, #4.00000000
    // 0x6eb0b8: stur            x0, [fp, #-0x38]
    // 0x6eb0bc: StoreField: r0->field_7 = d0
    //     0x6eb0bc: stur            d0, [x0, #7]
    // 0x6eb0c0: StoreField: r0->field_f = d0
    //     0x6eb0c0: stur            d0, [x0, #0xf]
    // 0x6eb0c4: r0 = BorderRadius()
    //     0x6eb0c4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6eb0c8: mov             x1, x0
    // 0x6eb0cc: ldur            x0, [fp, #-0x38]
    // 0x6eb0d0: stur            x1, [fp, #-0x48]
    // 0x6eb0d4: StoreField: r1->field_7 = r0
    //     0x6eb0d4: stur            w0, [x1, #7]
    // 0x6eb0d8: StoreField: r1->field_b = r0
    //     0x6eb0d8: stur            w0, [x1, #0xb]
    // 0x6eb0dc: StoreField: r1->field_f = r0
    //     0x6eb0dc: stur            w0, [x1, #0xf]
    // 0x6eb0e0: StoreField: r1->field_13 = r0
    //     0x6eb0e0: stur            w0, [x1, #0x13]
    // 0x6eb0e4: r0 = BoxDecoration()
    //     0x6eb0e4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6eb0e8: mov             x1, x0
    // 0x6eb0ec: ldur            x0, [fp, #-0x20]
    // 0x6eb0f0: stur            x1, [fp, #-0x50]
    // 0x6eb0f4: StoreField: r1->field_7 = r0
    //     0x6eb0f4: stur            w0, [x1, #7]
    // 0x6eb0f8: ldur            x0, [fp, #-0x48]
    // 0x6eb0fc: StoreField: r1->field_13 = r0
    //     0x6eb0fc: stur            w0, [x1, #0x13]
    // 0x6eb100: r0 = Instance_BoxShape
    //     0x6eb100: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6eb104: ldr             x0, [x0, #0x1c8]
    // 0x6eb108: StoreField: r1->field_23 = r0
    //     0x6eb108: stur            w0, [x1, #0x23]
    // 0x6eb10c: ldur            x2, [fp, #-0x28]
    // 0x6eb110: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x6eb110: ldur            w3, [x2, #0x17]
    // 0x6eb114: DecompressPointer r3
    //     0x6eb114: add             x3, x3, HEAP, lsl #32
    // 0x6eb118: LoadField: r4 = r3->field_1f
    //     0x6eb118: ldur            w4, [x3, #0x1f]
    // 0x6eb11c: DecompressPointer r4
    //     0x6eb11c: add             x4, x4, HEAP, lsl #32
    // 0x6eb120: tbnz            w4, #4, #0x6eb130
    // 0x6eb124: r3 = "Aktif"
    //     0x6eb124: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a398] "Aktif"
    //     0x6eb128: ldr             x3, [x3, #0x398]
    // 0x6eb12c: b               #0x6eb138
    // 0x6eb130: r3 = "Pasif"
    //     0x6eb130: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a3a0] "Pasif"
    //     0x6eb134: ldr             x3, [x3, #0x3a0]
    // 0x6eb138: stur            x3, [fp, #-0x38]
    // 0x6eb13c: tbnz            w4, #4, #0x6eb14c
    // 0x6eb140: r6 = Instance_MaterialAccentColor
    //     0x6eb140: add             x6, PP, #0x1a, lsl #12  ; [pp+0x1a3a8] Obj!MaterialAccentColor@a259a1
    //     0x6eb144: ldr             x6, [x6, #0x3a8]
    // 0x6eb148: b               #0x6eb154
    // 0x6eb14c: r6 = Instance_MaterialAccentColor
    //     0x6eb14c: add             x6, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Obj!MaterialAccentColor@a25961
    //     0x6eb150: ldr             x6, [x6, #0x3b0]
    // 0x6eb154: ldur            x5, [fp, #-0x10]
    // 0x6eb158: ldur            x4, [fp, #-0x40]
    // 0x6eb15c: stur            x6, [fp, #-0x20]
    // 0x6eb160: r0 = TextStyle()
    //     0x6eb160: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6eb164: mov             x1, x0
    // 0x6eb168: r0 = true
    //     0x6eb168: add             x0, NULL, #0x20  ; true
    // 0x6eb16c: stur            x1, [fp, #-0x48]
    // 0x6eb170: StoreField: r1->field_7 = r0
    //     0x6eb170: stur            w0, [x1, #7]
    // 0x6eb174: ldur            x2, [fp, #-0x20]
    // 0x6eb178: StoreField: r1->field_b = r2
    //     0x6eb178: stur            w2, [x1, #0xb]
    // 0x6eb17c: r2 = 12.000000
    //     0x6eb17c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6eb180: ldr             x2, [x2, #0xae0]
    // 0x6eb184: StoreField: r1->field_1f = r2
    //     0x6eb184: stur            w2, [x1, #0x1f]
    // 0x6eb188: r0 = Text()
    //     0x6eb188: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eb18c: mov             x1, x0
    // 0x6eb190: ldur            x0, [fp, #-0x38]
    // 0x6eb194: stur            x1, [fp, #-0x20]
    // 0x6eb198: StoreField: r1->field_b = r0
    //     0x6eb198: stur            w0, [x1, #0xb]
    // 0x6eb19c: ldur            x0, [fp, #-0x48]
    // 0x6eb1a0: StoreField: r1->field_13 = r0
    //     0x6eb1a0: stur            w0, [x1, #0x13]
    // 0x6eb1a4: r0 = Container()
    //     0x6eb1a4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6eb1a8: stur            x0, [fp, #-0x38]
    // 0x6eb1ac: r16 = Instance_EdgeInsets
    //     0x6eb1ac: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a3b8] Obj!EdgeInsets@a0c3e1
    //     0x6eb1b0: ldr             x16, [x16, #0x3b8]
    // 0x6eb1b4: ldur            lr, [fp, #-0x50]
    // 0x6eb1b8: stp             lr, x16, [SP, #8]
    // 0x6eb1bc: ldur            x16, [fp, #-0x20]
    // 0x6eb1c0: str             x16, [SP]
    // 0x6eb1c4: mov             x1, x0
    // 0x6eb1c8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6eb1c8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6eb1cc: ldr             x4, [x4, #0x1e8]
    // 0x6eb1d0: r0 = Container()
    //     0x6eb1d0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6eb1d4: r1 = Null
    //     0x6eb1d4: mov             x1, NULL
    // 0x6eb1d8: r2 = 6
    //     0x6eb1d8: mov             x2, #6
    // 0x6eb1dc: r0 = AllocateArray()
    //     0x6eb1dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eb1e0: mov             x2, x0
    // 0x6eb1e4: ldur            x0, [fp, #-0x40]
    // 0x6eb1e8: stur            x2, [fp, #-0x20]
    // 0x6eb1ec: StoreField: r2->field_f = r0
    //     0x6eb1ec: stur            w0, [x2, #0xf]
    // 0x6eb1f0: r16 = Instance_SizedBox
    //     0x6eb1f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x6eb1f4: ldr             x16, [x16, #0x338]
    // 0x6eb1f8: StoreField: r2->field_13 = r16
    //     0x6eb1f8: stur            w16, [x2, #0x13]
    // 0x6eb1fc: ldur            x0, [fp, #-0x38]
    // 0x6eb200: ArrayStore: r2[0] = r0  ; List_4
    //     0x6eb200: stur            w0, [x2, #0x17]
    // 0x6eb204: r1 = <Widget>
    //     0x6eb204: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eb208: r0 = AllocateGrowableArray()
    //     0x6eb208: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eb20c: mov             x1, x0
    // 0x6eb210: ldur            x0, [fp, #-0x20]
    // 0x6eb214: stur            x1, [fp, #-0x38]
    // 0x6eb218: StoreField: r1->field_f = r0
    //     0x6eb218: stur            w0, [x1, #0xf]
    // 0x6eb21c: r0 = 6
    //     0x6eb21c: mov             x0, #6
    // 0x6eb220: StoreField: r1->field_b = r0
    //     0x6eb220: stur            w0, [x1, #0xb]
    // 0x6eb224: r0 = Column()
    //     0x6eb224: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6eb228: mov             x2, x0
    // 0x6eb22c: r0 = Instance_Axis
    //     0x6eb22c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6eb230: stur            x2, [fp, #-0x20]
    // 0x6eb234: StoreField: r2->field_f = r0
    //     0x6eb234: stur            w0, [x2, #0xf]
    // 0x6eb238: r3 = Instance_MainAxisAlignment
    //     0x6eb238: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eb23c: ldr             x3, [x3, #0x230]
    // 0x6eb240: StoreField: r2->field_13 = r3
    //     0x6eb240: stur            w3, [x2, #0x13]
    // 0x6eb244: r4 = Instance_MainAxisSize
    //     0x6eb244: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eb248: ldr             x4, [x4, #0x330]
    // 0x6eb24c: ArrayStore: r2[0] = r4  ; List_4
    //     0x6eb24c: stur            w4, [x2, #0x17]
    // 0x6eb250: r5 = Instance_CrossAxisAlignment
    //     0x6eb250: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6eb254: ldr             x5, [x5, #0x238]
    // 0x6eb258: StoreField: r2->field_1b = r5
    //     0x6eb258: stur            w5, [x2, #0x1b]
    // 0x6eb25c: r6 = Instance_VerticalDirection
    //     0x6eb25c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eb260: ldr             x6, [x6, #0x340]
    // 0x6eb264: StoreField: r2->field_23 = r6
    //     0x6eb264: stur            w6, [x2, #0x23]
    // 0x6eb268: r7 = Instance_Clip
    //     0x6eb268: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eb26c: ldr             x7, [x7, #0x348]
    // 0x6eb270: StoreField: r2->field_2b = r7
    //     0x6eb270: stur            w7, [x2, #0x2b]
    // 0x6eb274: StoreField: r2->field_2f = rZR
    //     0x6eb274: stur            xzr, [x2, #0x2f]
    // 0x6eb278: ldur            x1, [fp, #-0x38]
    // 0x6eb27c: StoreField: r2->field_b = r1
    //     0x6eb27c: stur            w1, [x2, #0xb]
    // 0x6eb280: r1 = <FlexParentData>
    //     0x6eb280: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6eb284: ldr             x1, [x1, #0x340]
    // 0x6eb288: r0 = Expanded()
    //     0x6eb288: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6eb28c: mov             x3, x0
    // 0x6eb290: r0 = 1
    //     0x6eb290: mov             x0, #1
    // 0x6eb294: stur            x3, [fp, #-0x38]
    // 0x6eb298: StoreField: r3->field_13 = r0
    //     0x6eb298: stur            x0, [x3, #0x13]
    // 0x6eb29c: r4 = Instance_FlexFit
    //     0x6eb29c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6eb2a0: ldr             x4, [x4, #0x348]
    // 0x6eb2a4: StoreField: r3->field_1b = r4
    //     0x6eb2a4: stur            w4, [x3, #0x1b]
    // 0x6eb2a8: ldur            x1, [fp, #-0x20]
    // 0x6eb2ac: StoreField: r3->field_b = r1
    //     0x6eb2ac: stur            w1, [x3, #0xb]
    // 0x6eb2b0: ldur            x2, [fp, #-0x28]
    // 0x6eb2b4: r1 = Function '<anonymous closure>':.
    //     0x6eb2b4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a3c0] AnonymousClosure: (0x6ed400), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildAgencyCard (0x6eac9c)
    //     0x6eb2b8: ldr             x1, [x1, #0x3c0]
    // 0x6eb2bc: r0 = AllocateClosure()
    //     0x6eb2bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6eb2c0: r1 = <String>
    //     0x6eb2c0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6eb2c4: stur            x0, [fp, #-0x20]
    // 0x6eb2c8: r0 = PopupMenuButton()
    //     0x6eb2c8: bl              #0x6ebd70  ; AllocatePopupMenuButtonStub -> PopupMenuButton<X0> (size=0x84)
    // 0x6eb2cc: mov             x3, x0
    // 0x6eb2d0: ldur            x0, [fp, #-0x20]
    // 0x6eb2d4: stur            x3, [fp, #-0x40]
    // 0x6eb2d8: StoreField: r3->field_f = r0
    //     0x6eb2d8: stur            w0, [x3, #0xf]
    // 0x6eb2dc: ldur            x2, [fp, #-0x28]
    // 0x6eb2e0: r1 = Function '<anonymous closure>':.
    //     0x6eb2e0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a3c8] AnonymousClosure: (0x6ebebc), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildAgencyCard (0x6eac9c)
    //     0x6eb2e4: ldr             x1, [x1, #0x3c8]
    // 0x6eb2e8: r0 = AllocateClosure()
    //     0x6eb2e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6eb2ec: mov             x1, x0
    // 0x6eb2f0: ldur            x0, [fp, #-0x40]
    // 0x6eb2f4: StoreField: r0->field_1b = r1
    //     0x6eb2f4: stur            w1, [x0, #0x1b]
    // 0x6eb2f8: r1 = Instance_EdgeInsets
    //     0x6eb2f8: add             x1, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x6eb2fc: ldr             x1, [x1, #0xde8]
    // 0x6eb300: StoreField: r0->field_33 = r1
    //     0x6eb300: stur            w1, [x0, #0x33]
    // 0x6eb304: r1 = Instance_Icon
    //     0x6eb304: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a3d0] Obj!Icon@a1e431
    //     0x6eb308: ldr             x1, [x1, #0x3d0]
    // 0x6eb30c: StoreField: r0->field_43 = r1
    //     0x6eb30c: stur            w1, [x0, #0x43]
    // 0x6eb310: r1 = Instance_Offset
    //     0x6eb310: ldr             x1, [PP, #0x2ca0]  ; [pp+0x2ca0] Obj!Offset@a26711
    // 0x6eb314: StoreField: r0->field_47 = r1
    //     0x6eb314: stur            w1, [x0, #0x47]
    // 0x6eb318: r3 = true
    //     0x6eb318: add             x3, NULL, #0x20  ; true
    // 0x6eb31c: StoreField: r0->field_4b = r3
    //     0x6eb31c: stur            w3, [x0, #0x4b]
    // 0x6eb320: r1 = Instance_Color
    //     0x6eb320: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6eb324: ldr             x1, [x1, #0x1c0]
    // 0x6eb328: StoreField: r0->field_53 = r1
    //     0x6eb328: stur            w1, [x0, #0x53]
    // 0x6eb32c: r4 = Instance_Clip
    //     0x6eb32c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eb330: ldr             x4, [x4, #0x348]
    // 0x6eb334: StoreField: r0->field_6b = r4
    //     0x6eb334: stur            w4, [x0, #0x6b]
    // 0x6eb338: r5 = false
    //     0x6eb338: add             x5, NULL, #0x30  ; false
    // 0x6eb33c: StoreField: r0->field_6f = r5
    //     0x6eb33c: stur            w5, [x0, #0x6f]
    // 0x6eb340: r1 = Null
    //     0x6eb340: mov             x1, NULL
    // 0x6eb344: r2 = 8
    //     0x6eb344: mov             x2, #8
    // 0x6eb348: r0 = AllocateArray()
    //     0x6eb348: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eb34c: mov             x2, x0
    // 0x6eb350: ldur            x0, [fp, #-0x10]
    // 0x6eb354: stur            x2, [fp, #-0x20]
    // 0x6eb358: StoreField: r2->field_f = r0
    //     0x6eb358: stur            w0, [x2, #0xf]
    // 0x6eb35c: r16 = Instance_SizedBox
    //     0x6eb35c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6eb360: ldr             x16, [x16, #0x360]
    // 0x6eb364: StoreField: r2->field_13 = r16
    //     0x6eb364: stur            w16, [x2, #0x13]
    // 0x6eb368: ldur            x0, [fp, #-0x38]
    // 0x6eb36c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6eb36c: stur            w0, [x2, #0x17]
    // 0x6eb370: ldur            x0, [fp, #-0x40]
    // 0x6eb374: StoreField: r2->field_1b = r0
    //     0x6eb374: stur            w0, [x2, #0x1b]
    // 0x6eb378: r1 = <Widget>
    //     0x6eb378: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eb37c: r0 = AllocateGrowableArray()
    //     0x6eb37c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eb380: mov             x1, x0
    // 0x6eb384: ldur            x0, [fp, #-0x20]
    // 0x6eb388: stur            x1, [fp, #-0x10]
    // 0x6eb38c: StoreField: r1->field_f = r0
    //     0x6eb38c: stur            w0, [x1, #0xf]
    // 0x6eb390: r0 = 8
    //     0x6eb390: mov             x0, #8
    // 0x6eb394: StoreField: r1->field_b = r0
    //     0x6eb394: stur            w0, [x1, #0xb]
    // 0x6eb398: r0 = Row()
    //     0x6eb398: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6eb39c: mov             x3, x0
    // 0x6eb3a0: r0 = Instance_Axis
    //     0x6eb3a0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6eb3a4: stur            x3, [fp, #-0x20]
    // 0x6eb3a8: StoreField: r3->field_f = r0
    //     0x6eb3a8: stur            w0, [x3, #0xf]
    // 0x6eb3ac: r4 = Instance_MainAxisAlignment
    //     0x6eb3ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eb3b0: ldr             x4, [x4, #0x230]
    // 0x6eb3b4: StoreField: r3->field_13 = r4
    //     0x6eb3b4: stur            w4, [x3, #0x13]
    // 0x6eb3b8: r5 = Instance_MainAxisSize
    //     0x6eb3b8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eb3bc: ldr             x5, [x5, #0x330]
    // 0x6eb3c0: ArrayStore: r3[0] = r5  ; List_4
    //     0x6eb3c0: stur            w5, [x3, #0x17]
    // 0x6eb3c4: r6 = Instance_CrossAxisAlignment
    //     0x6eb3c4: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6eb3c8: ldr             x6, [x6, #0x338]
    // 0x6eb3cc: StoreField: r3->field_1b = r6
    //     0x6eb3cc: stur            w6, [x3, #0x1b]
    // 0x6eb3d0: r7 = Instance_VerticalDirection
    //     0x6eb3d0: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eb3d4: ldr             x7, [x7, #0x340]
    // 0x6eb3d8: StoreField: r3->field_23 = r7
    //     0x6eb3d8: stur            w7, [x3, #0x23]
    // 0x6eb3dc: r8 = Instance_Clip
    //     0x6eb3dc: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eb3e0: ldr             x8, [x8, #0x348]
    // 0x6eb3e4: StoreField: r3->field_2b = r8
    //     0x6eb3e4: stur            w8, [x3, #0x2b]
    // 0x6eb3e8: StoreField: r3->field_2f = rZR
    //     0x6eb3e8: stur            xzr, [x3, #0x2f]
    // 0x6eb3ec: ldur            x1, [fp, #-0x10]
    // 0x6eb3f0: StoreField: r3->field_b = r1
    //     0x6eb3f0: stur            w1, [x3, #0xb]
    // 0x6eb3f4: r1 = Null
    //     0x6eb3f4: mov             x1, NULL
    // 0x6eb3f8: r2 = 2
    //     0x6eb3f8: mov             x2, #2
    // 0x6eb3fc: r0 = AllocateArray()
    //     0x6eb3fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eb400: mov             x2, x0
    // 0x6eb404: ldur            x0, [fp, #-0x20]
    // 0x6eb408: stur            x2, [fp, #-0x10]
    // 0x6eb40c: StoreField: r2->field_f = r0
    //     0x6eb40c: stur            w0, [x2, #0xf]
    // 0x6eb410: r1 = <Widget>
    //     0x6eb410: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eb414: r0 = AllocateGrowableArray()
    //     0x6eb414: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eb418: mov             x1, x0
    // 0x6eb41c: ldur            x0, [fp, #-0x10]
    // 0x6eb420: stur            x1, [fp, #-0x38]
    // 0x6eb424: StoreField: r1->field_f = r0
    //     0x6eb424: stur            w0, [x1, #0xf]
    // 0x6eb428: r2 = 2
    //     0x6eb428: mov             x2, #2
    // 0x6eb42c: StoreField: r1->field_b = r2
    //     0x6eb42c: stur            w2, [x1, #0xb]
    // 0x6eb430: ldur            x3, [fp, #-0x28]
    // 0x6eb434: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x6eb434: ldur            w4, [x3, #0x17]
    // 0x6eb438: DecompressPointer r4
    //     0x6eb438: add             x4, x4, HEAP, lsl #32
    // 0x6eb43c: LoadField: r5 = r4->field_f
    //     0x6eb43c: ldur            w5, [x4, #0xf]
    // 0x6eb440: DecompressPointer r5
    //     0x6eb440: add             x5, x5, HEAP, lsl #32
    // 0x6eb444: stur            x5, [fp, #-0x20]
    // 0x6eb448: cmp             w5, NULL
    // 0x6eb44c: b.eq            #0x6eb508
    // 0x6eb450: LoadField: r4 = r5->field_7
    //     0x6eb450: ldur            w4, [x5, #7]
    // 0x6eb454: cbz             w4, #0x6eb500
    // 0x6eb458: r0 = Text()
    //     0x6eb458: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6eb45c: mov             x1, x0
    // 0x6eb460: ldur            x0, [fp, #-0x20]
    // 0x6eb464: stur            x1, [fp, #-0x40]
    // 0x6eb468: StoreField: r1->field_b = r0
    //     0x6eb468: stur            w0, [x1, #0xb]
    // 0x6eb46c: r0 = Instance_TextStyle
    //     0x6eb46c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a3d8] Obj!TextStyle@a17911
    //     0x6eb470: ldr             x0, [x0, #0x3d8]
    // 0x6eb474: StoreField: r1->field_13 = r0
    //     0x6eb474: stur            w0, [x1, #0x13]
    // 0x6eb478: r0 = Instance_TextOverflow
    //     0x6eb478: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x6eb47c: ldr             x0, [x0, #0x68]
    // 0x6eb480: StoreField: r1->field_2b = r0
    //     0x6eb480: stur            w0, [x1, #0x2b]
    // 0x6eb484: r0 = 4
    //     0x6eb484: mov             x0, #4
    // 0x6eb488: StoreField: r1->field_37 = r0
    //     0x6eb488: stur            w0, [x1, #0x37]
    // 0x6eb48c: r0 = Padding()
    //     0x6eb48c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6eb490: mov             x2, x0
    // 0x6eb494: r0 = Instance_EdgeInsets
    //     0x6eb494: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a3e0] Obj!EdgeInsets@a0c3b1
    //     0x6eb498: ldr             x0, [x0, #0x3e0]
    // 0x6eb49c: stur            x2, [fp, #-0x20]
    // 0x6eb4a0: StoreField: r2->field_f = r0
    //     0x6eb4a0: stur            w0, [x2, #0xf]
    // 0x6eb4a4: ldur            x0, [fp, #-0x40]
    // 0x6eb4a8: StoreField: r2->field_b = r0
    //     0x6eb4a8: stur            w0, [x2, #0xb]
    // 0x6eb4ac: ldur            x1, [fp, #-0x38]
    // 0x6eb4b0: r0 = _growToNextCapacity()
    //     0x6eb4b0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb4b4: ldur            x2, [fp, #-0x38]
    // 0x6eb4b8: r0 = 4
    //     0x6eb4b8: mov             x0, #4
    // 0x6eb4bc: StoreField: r2->field_b = r0
    //     0x6eb4bc: stur            w0, [x2, #0xb]
    // 0x6eb4c0: LoadField: r3 = r2->field_f
    //     0x6eb4c0: ldur            w3, [x2, #0xf]
    // 0x6eb4c4: DecompressPointer r3
    //     0x6eb4c4: add             x3, x3, HEAP, lsl #32
    // 0x6eb4c8: mov             x1, x3
    // 0x6eb4cc: ldur            x0, [fp, #-0x20]
    // 0x6eb4d0: ArrayStore: r1[1] = r0  ; List_4
    //     0x6eb4d0: add             x25, x1, #0x13
    //     0x6eb4d4: str             w0, [x25]
    //     0x6eb4d8: tbz             w0, #0, #0x6eb4f4
    //     0x6eb4dc: ldurb           w16, [x1, #-1]
    //     0x6eb4e0: ldurb           w17, [x0, #-1]
    //     0x6eb4e4: and             x16, x17, x16, lsr #2
    //     0x6eb4e8: tst             x16, HEAP, lsr #32
    //     0x6eb4ec: b.eq            #0x6eb4f4
    //     0x6eb4f0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eb4f4: mov             x0, x3
    // 0x6eb4f8: r3 = 2
    //     0x6eb4f8: mov             x3, #2
    // 0x6eb4fc: b               #0x6eb510
    // 0x6eb500: mov             x2, x1
    // 0x6eb504: b               #0x6eb50c
    // 0x6eb508: mov             x2, x1
    // 0x6eb50c: r3 = 1
    //     0x6eb50c: mov             x3, #1
    // 0x6eb510: stur            x3, [fp, #-0x58]
    // 0x6eb514: LoadField: r1 = r0->field_b
    //     0x6eb514: ldur            w1, [x0, #0xb]
    // 0x6eb518: r0 = LoadInt32Instr(r1)
    //     0x6eb518: sbfx            x0, x1, #1, #0x1f
    // 0x6eb51c: cmp             x3, x0
    // 0x6eb520: b.ne            #0x6eb52c
    // 0x6eb524: mov             x1, x2
    // 0x6eb528: r0 = _growToNextCapacity()
    //     0x6eb528: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb52c: ldur            x4, [fp, #-0x28]
    // 0x6eb530: ldur            x3, [fp, #-0x38]
    // 0x6eb534: ldur            x2, [fp, #-0x58]
    // 0x6eb538: add             x0, x2, #1
    // 0x6eb53c: lsl             x1, x0, #1
    // 0x6eb540: StoreField: r3->field_b = r1
    //     0x6eb540: stur            w1, [x3, #0xb]
    // 0x6eb544: mov             x1, x2
    // 0x6eb548: cmp             x1, x0
    // 0x6eb54c: b.hs            #0x6ebb88
    // 0x6eb550: LoadField: r0 = r3->field_f
    //     0x6eb550: ldur            w0, [x3, #0xf]
    // 0x6eb554: DecompressPointer r0
    //     0x6eb554: add             x0, x0, HEAP, lsl #32
    // 0x6eb558: add             x1, x0, x2, lsl #2
    // 0x6eb55c: r16 = Instance_SizedBox
    //     0x6eb55c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6eb560: ldr             x16, [x16, #0x220]
    // 0x6eb564: StoreField: r1->field_f = r16
    //     0x6eb564: stur            w16, [x1, #0xf]
    // 0x6eb568: r1 = <Widget>
    //     0x6eb568: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eb56c: r2 = 0
    //     0x6eb56c: mov             x2, #0
    // 0x6eb570: r0 = _GrowableList()
    //     0x6eb570: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6eb574: mov             x4, x0
    // 0x6eb578: ldur            x0, [fp, #-0x28]
    // 0x6eb57c: stur            x4, [fp, #-0x10]
    // 0x6eb580: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6eb580: ldur            w1, [x0, #0x17]
    // 0x6eb584: DecompressPointer r1
    //     0x6eb584: add             x1, x1, HEAP, lsl #32
    // 0x6eb588: LoadField: r3 = r1->field_13
    //     0x6eb588: ldur            w3, [x1, #0x13]
    // 0x6eb58c: DecompressPointer r3
    //     0x6eb58c: add             x3, x3, HEAP, lsl #32
    // 0x6eb590: cmp             w3, NULL
    // 0x6eb594: b.eq            #0x6eb630
    // 0x6eb598: LoadField: r1 = r3->field_7
    //     0x6eb598: ldur            w1, [x3, #7]
    // 0x6eb59c: cbz             w1, #0x6eb630
    // 0x6eb5a0: ldur            x1, [fp, #-8]
    // 0x6eb5a4: r2 = Instance_IconData
    //     0x6eb5a4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x6eb5a8: ldr             x2, [x2, #0x268]
    // 0x6eb5ac: r0 = _buildInfoChip()
    //     0x6eb5ac: bl              #0x6ebb8c  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildInfoChip
    // 0x6eb5b0: mov             x2, x0
    // 0x6eb5b4: ldur            x0, [fp, #-0x10]
    // 0x6eb5b8: stur            x2, [fp, #-0x20]
    // 0x6eb5bc: LoadField: r1 = r0->field_b
    //     0x6eb5bc: ldur            w1, [x0, #0xb]
    // 0x6eb5c0: LoadField: r3 = r0->field_f
    //     0x6eb5c0: ldur            w3, [x0, #0xf]
    // 0x6eb5c4: DecompressPointer r3
    //     0x6eb5c4: add             x3, x3, HEAP, lsl #32
    // 0x6eb5c8: LoadField: r4 = r3->field_b
    //     0x6eb5c8: ldur            w4, [x3, #0xb]
    // 0x6eb5cc: r3 = LoadInt32Instr(r1)
    //     0x6eb5cc: sbfx            x3, x1, #1, #0x1f
    // 0x6eb5d0: stur            x3, [fp, #-0x58]
    // 0x6eb5d4: r1 = LoadInt32Instr(r4)
    //     0x6eb5d4: sbfx            x1, x4, #1, #0x1f
    // 0x6eb5d8: cmp             x3, x1
    // 0x6eb5dc: b.ne            #0x6eb5e8
    // 0x6eb5e0: mov             x1, x0
    // 0x6eb5e4: r0 = _growToNextCapacity()
    //     0x6eb5e4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb5e8: ldur            x4, [fp, #-0x10]
    // 0x6eb5ec: ldur            x2, [fp, #-0x58]
    // 0x6eb5f0: add             x0, x2, #1
    // 0x6eb5f4: lsl             x1, x0, #1
    // 0x6eb5f8: StoreField: r4->field_b = r1
    //     0x6eb5f8: stur            w1, [x4, #0xb]
    // 0x6eb5fc: LoadField: r1 = r4->field_f
    //     0x6eb5fc: ldur            w1, [x4, #0xf]
    // 0x6eb600: DecompressPointer r1
    //     0x6eb600: add             x1, x1, HEAP, lsl #32
    // 0x6eb604: ldur            x0, [fp, #-0x20]
    // 0x6eb608: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6eb608: add             x25, x1, x2, lsl #2
    //     0x6eb60c: add             x25, x25, #0xf
    //     0x6eb610: str             w0, [x25]
    //     0x6eb614: tbz             w0, #0, #0x6eb630
    //     0x6eb618: ldurb           w16, [x1, #-1]
    //     0x6eb61c: ldurb           w17, [x0, #-1]
    //     0x6eb620: and             x16, x17, x16, lsr #2
    //     0x6eb624: tst             x16, HEAP, lsr #32
    //     0x6eb628: b.eq            #0x6eb630
    //     0x6eb62c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eb630: ldur            x0, [fp, #-0x28]
    // 0x6eb634: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6eb634: ldur            w1, [x0, #0x17]
    // 0x6eb638: DecompressPointer r1
    //     0x6eb638: add             x1, x1, HEAP, lsl #32
    // 0x6eb63c: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x6eb63c: ldur            w3, [x1, #0x17]
    // 0x6eb640: DecompressPointer r3
    //     0x6eb640: add             x3, x3, HEAP, lsl #32
    // 0x6eb644: cmp             w3, NULL
    // 0x6eb648: b.eq            #0x6eb6f0
    // 0x6eb64c: LoadField: r1 = r3->field_7
    //     0x6eb64c: ldur            w1, [x3, #7]
    // 0x6eb650: cbz             w1, #0x6eb6e8
    // 0x6eb654: ldur            x1, [fp, #-8]
    // 0x6eb658: r2 = Instance_IconData
    //     0x6eb658: add             x2, PP, #0x12, lsl #12  ; [pp+0x122a8] Obj!IconData@a09e81
    //     0x6eb65c: ldr             x2, [x2, #0x2a8]
    // 0x6eb660: r0 = _buildInfoChip()
    //     0x6eb660: bl              #0x6ebb8c  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildInfoChip
    // 0x6eb664: mov             x2, x0
    // 0x6eb668: ldur            x0, [fp, #-0x10]
    // 0x6eb66c: stur            x2, [fp, #-8]
    // 0x6eb670: LoadField: r1 = r0->field_b
    //     0x6eb670: ldur            w1, [x0, #0xb]
    // 0x6eb674: LoadField: r3 = r0->field_f
    //     0x6eb674: ldur            w3, [x0, #0xf]
    // 0x6eb678: DecompressPointer r3
    //     0x6eb678: add             x3, x3, HEAP, lsl #32
    // 0x6eb67c: LoadField: r4 = r3->field_b
    //     0x6eb67c: ldur            w4, [x3, #0xb]
    // 0x6eb680: r3 = LoadInt32Instr(r1)
    //     0x6eb680: sbfx            x3, x1, #1, #0x1f
    // 0x6eb684: stur            x3, [fp, #-0x58]
    // 0x6eb688: r1 = LoadInt32Instr(r4)
    //     0x6eb688: sbfx            x1, x4, #1, #0x1f
    // 0x6eb68c: cmp             x3, x1
    // 0x6eb690: b.ne            #0x6eb69c
    // 0x6eb694: mov             x1, x0
    // 0x6eb698: r0 = _growToNextCapacity()
    //     0x6eb698: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb69c: ldur            x2, [fp, #-0x10]
    // 0x6eb6a0: ldur            x3, [fp, #-0x58]
    // 0x6eb6a4: add             x0, x3, #1
    // 0x6eb6a8: lsl             x1, x0, #1
    // 0x6eb6ac: StoreField: r2->field_b = r1
    //     0x6eb6ac: stur            w1, [x2, #0xb]
    // 0x6eb6b0: LoadField: r1 = r2->field_f
    //     0x6eb6b0: ldur            w1, [x2, #0xf]
    // 0x6eb6b4: DecompressPointer r1
    //     0x6eb6b4: add             x1, x1, HEAP, lsl #32
    // 0x6eb6b8: ldur            x0, [fp, #-8]
    // 0x6eb6bc: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6eb6bc: add             x25, x1, x3, lsl #2
    //     0x6eb6c0: add             x25, x25, #0xf
    //     0x6eb6c4: str             w0, [x25]
    //     0x6eb6c8: tbz             w0, #0, #0x6eb6e4
    //     0x6eb6cc: ldurb           w16, [x1, #-1]
    //     0x6eb6d0: ldurb           w17, [x0, #-1]
    //     0x6eb6d4: and             x16, x17, x16, lsr #2
    //     0x6eb6d8: tst             x16, HEAP, lsr #32
    //     0x6eb6dc: b.eq            #0x6eb6e4
    //     0x6eb6e0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eb6e4: b               #0x6eb6f4
    // 0x6eb6e8: mov             x2, x4
    // 0x6eb6ec: b               #0x6eb6f4
    // 0x6eb6f0: mov             x2, x4
    // 0x6eb6f4: ldur            x1, [fp, #-0x38]
    // 0x6eb6f8: r0 = Row()
    //     0x6eb6f8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6eb6fc: mov             x2, x0
    // 0x6eb700: r0 = Instance_Axis
    //     0x6eb700: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6eb704: stur            x2, [fp, #-8]
    // 0x6eb708: StoreField: r2->field_f = r0
    //     0x6eb708: stur            w0, [x2, #0xf]
    // 0x6eb70c: r3 = Instance_MainAxisAlignment
    //     0x6eb70c: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eb710: ldr             x3, [x3, #0x230]
    // 0x6eb714: StoreField: r2->field_13 = r3
    //     0x6eb714: stur            w3, [x2, #0x13]
    // 0x6eb718: r4 = Instance_MainAxisSize
    //     0x6eb718: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eb71c: ldr             x4, [x4, #0x330]
    // 0x6eb720: ArrayStore: r2[0] = r4  ; List_4
    //     0x6eb720: stur            w4, [x2, #0x17]
    // 0x6eb724: r5 = Instance_CrossAxisAlignment
    //     0x6eb724: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6eb728: ldr             x5, [x5, #0x338]
    // 0x6eb72c: StoreField: r2->field_1b = r5
    //     0x6eb72c: stur            w5, [x2, #0x1b]
    // 0x6eb730: r6 = Instance_VerticalDirection
    //     0x6eb730: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eb734: ldr             x6, [x6, #0x340]
    // 0x6eb738: StoreField: r2->field_23 = r6
    //     0x6eb738: stur            w6, [x2, #0x23]
    // 0x6eb73c: r7 = Instance_Clip
    //     0x6eb73c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eb740: ldr             x7, [x7, #0x348]
    // 0x6eb744: StoreField: r2->field_2b = r7
    //     0x6eb744: stur            w7, [x2, #0x2b]
    // 0x6eb748: StoreField: r2->field_2f = rZR
    //     0x6eb748: stur            xzr, [x2, #0x2f]
    // 0x6eb74c: ldur            x1, [fp, #-0x10]
    // 0x6eb750: StoreField: r2->field_b = r1
    //     0x6eb750: stur            w1, [x2, #0xb]
    // 0x6eb754: ldur            x8, [fp, #-0x38]
    // 0x6eb758: LoadField: r1 = r8->field_b
    //     0x6eb758: ldur            w1, [x8, #0xb]
    // 0x6eb75c: LoadField: r9 = r8->field_f
    //     0x6eb75c: ldur            w9, [x8, #0xf]
    // 0x6eb760: DecompressPointer r9
    //     0x6eb760: add             x9, x9, HEAP, lsl #32
    // 0x6eb764: LoadField: r10 = r9->field_b
    //     0x6eb764: ldur            w10, [x9, #0xb]
    // 0x6eb768: r9 = LoadInt32Instr(r1)
    //     0x6eb768: sbfx            x9, x1, #1, #0x1f
    // 0x6eb76c: stur            x9, [fp, #-0x58]
    // 0x6eb770: r1 = LoadInt32Instr(r10)
    //     0x6eb770: sbfx            x1, x10, #1, #0x1f
    // 0x6eb774: cmp             x9, x1
    // 0x6eb778: b.ne            #0x6eb784
    // 0x6eb77c: mov             x1, x8
    // 0x6eb780: r0 = _growToNextCapacity()
    //     0x6eb780: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb784: ldur            x2, [fp, #-0x38]
    // 0x6eb788: ldur            x3, [fp, #-0x58]
    // 0x6eb78c: add             x4, x3, #1
    // 0x6eb790: stur            x4, [fp, #-0x60]
    // 0x6eb794: lsl             x0, x4, #1
    // 0x6eb798: StoreField: r2->field_b = r0
    //     0x6eb798: stur            w0, [x2, #0xb]
    // 0x6eb79c: LoadField: r5 = r2->field_f
    //     0x6eb79c: ldur            w5, [x2, #0xf]
    // 0x6eb7a0: DecompressPointer r5
    //     0x6eb7a0: add             x5, x5, HEAP, lsl #32
    // 0x6eb7a4: mov             x1, x5
    // 0x6eb7a8: ldur            x0, [fp, #-8]
    // 0x6eb7ac: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6eb7ac: add             x25, x1, x3, lsl #2
    //     0x6eb7b0: add             x25, x25, #0xf
    //     0x6eb7b4: str             w0, [x25]
    //     0x6eb7b8: tbz             w0, #0, #0x6eb7d4
    //     0x6eb7bc: ldurb           w16, [x1, #-1]
    //     0x6eb7c0: ldurb           w17, [x0, #-1]
    //     0x6eb7c4: and             x16, x17, x16, lsr #2
    //     0x6eb7c8: tst             x16, HEAP, lsr #32
    //     0x6eb7cc: b.eq            #0x6eb7d4
    //     0x6eb7d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eb7d4: LoadField: r0 = r5->field_b
    //     0x6eb7d4: ldur            w0, [x5, #0xb]
    // 0x6eb7d8: r1 = LoadInt32Instr(r0)
    //     0x6eb7d8: sbfx            x1, x0, #1, #0x1f
    // 0x6eb7dc: cmp             x4, x1
    // 0x6eb7e0: b.ne            #0x6eb7ec
    // 0x6eb7e4: mov             x1, x2
    // 0x6eb7e8: r0 = _growToNextCapacity()
    //     0x6eb7e8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb7ec: ldur            x0, [fp, #-0x60]
    // 0x6eb7f0: ldur            x1, [fp, #-0x38]
    // 0x6eb7f4: add             x2, x0, #1
    // 0x6eb7f8: lsl             x3, x2, #1
    // 0x6eb7fc: StoreField: r1->field_b = r3
    //     0x6eb7fc: stur            w3, [x1, #0xb]
    // 0x6eb800: LoadField: r2 = r1->field_f
    //     0x6eb800: ldur            w2, [x1, #0xf]
    // 0x6eb804: DecompressPointer r2
    //     0x6eb804: add             x2, x2, HEAP, lsl #32
    // 0x6eb808: add             x3, x2, x0, lsl #2
    // 0x6eb80c: r16 = Instance_SizedBox
    //     0x6eb80c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6eb810: ldr             x16, [x16, #0x220]
    // 0x6eb814: StoreField: r3->field_f = r16
    //     0x6eb814: stur            w16, [x3, #0xf]
    // 0x6eb818: r0 = Radius()
    //     0x6eb818: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6eb81c: d0 = 8.000000
    //     0x6eb81c: fmov            d0, #8.00000000
    // 0x6eb820: stur            x0, [fp, #-8]
    // 0x6eb824: StoreField: r0->field_7 = d0
    //     0x6eb824: stur            d0, [x0, #7]
    // 0x6eb828: StoreField: r0->field_f = d0
    //     0x6eb828: stur            d0, [x0, #0xf]
    // 0x6eb82c: r0 = BorderRadius()
    //     0x6eb82c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6eb830: mov             x1, x0
    // 0x6eb834: ldur            x0, [fp, #-8]
    // 0x6eb838: stur            x1, [fp, #-0x10]
    // 0x6eb83c: StoreField: r1->field_7 = r0
    //     0x6eb83c: stur            w0, [x1, #7]
    // 0x6eb840: StoreField: r1->field_b = r0
    //     0x6eb840: stur            w0, [x1, #0xb]
    // 0x6eb844: StoreField: r1->field_f = r0
    //     0x6eb844: stur            w0, [x1, #0xf]
    // 0x6eb848: StoreField: r1->field_13 = r0
    //     0x6eb848: stur            w0, [x1, #0x13]
    // 0x6eb84c: r0 = RoundedRectangleBorder()
    //     0x6eb84c: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6eb850: mov             x1, x0
    // 0x6eb854: ldur            x0, [fp, #-0x10]
    // 0x6eb858: StoreField: r1->field_b = r0
    //     0x6eb858: stur            w0, [x1, #0xb]
    // 0x6eb85c: r0 = Instance_BorderSide
    //     0x6eb85c: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6eb860: ldr             x0, [x0, #0xcb8]
    // 0x6eb864: StoreField: r1->field_7 = r0
    //     0x6eb864: stur            w0, [x1, #7]
    // 0x6eb868: r16 = Instance_Color
    //     0x6eb868: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6eb86c: ldr             x16, [x16, #0xf30]
    // 0x6eb870: r30 = Instance_Color
    //     0x6eb870: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6eb874: stp             lr, x16, [SP, #8]
    // 0x6eb878: str             x1, [SP]
    // 0x6eb87c: r4 = const [0, 0x3, 0x3, 0, backgroundColor, 0, foregroundColor, 0x1, shape, 0x2, null]
    //     0x6eb87c: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a338] List(11) [0, 0x3, 0x3, 0, "backgroundColor", 0, "foregroundColor", 0x1, "shape", 0x2, Null]
    //     0x6eb880: ldr             x4, [x4, #0x338]
    // 0x6eb884: r0 = styleFrom()
    //     0x6eb884: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6eb888: ldur            x2, [fp, #-0x28]
    // 0x6eb88c: r1 = Function '<anonymous closure>':.
    //     0x6eb88c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a3e8] AnonymousClosure: (0x6ebd7c), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildAgencyCard (0x6eac9c)
    //     0x6eb890: ldr             x1, [x1, #0x3e8]
    // 0x6eb894: stur            x0, [fp, #-8]
    // 0x6eb898: r0 = AllocateClosure()
    //     0x6eb898: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6eb89c: stur            x0, [fp, #-0x10]
    // 0x6eb8a0: r0 = _ElevatedButtonWithIcon()
    //     0x6eb8a0: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x6eb8a4: mov             x1, x0
    // 0x6eb8a8: ldur            x5, [fp, #-0x10]
    // 0x6eb8ac: ldur            x6, [fp, #-8]
    // 0x6eb8b0: r2 = Instance_Icon
    //     0x6eb8b0: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a3f0] Obj!Icon@a1e3f1
    //     0x6eb8b4: ldr             x2, [x2, #0x3f0]
    // 0x6eb8b8: r3 = Instance_Text
    //     0x6eb8b8: add             x3, PP, #0x18, lsl #12  ; [pp+0x18ec8] Obj!Text@a1bbd1
    //     0x6eb8bc: ldr             x3, [x3, #0xec8]
    // 0x6eb8c0: stur            x0, [fp, #-8]
    // 0x6eb8c4: r0 = _ElevatedButtonWithIcon()
    //     0x6eb8c4: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x6eb8c8: r1 = <FlexParentData>
    //     0x6eb8c8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6eb8cc: ldr             x1, [x1, #0x340]
    // 0x6eb8d0: r0 = Expanded()
    //     0x6eb8d0: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6eb8d4: mov             x3, x0
    // 0x6eb8d8: r0 = 1
    //     0x6eb8d8: mov             x0, #1
    // 0x6eb8dc: stur            x3, [fp, #-0x10]
    // 0x6eb8e0: StoreField: r3->field_13 = r0
    //     0x6eb8e0: stur            x0, [x3, #0x13]
    // 0x6eb8e4: r0 = Instance_FlexFit
    //     0x6eb8e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6eb8e8: ldr             x0, [x0, #0x348]
    // 0x6eb8ec: StoreField: r3->field_1b = r0
    //     0x6eb8ec: stur            w0, [x3, #0x1b]
    // 0x6eb8f0: ldur            x0, [fp, #-8]
    // 0x6eb8f4: StoreField: r3->field_b = r0
    //     0x6eb8f4: stur            w0, [x3, #0xb]
    // 0x6eb8f8: r1 = Null
    //     0x6eb8f8: mov             x1, NULL
    // 0x6eb8fc: r2 = 2
    //     0x6eb8fc: mov             x2, #2
    // 0x6eb900: r0 = AllocateArray()
    //     0x6eb900: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eb904: mov             x2, x0
    // 0x6eb908: ldur            x0, [fp, #-0x10]
    // 0x6eb90c: stur            x2, [fp, #-8]
    // 0x6eb910: StoreField: r2->field_f = r0
    //     0x6eb910: stur            w0, [x2, #0xf]
    // 0x6eb914: r1 = <Widget>
    //     0x6eb914: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6eb918: r0 = AllocateGrowableArray()
    //     0x6eb918: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eb91c: mov             x1, x0
    // 0x6eb920: ldur            x0, [fp, #-8]
    // 0x6eb924: stur            x1, [fp, #-0x10]
    // 0x6eb928: StoreField: r1->field_f = r0
    //     0x6eb928: stur            w0, [x1, #0xf]
    // 0x6eb92c: r0 = 2
    //     0x6eb92c: mov             x0, #2
    // 0x6eb930: StoreField: r1->field_b = r0
    //     0x6eb930: stur            w0, [x1, #0xb]
    // 0x6eb934: r0 = Row()
    //     0x6eb934: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6eb938: mov             x2, x0
    // 0x6eb93c: r0 = Instance_Axis
    //     0x6eb93c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6eb940: stur            x2, [fp, #-8]
    // 0x6eb944: StoreField: r2->field_f = r0
    //     0x6eb944: stur            w0, [x2, #0xf]
    // 0x6eb948: r0 = Instance_MainAxisAlignment
    //     0x6eb948: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eb94c: ldr             x0, [x0, #0x230]
    // 0x6eb950: StoreField: r2->field_13 = r0
    //     0x6eb950: stur            w0, [x2, #0x13]
    // 0x6eb954: r3 = Instance_MainAxisSize
    //     0x6eb954: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eb958: ldr             x3, [x3, #0x330]
    // 0x6eb95c: ArrayStore: r2[0] = r3  ; List_4
    //     0x6eb95c: stur            w3, [x2, #0x17]
    // 0x6eb960: r1 = Instance_CrossAxisAlignment
    //     0x6eb960: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6eb964: ldr             x1, [x1, #0x338]
    // 0x6eb968: StoreField: r2->field_1b = r1
    //     0x6eb968: stur            w1, [x2, #0x1b]
    // 0x6eb96c: r4 = Instance_VerticalDirection
    //     0x6eb96c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eb970: ldr             x4, [x4, #0x340]
    // 0x6eb974: StoreField: r2->field_23 = r4
    //     0x6eb974: stur            w4, [x2, #0x23]
    // 0x6eb978: r5 = Instance_Clip
    //     0x6eb978: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eb97c: ldr             x5, [x5, #0x348]
    // 0x6eb980: StoreField: r2->field_2b = r5
    //     0x6eb980: stur            w5, [x2, #0x2b]
    // 0x6eb984: StoreField: r2->field_2f = rZR
    //     0x6eb984: stur            xzr, [x2, #0x2f]
    // 0x6eb988: ldur            x1, [fp, #-0x10]
    // 0x6eb98c: StoreField: r2->field_b = r1
    //     0x6eb98c: stur            w1, [x2, #0xb]
    // 0x6eb990: ldur            x6, [fp, #-0x38]
    // 0x6eb994: LoadField: r1 = r6->field_b
    //     0x6eb994: ldur            w1, [x6, #0xb]
    // 0x6eb998: LoadField: r7 = r6->field_f
    //     0x6eb998: ldur            w7, [x6, #0xf]
    // 0x6eb99c: DecompressPointer r7
    //     0x6eb99c: add             x7, x7, HEAP, lsl #32
    // 0x6eb9a0: LoadField: r8 = r7->field_b
    //     0x6eb9a0: ldur            w8, [x7, #0xb]
    // 0x6eb9a4: r7 = LoadInt32Instr(r1)
    //     0x6eb9a4: sbfx            x7, x1, #1, #0x1f
    // 0x6eb9a8: stur            x7, [fp, #-0x58]
    // 0x6eb9ac: r1 = LoadInt32Instr(r8)
    //     0x6eb9ac: sbfx            x1, x8, #1, #0x1f
    // 0x6eb9b0: cmp             x7, x1
    // 0x6eb9b4: b.ne            #0x6eb9c0
    // 0x6eb9b8: mov             x1, x6
    // 0x6eb9bc: r0 = _growToNextCapacity()
    //     0x6eb9bc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6eb9c0: ldur            x4, [fp, #-0x18]
    // 0x6eb9c4: ldur            x2, [fp, #-0x38]
    // 0x6eb9c8: ldur            x3, [fp, #-0x58]
    // 0x6eb9cc: add             x0, x3, #1
    // 0x6eb9d0: lsl             x1, x0, #1
    // 0x6eb9d4: StoreField: r2->field_b = r1
    //     0x6eb9d4: stur            w1, [x2, #0xb]
    // 0x6eb9d8: LoadField: r1 = r2->field_f
    //     0x6eb9d8: ldur            w1, [x2, #0xf]
    // 0x6eb9dc: DecompressPointer r1
    //     0x6eb9dc: add             x1, x1, HEAP, lsl #32
    // 0x6eb9e0: ldur            x0, [fp, #-8]
    // 0x6eb9e4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6eb9e4: add             x25, x1, x3, lsl #2
    //     0x6eb9e8: add             x25, x25, #0xf
    //     0x6eb9ec: str             w0, [x25]
    //     0x6eb9f0: tbz             w0, #0, #0x6eba0c
    //     0x6eb9f4: ldurb           w16, [x1, #-1]
    //     0x6eb9f8: ldurb           w17, [x0, #-1]
    //     0x6eb9fc: and             x16, x17, x16, lsr #2
    //     0x6eba00: tst             x16, HEAP, lsr #32
    //     0x6eba04: b.eq            #0x6eba0c
    //     0x6eba08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eba0c: r0 = Column()
    //     0x6eba0c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6eba10: mov             x1, x0
    // 0x6eba14: r0 = Instance_Axis
    //     0x6eba14: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6eba18: stur            x1, [fp, #-8]
    // 0x6eba1c: StoreField: r1->field_f = r0
    //     0x6eba1c: stur            w0, [x1, #0xf]
    // 0x6eba20: r0 = Instance_MainAxisAlignment
    //     0x6eba20: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6eba24: ldr             x0, [x0, #0x230]
    // 0x6eba28: StoreField: r1->field_13 = r0
    //     0x6eba28: stur            w0, [x1, #0x13]
    // 0x6eba2c: r0 = Instance_MainAxisSize
    //     0x6eba2c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6eba30: ldr             x0, [x0, #0x330]
    // 0x6eba34: ArrayStore: r1[0] = r0  ; List_4
    //     0x6eba34: stur            w0, [x1, #0x17]
    // 0x6eba38: r0 = Instance_CrossAxisAlignment
    //     0x6eba38: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6eba3c: ldr             x0, [x0, #0x238]
    // 0x6eba40: StoreField: r1->field_1b = r0
    //     0x6eba40: stur            w0, [x1, #0x1b]
    // 0x6eba44: r0 = Instance_VerticalDirection
    //     0x6eba44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eba48: ldr             x0, [x0, #0x340]
    // 0x6eba4c: StoreField: r1->field_23 = r0
    //     0x6eba4c: stur            w0, [x1, #0x23]
    // 0x6eba50: r0 = Instance_Clip
    //     0x6eba50: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eba54: ldr             x0, [x0, #0x348]
    // 0x6eba58: StoreField: r1->field_2b = r0
    //     0x6eba58: stur            w0, [x1, #0x2b]
    // 0x6eba5c: StoreField: r1->field_2f = rZR
    //     0x6eba5c: stur            xzr, [x1, #0x2f]
    // 0x6eba60: ldur            x2, [fp, #-0x38]
    // 0x6eba64: StoreField: r1->field_b = r2
    //     0x6eba64: stur            w2, [x1, #0xb]
    // 0x6eba68: r0 = Padding()
    //     0x6eba68: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6eba6c: mov             x1, x0
    // 0x6eba70: r0 = Instance_EdgeInsets
    //     0x6eba70: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6eba74: ldr             x0, [x0, #0x240]
    // 0x6eba78: stur            x1, [fp, #-0x10]
    // 0x6eba7c: StoreField: r1->field_f = r0
    //     0x6eba7c: stur            w0, [x1, #0xf]
    // 0x6eba80: ldur            x0, [fp, #-8]
    // 0x6eba84: StoreField: r1->field_b = r0
    //     0x6eba84: stur            w0, [x1, #0xb]
    // 0x6eba88: r0 = InkWell()
    //     0x6eba88: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x6eba8c: mov             x3, x0
    // 0x6eba90: ldur            x0, [fp, #-0x10]
    // 0x6eba94: stur            x3, [fp, #-8]
    // 0x6eba98: StoreField: r3->field_b = r0
    //     0x6eba98: stur            w0, [x3, #0xb]
    // 0x6eba9c: ldur            x2, [fp, #-0x28]
    // 0x6ebaa0: r1 = Function '<anonymous closure>':.
    //     0x6ebaa0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a3f8] AnonymousClosure: (0x6ebd7c), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildAgencyCard (0x6eac9c)
    //     0x6ebaa4: ldr             x1, [x1, #0x3f8]
    // 0x6ebaa8: r0 = AllocateClosure()
    //     0x6ebaa8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ebaac: mov             x1, x0
    // 0x6ebab0: ldur            x0, [fp, #-8]
    // 0x6ebab4: StoreField: r0->field_f = r1
    //     0x6ebab4: stur            w1, [x0, #0xf]
    // 0x6ebab8: r1 = true
    //     0x6ebab8: add             x1, NULL, #0x20  ; true
    // 0x6ebabc: StoreField: r0->field_47 = r1
    //     0x6ebabc: stur            w1, [x0, #0x47]
    // 0x6ebac0: r2 = Instance_BoxShape
    //     0x6ebac0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ebac4: ldr             x2, [x2, #0x1c8]
    // 0x6ebac8: StoreField: r0->field_4b = r2
    //     0x6ebac8: stur            w2, [x0, #0x4b]
    // 0x6ebacc: ldur            x2, [fp, #-0x18]
    // 0x6ebad0: StoreField: r0->field_53 = r2
    //     0x6ebad0: stur            w2, [x0, #0x53]
    // 0x6ebad4: StoreField: r0->field_73 = r1
    //     0x6ebad4: stur            w1, [x0, #0x73]
    // 0x6ebad8: r2 = false
    //     0x6ebad8: add             x2, NULL, #0x30  ; false
    // 0x6ebadc: StoreField: r0->field_77 = r2
    //     0x6ebadc: stur            w2, [x0, #0x77]
    // 0x6ebae0: StoreField: r0->field_87 = r1
    //     0x6ebae0: stur            w1, [x0, #0x87]
    // 0x6ebae4: StoreField: r0->field_7f = r2
    //     0x6ebae4: stur            w2, [x0, #0x7f]
    // 0x6ebae8: r0 = Material()
    //     0x6ebae8: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x6ebaec: mov             x1, x0
    // 0x6ebaf0: r0 = Instance_MaterialType
    //     0x6ebaf0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x6ebaf4: ldr             x0, [x0, #0xfa0]
    // 0x6ebaf8: stur            x1, [fp, #-0x10]
    // 0x6ebafc: StoreField: r1->field_f = r0
    //     0x6ebafc: stur            w0, [x1, #0xf]
    // 0x6ebb00: ArrayStore: r1[0] = rZR  ; List_8
    //     0x6ebb00: stur            xzr, [x1, #0x17]
    // 0x6ebb04: r0 = Instance_Color
    //     0x6ebb04: add             x0, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x6ebb08: ldr             x0, [x0, #0x860]
    // 0x6ebb0c: StoreField: r1->field_1f = r0
    //     0x6ebb0c: stur            w0, [x1, #0x1f]
    // 0x6ebb10: r0 = true
    //     0x6ebb10: add             x0, NULL, #0x20  ; true
    // 0x6ebb14: StoreField: r1->field_33 = r0
    //     0x6ebb14: stur            w0, [x1, #0x33]
    // 0x6ebb18: r0 = Instance_Clip
    //     0x6ebb18: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ebb1c: ldr             x0, [x0, #0x348]
    // 0x6ebb20: StoreField: r1->field_37 = r0
    //     0x6ebb20: stur            w0, [x1, #0x37]
    // 0x6ebb24: r0 = Instance_Duration
    //     0x6ebb24: add             x0, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x6ebb28: ldr             x0, [x0, #0x2c8]
    // 0x6ebb2c: StoreField: r1->field_3b = r0
    //     0x6ebb2c: stur            w0, [x1, #0x3b]
    // 0x6ebb30: ldur            x0, [fp, #-8]
    // 0x6ebb34: StoreField: r1->field_b = r0
    //     0x6ebb34: stur            w0, [x1, #0xb]
    // 0x6ebb38: r0 = false
    //     0x6ebb38: add             x0, NULL, #0x30  ; false
    // 0x6ebb3c: StoreField: r1->field_13 = r0
    //     0x6ebb3c: stur            w0, [x1, #0x13]
    // 0x6ebb40: r0 = Container()
    //     0x6ebb40: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ebb44: stur            x0, [fp, #-8]
    // 0x6ebb48: r16 = Instance_EdgeInsets
    //     0x6ebb48: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x6ebb4c: ldr             x16, [x16, #0xf18]
    // 0x6ebb50: ldur            lr, [fp, #-0x30]
    // 0x6ebb54: stp             lr, x16, [SP, #8]
    // 0x6ebb58: ldur            x16, [fp, #-0x10]
    // 0x6ebb5c: str             x16, [SP]
    // 0x6ebb60: mov             x1, x0
    // 0x6ebb64: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x6ebb64: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x6ebb68: ldr             x4, [x4, #0x1c0]
    // 0x6ebb6c: r0 = Container()
    //     0x6ebb6c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ebb70: ldur            x0, [fp, #-8]
    // 0x6ebb74: LeaveFrame
    //     0x6ebb74: mov             SP, fp
    //     0x6ebb78: ldp             fp, lr, [SP], #0x10
    // 0x6ebb7c: ret
    //     0x6ebb7c: ret             
    // 0x6ebb80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ebb80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ebb84: b               #0x6eacc4
    // 0x6ebb88: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ebb88: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _buildInfoChip(/* No info */) {
    // ** addr: 0x6ebb8c, size: 0x1e4
    // 0x6ebb8c: EnterFrame
    //     0x6ebb8c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ebb90: mov             fp, SP
    // 0x6ebb94: AllocStack(0x48)
    //     0x6ebb94: sub             SP, SP, #0x48
    // 0x6ebb98: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x6ebb98: stur            x2, [fp, #-8]
    //     0x6ebb9c: stur            x3, [fp, #-0x10]
    // 0x6ebba0: CheckStackOverflow
    //     0x6ebba0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ebba4: cmp             SP, x16
    //     0x6ebba8: b.ls            #0x6ebd68
    // 0x6ebbac: r16 = 0.100000
    //     0x6ebbac: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6ebbb0: ldr             x16, [x16, #0x1f8]
    // 0x6ebbb4: str             x16, [SP]
    // 0x6ebbb8: r1 = Instance_Color
    //     0x6ebbb8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ebbbc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ebbbc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ebbc0: ldr             x4, [x4, #0x198]
    // 0x6ebbc4: r0 = withValues()
    //     0x6ebbc4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ebbc8: stur            x0, [fp, #-0x18]
    // 0x6ebbcc: r0 = Radius()
    //     0x6ebbcc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ebbd0: d0 = 6.000000
    //     0x6ebbd0: fmov            d0, #6.00000000
    // 0x6ebbd4: stur            x0, [fp, #-0x20]
    // 0x6ebbd8: StoreField: r0->field_7 = d0
    //     0x6ebbd8: stur            d0, [x0, #7]
    // 0x6ebbdc: StoreField: r0->field_f = d0
    //     0x6ebbdc: stur            d0, [x0, #0xf]
    // 0x6ebbe0: r0 = BorderRadius()
    //     0x6ebbe0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ebbe4: mov             x1, x0
    // 0x6ebbe8: ldur            x0, [fp, #-0x20]
    // 0x6ebbec: stur            x1, [fp, #-0x28]
    // 0x6ebbf0: StoreField: r1->field_7 = r0
    //     0x6ebbf0: stur            w0, [x1, #7]
    // 0x6ebbf4: StoreField: r1->field_b = r0
    //     0x6ebbf4: stur            w0, [x1, #0xb]
    // 0x6ebbf8: StoreField: r1->field_f = r0
    //     0x6ebbf8: stur            w0, [x1, #0xf]
    // 0x6ebbfc: StoreField: r1->field_13 = r0
    //     0x6ebbfc: stur            w0, [x1, #0x13]
    // 0x6ebc00: r0 = BoxDecoration()
    //     0x6ebc00: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ebc04: mov             x1, x0
    // 0x6ebc08: ldur            x0, [fp, #-0x18]
    // 0x6ebc0c: stur            x1, [fp, #-0x20]
    // 0x6ebc10: StoreField: r1->field_7 = r0
    //     0x6ebc10: stur            w0, [x1, #7]
    // 0x6ebc14: ldur            x0, [fp, #-0x28]
    // 0x6ebc18: StoreField: r1->field_13 = r0
    //     0x6ebc18: stur            w0, [x1, #0x13]
    // 0x6ebc1c: r0 = Instance_BoxShape
    //     0x6ebc1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ebc20: ldr             x0, [x0, #0x1c8]
    // 0x6ebc24: StoreField: r1->field_23 = r0
    //     0x6ebc24: stur            w0, [x1, #0x23]
    // 0x6ebc28: r0 = Icon()
    //     0x6ebc28: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ebc2c: mov             x1, x0
    // 0x6ebc30: ldur            x0, [fp, #-8]
    // 0x6ebc34: stur            x1, [fp, #-0x18]
    // 0x6ebc38: StoreField: r1->field_b = r0
    //     0x6ebc38: stur            w0, [x1, #0xb]
    // 0x6ebc3c: r0 = 14.000000
    //     0x6ebc3c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x6ebc40: ldr             x0, [x0, #0x1c8]
    // 0x6ebc44: StoreField: r1->field_f = r0
    //     0x6ebc44: stur            w0, [x1, #0xf]
    // 0x6ebc48: r0 = Instance_Color
    //     0x6ebc48: add             x0, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x6ebc4c: ldr             x0, [x0, #0x1e8]
    // 0x6ebc50: StoreField: r1->field_23 = r0
    //     0x6ebc50: stur            w0, [x1, #0x23]
    // 0x6ebc54: r0 = Text()
    //     0x6ebc54: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ebc58: mov             x3, x0
    // 0x6ebc5c: ldur            x0, [fp, #-0x10]
    // 0x6ebc60: stur            x3, [fp, #-8]
    // 0x6ebc64: StoreField: r3->field_b = r0
    //     0x6ebc64: stur            w0, [x3, #0xb]
    // 0x6ebc68: r0 = Instance_TextStyle
    //     0x6ebc68: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4f8] Obj!TextStyle@a174b1
    //     0x6ebc6c: ldr             x0, [x0, #0x4f8]
    // 0x6ebc70: StoreField: r3->field_13 = r0
    //     0x6ebc70: stur            w0, [x3, #0x13]
    // 0x6ebc74: r1 = Null
    //     0x6ebc74: mov             x1, NULL
    // 0x6ebc78: r2 = 6
    //     0x6ebc78: mov             x2, #6
    // 0x6ebc7c: r0 = AllocateArray()
    //     0x6ebc7c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ebc80: mov             x2, x0
    // 0x6ebc84: ldur            x0, [fp, #-0x18]
    // 0x6ebc88: stur            x2, [fp, #-0x10]
    // 0x6ebc8c: StoreField: r2->field_f = r0
    //     0x6ebc8c: stur            w0, [x2, #0xf]
    // 0x6ebc90: r16 = Instance_SizedBox
    //     0x6ebc90: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x6ebc94: ldr             x16, [x16, #0xf68]
    // 0x6ebc98: StoreField: r2->field_13 = r16
    //     0x6ebc98: stur            w16, [x2, #0x13]
    // 0x6ebc9c: ldur            x0, [fp, #-8]
    // 0x6ebca0: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ebca0: stur            w0, [x2, #0x17]
    // 0x6ebca4: r1 = <Widget>
    //     0x6ebca4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ebca8: r0 = AllocateGrowableArray()
    //     0x6ebca8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ebcac: mov             x1, x0
    // 0x6ebcb0: ldur            x0, [fp, #-0x10]
    // 0x6ebcb4: stur            x1, [fp, #-8]
    // 0x6ebcb8: StoreField: r1->field_f = r0
    //     0x6ebcb8: stur            w0, [x1, #0xf]
    // 0x6ebcbc: r0 = 6
    //     0x6ebcbc: mov             x0, #6
    // 0x6ebcc0: StoreField: r1->field_b = r0
    //     0x6ebcc0: stur            w0, [x1, #0xb]
    // 0x6ebcc4: r0 = Row()
    //     0x6ebcc4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ebcc8: mov             x1, x0
    // 0x6ebccc: r0 = Instance_Axis
    //     0x6ebccc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ebcd0: stur            x1, [fp, #-0x10]
    // 0x6ebcd4: StoreField: r1->field_f = r0
    //     0x6ebcd4: stur            w0, [x1, #0xf]
    // 0x6ebcd8: r0 = Instance_MainAxisAlignment
    //     0x6ebcd8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ebcdc: ldr             x0, [x0, #0x230]
    // 0x6ebce0: StoreField: r1->field_13 = r0
    //     0x6ebce0: stur            w0, [x1, #0x13]
    // 0x6ebce4: r0 = Instance_MainAxisSize
    //     0x6ebce4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6ebce8: ldr             x0, [x0, #0xb60]
    // 0x6ebcec: ArrayStore: r1[0] = r0  ; List_4
    //     0x6ebcec: stur            w0, [x1, #0x17]
    // 0x6ebcf0: r0 = Instance_CrossAxisAlignment
    //     0x6ebcf0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ebcf4: ldr             x0, [x0, #0x338]
    // 0x6ebcf8: StoreField: r1->field_1b = r0
    //     0x6ebcf8: stur            w0, [x1, #0x1b]
    // 0x6ebcfc: r0 = Instance_VerticalDirection
    //     0x6ebcfc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ebd00: ldr             x0, [x0, #0x340]
    // 0x6ebd04: StoreField: r1->field_23 = r0
    //     0x6ebd04: stur            w0, [x1, #0x23]
    // 0x6ebd08: r0 = Instance_Clip
    //     0x6ebd08: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ebd0c: ldr             x0, [x0, #0x348]
    // 0x6ebd10: StoreField: r1->field_2b = r0
    //     0x6ebd10: stur            w0, [x1, #0x2b]
    // 0x6ebd14: StoreField: r1->field_2f = rZR
    //     0x6ebd14: stur            xzr, [x1, #0x2f]
    // 0x6ebd18: ldur            x0, [fp, #-8]
    // 0x6ebd1c: StoreField: r1->field_b = r0
    //     0x6ebd1c: stur            w0, [x1, #0xb]
    // 0x6ebd20: r0 = Container()
    //     0x6ebd20: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ebd24: stur            x0, [fp, #-8]
    // 0x6ebd28: r16 = Instance_EdgeInsets
    //     0x6ebd28: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a500] Obj!EdgeInsets@a0c381
    //     0x6ebd2c: ldr             x16, [x16, #0x500]
    // 0x6ebd30: r30 = Instance_EdgeInsets
    //     0x6ebd30: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x6ebd34: ldr             lr, [lr, #0x508]
    // 0x6ebd38: stp             lr, x16, [SP, #0x10]
    // 0x6ebd3c: ldur            x16, [fp, #-0x20]
    // 0x6ebd40: ldur            lr, [fp, #-0x10]
    // 0x6ebd44: stp             lr, x16, [SP]
    // 0x6ebd48: mov             x1, x0
    // 0x6ebd4c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x6ebd4c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x6ebd50: ldr             x4, [x4, #0x628]
    // 0x6ebd54: r0 = Container()
    //     0x6ebd54: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ebd58: ldur            x0, [fp, #-8]
    // 0x6ebd5c: LeaveFrame
    //     0x6ebd5c: mov             SP, fp
    //     0x6ebd60: ldp             fp, lr, [SP], #0x10
    // 0x6ebd64: ret
    //     0x6ebd64: ret             
    // 0x6ebd68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ebd68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ebd6c: b               #0x6ebbac
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ebd7c, size: 0x6c
    // 0x6ebd7c: EnterFrame
    //     0x6ebd7c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ebd80: mov             fp, SP
    // 0x6ebd84: AllocStack(0x20)
    //     0x6ebd84: sub             SP, SP, #0x20
    // 0x6ebd88: SetupParameters([dynamic _ /* r0 */])
    //     0x6ebd88: ldr             x0, [fp, #0x10]
    //     0x6ebd8c: ldur            w1, [x0, #0x17]
    //     0x6ebd90: add             x1, x1, HEAP, lsl #32
    // 0x6ebd94: CheckStackOverflow
    //     0x6ebd94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ebd98: cmp             SP, x16
    //     0x6ebd9c: b.ls            #0x6ebde0
    // 0x6ebda0: LoadField: r0 = r1->field_13
    //     0x6ebda0: ldur            w0, [x1, #0x13]
    // 0x6ebda4: DecompressPointer r0
    //     0x6ebda4: add             x0, x0, HEAP, lsl #32
    // 0x6ebda8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ebda8: ldur            w2, [x1, #0x17]
    // 0x6ebdac: DecompressPointer r2
    //     0x6ebdac: add             x2, x2, HEAP, lsl #32
    // 0x6ebdb0: r16 = <Object?>
    //     0x6ebdb0: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6ebdb4: stp             x0, x16, [SP, #0x10]
    // 0x6ebdb8: r16 = "/super-admin/agency"
    //     0x6ebdb8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cd0] "/super-admin/agency"
    //     0x6ebdbc: ldr             x16, [x16, #0xcd0]
    // 0x6ebdc0: stp             x2, x16, [SP]
    // 0x6ebdc4: r4 = const [0x1, 0x3, 0x3, 0x2, arguments, 0x2, null]
    //     0x6ebdc4: add             x4, PP, #0x15, lsl #12  ; [pp+0x15d90] List(7) [0x1, 0x3, 0x3, 0x2, "arguments", 0x2, Null]
    //     0x6ebdc8: ldr             x4, [x4, #0xd90]
    // 0x6ebdcc: r0 = pushNamed()
    //     0x6ebdcc: bl              #0x6ebde8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamed
    // 0x6ebdd0: r0 = Null
    //     0x6ebdd0: mov             x0, NULL
    // 0x6ebdd4: LeaveFrame
    //     0x6ebdd4: mov             SP, fp
    //     0x6ebdd8: ldp             fp, lr, [SP], #0x10
    // 0x6ebddc: ret
    //     0x6ebddc: ret             
    // 0x6ebde0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ebde0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ebde4: b               #0x6ebda0
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x6ebebc, size: 0xf8
    // 0x6ebebc: EnterFrame
    //     0x6ebebc: stp             fp, lr, [SP, #-0x10]!
    //     0x6ebec0: mov             fp, SP
    // 0x6ebec4: AllocStack(0x18)
    //     0x6ebec4: sub             SP, SP, #0x18
    // 0x6ebec8: SetupParameters([dynamic _ /* r0 */])
    //     0x6ebec8: ldr             x0, [fp, #0x18]
    //     0x6ebecc: ldur            w1, [x0, #0x17]
    //     0x6ebed0: add             x1, x1, HEAP, lsl #32
    //     0x6ebed4: stur            x1, [fp, #-8]
    // 0x6ebed8: CheckStackOverflow
    //     0x6ebed8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ebedc: cmp             SP, x16
    //     0x6ebee0: b.ls            #0x6ebfac
    // 0x6ebee4: r16 = "edit"
    //     0x6ebee4: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a400] "edit"
    //     0x6ebee8: ldr             x16, [x16, #0x400]
    // 0x6ebeec: ldr             lr, [fp, #0x10]
    // 0x6ebef0: stp             lr, x16, [SP]
    // 0x6ebef4: r0 = ==()
    //     0x6ebef4: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x6ebef8: tbnz            w0, #4, #0x6ebf20
    // 0x6ebefc: ldur            x0, [fp, #-8]
    // 0x6ebf00: LoadField: r1 = r0->field_f
    //     0x6ebf00: ldur            w1, [x0, #0xf]
    // 0x6ebf04: DecompressPointer r1
    //     0x6ebf04: add             x1, x1, HEAP, lsl #32
    // 0x6ebf08: LoadField: r2 = r0->field_13
    //     0x6ebf08: ldur            w2, [x0, #0x13]
    // 0x6ebf0c: DecompressPointer r2
    //     0x6ebf0c: add             x2, x2, HEAP, lsl #32
    // 0x6ebf10: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6ebf10: ldur            w3, [x0, #0x17]
    // 0x6ebf14: DecompressPointer r3
    //     0x6ebf14: add             x3, x3, HEAP, lsl #32
    // 0x6ebf18: r0 = _showAgencyDialog()
    //     0x6ebf18: bl              #0x6ec3c8  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showAgencyDialog
    // 0x6ebf1c: b               #0x6ebf9c
    // 0x6ebf20: ldur            x0, [fp, #-8]
    // 0x6ebf24: r16 = "toggle"
    //     0x6ebf24: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a408] "toggle"
    //     0x6ebf28: ldr             x16, [x16, #0x408]
    // 0x6ebf2c: ldr             lr, [fp, #0x10]
    // 0x6ebf30: stp             lr, x16, [SP]
    // 0x6ebf34: r0 = ==()
    //     0x6ebf34: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x6ebf38: tbnz            w0, #4, #0x6ebf60
    // 0x6ebf3c: ldur            x0, [fp, #-8]
    // 0x6ebf40: LoadField: r1 = r0->field_f
    //     0x6ebf40: ldur            w1, [x0, #0xf]
    // 0x6ebf44: DecompressPointer r1
    //     0x6ebf44: add             x1, x1, HEAP, lsl #32
    // 0x6ebf48: LoadField: r2 = r0->field_1b
    //     0x6ebf48: ldur            w2, [x0, #0x1b]
    // 0x6ebf4c: DecompressPointer r2
    //     0x6ebf4c: add             x2, x2, HEAP, lsl #32
    // 0x6ebf50: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6ebf50: ldur            w3, [x0, #0x17]
    // 0x6ebf54: DecompressPointer r3
    //     0x6ebf54: add             x3, x3, HEAP, lsl #32
    // 0x6ebf58: r0 = _toggleAgencyStatus()
    //     0x6ebf58: bl              #0x6ec344  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_toggleAgencyStatus
    // 0x6ebf5c: b               #0x6ebf9c
    // 0x6ebf60: ldur            x0, [fp, #-8]
    // 0x6ebf64: r16 = "delete"
    //     0x6ebf64: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a410] "delete"
    //     0x6ebf68: ldr             x16, [x16, #0x410]
    // 0x6ebf6c: ldr             lr, [fp, #0x10]
    // 0x6ebf70: stp             lr, x16, [SP]
    // 0x6ebf74: r0 = ==()
    //     0x6ebf74: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x6ebf78: tbnz            w0, #4, #0x6ebf9c
    // 0x6ebf7c: ldur            x0, [fp, #-8]
    // 0x6ebf80: LoadField: r1 = r0->field_f
    //     0x6ebf80: ldur            w1, [x0, #0xf]
    // 0x6ebf84: DecompressPointer r1
    //     0x6ebf84: add             x1, x1, HEAP, lsl #32
    // 0x6ebf88: LoadField: r2 = r0->field_13
    //     0x6ebf88: ldur            w2, [x0, #0x13]
    // 0x6ebf8c: DecompressPointer r2
    //     0x6ebf8c: add             x2, x2, HEAP, lsl #32
    // 0x6ebf90: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6ebf90: ldur            w3, [x0, #0x17]
    // 0x6ebf94: DecompressPointer r3
    //     0x6ebf94: add             x3, x3, HEAP, lsl #32
    // 0x6ebf98: r0 = _showDeleteDialog()
    //     0x6ebf98: bl              #0x6ebfb4  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showDeleteDialog
    // 0x6ebf9c: r0 = Null
    //     0x6ebf9c: mov             x0, NULL
    // 0x6ebfa0: LeaveFrame
    //     0x6ebfa0: mov             SP, fp
    //     0x6ebfa4: ldp             fp, lr, [SP], #0x10
    // 0x6ebfa8: ret
    //     0x6ebfa8: ret             
    // 0x6ebfac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ebfac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ebfb0: b               #0x6ebee4
  }
  _ _showDeleteDialog(/* No info */) {
    // ** addr: 0x6ebfb4, size: 0x70
    // 0x6ebfb4: EnterFrame
    //     0x6ebfb4: stp             fp, lr, [SP, #-0x10]!
    //     0x6ebfb8: mov             fp, SP
    // 0x6ebfbc: AllocStack(0x28)
    //     0x6ebfbc: sub             SP, SP, #0x28
    // 0x6ebfc0: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x6ebfc0: stur            x2, [fp, #-8]
    //     0x6ebfc4: stur            x3, [fp, #-0x10]
    // 0x6ebfc8: CheckStackOverflow
    //     0x6ebfc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ebfcc: cmp             SP, x16
    //     0x6ebfd0: b.ls            #0x6ec01c
    // 0x6ebfd4: r1 = 1
    //     0x6ebfd4: mov             x1, #1
    // 0x6ebfd8: r0 = AllocateContext()
    //     0x6ebfd8: bl              #0x927010  ; AllocateContextStub
    // 0x6ebfdc: mov             x1, x0
    // 0x6ebfe0: ldur            x0, [fp, #-0x10]
    // 0x6ebfe4: StoreField: r1->field_f = r0
    //     0x6ebfe4: stur            w0, [x1, #0xf]
    // 0x6ebfe8: mov             x2, x1
    // 0x6ebfec: r1 = Function '<anonymous closure>':.
    //     0x6ebfec: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a418] AnonymousClosure: (0x6ec024), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showDeleteDialog (0x6ebfb4)
    //     0x6ebff0: ldr             x1, [x1, #0x418]
    // 0x6ebff4: r0 = AllocateClosure()
    //     0x6ebff4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ebff8: stp             x0, NULL, [SP, #8]
    // 0x6ebffc: ldur            x16, [fp, #-8]
    // 0x6ec000: str             x16, [SP]
    // 0x6ec004: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6ec004: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6ec008: r0 = showDialog()
    //     0x6ec008: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6ec00c: r0 = Null
    //     0x6ec00c: mov             x0, NULL
    // 0x6ec010: LeaveFrame
    //     0x6ec010: mov             SP, fp
    //     0x6ec014: ldp             fp, lr, [SP], #0x10
    // 0x6ec018: ret
    //     0x6ec018: ret             
    // 0x6ec01c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ec01c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ec020: b               #0x6ebfd4
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6ec024, size: 0x20c
    // 0x6ec024: EnterFrame
    //     0x6ec024: stp             fp, lr, [SP, #-0x10]!
    //     0x6ec028: mov             fp, SP
    // 0x6ec02c: AllocStack(0x30)
    //     0x6ec02c: sub             SP, SP, #0x30
    // 0x6ec030: SetupParameters([dynamic _ /* r0 */])
    //     0x6ec030: ldr             x0, [fp, #0x18]
    //     0x6ec034: ldur            w1, [x0, #0x17]
    //     0x6ec038: add             x1, x1, HEAP, lsl #32
    //     0x6ec03c: stur            x1, [fp, #-8]
    // 0x6ec040: CheckStackOverflow
    //     0x6ec040: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ec044: cmp             SP, x16
    //     0x6ec048: b.ls            #0x6ec228
    // 0x6ec04c: r1 = 1
    //     0x6ec04c: mov             x1, #1
    // 0x6ec050: r0 = AllocateContext()
    //     0x6ec050: bl              #0x927010  ; AllocateContextStub
    // 0x6ec054: mov             x1, x0
    // 0x6ec058: ldur            x0, [fp, #-8]
    // 0x6ec05c: stur            x1, [fp, #-0x10]
    // 0x6ec060: StoreField: r1->field_b = r0
    //     0x6ec060: stur            w0, [x1, #0xb]
    // 0x6ec064: ldr             x2, [fp, #0x10]
    // 0x6ec068: StoreField: r1->field_f = r2
    //     0x6ec068: stur            w2, [x1, #0xf]
    // 0x6ec06c: r0 = Radius()
    //     0x6ec06c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ec070: d0 = 16.000000
    //     0x6ec070: fmov            d0, #16.00000000
    // 0x6ec074: stur            x0, [fp, #-0x18]
    // 0x6ec078: StoreField: r0->field_7 = d0
    //     0x6ec078: stur            d0, [x0, #7]
    // 0x6ec07c: StoreField: r0->field_f = d0
    //     0x6ec07c: stur            d0, [x0, #0xf]
    // 0x6ec080: r0 = BorderRadius()
    //     0x6ec080: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ec084: mov             x1, x0
    // 0x6ec088: ldur            x0, [fp, #-0x18]
    // 0x6ec08c: stur            x1, [fp, #-0x20]
    // 0x6ec090: StoreField: r1->field_7 = r0
    //     0x6ec090: stur            w0, [x1, #7]
    // 0x6ec094: StoreField: r1->field_b = r0
    //     0x6ec094: stur            w0, [x1, #0xb]
    // 0x6ec098: StoreField: r1->field_f = r0
    //     0x6ec098: stur            w0, [x1, #0xf]
    // 0x6ec09c: StoreField: r1->field_13 = r0
    //     0x6ec09c: stur            w0, [x1, #0x13]
    // 0x6ec0a0: r0 = RoundedRectangleBorder()
    //     0x6ec0a0: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6ec0a4: mov             x3, x0
    // 0x6ec0a8: ldur            x0, [fp, #-0x20]
    // 0x6ec0ac: stur            x3, [fp, #-0x18]
    // 0x6ec0b0: StoreField: r3->field_b = r0
    //     0x6ec0b0: stur            w0, [x3, #0xb]
    // 0x6ec0b4: r0 = Instance_BorderSide
    //     0x6ec0b4: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6ec0b8: ldr             x0, [x0, #0xcb8]
    // 0x6ec0bc: StoreField: r3->field_7 = r0
    //     0x6ec0bc: stur            w0, [x3, #7]
    // 0x6ec0c0: r1 = Null
    //     0x6ec0c0: mov             x1, NULL
    // 0x6ec0c4: r2 = 6
    //     0x6ec0c4: mov             x2, #6
    // 0x6ec0c8: r0 = AllocateArray()
    //     0x6ec0c8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ec0cc: r16 = "\""
    //     0x6ec0cc: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x6ec0d0: ldr             x16, [x16, #0x40]
    // 0x6ec0d4: StoreField: r0->field_f = r16
    //     0x6ec0d4: stur            w16, [x0, #0xf]
    // 0x6ec0d8: ldur            x1, [fp, #-8]
    // 0x6ec0dc: LoadField: r2 = r1->field_f
    //     0x6ec0dc: ldur            w2, [x1, #0xf]
    // 0x6ec0e0: DecompressPointer r2
    //     0x6ec0e0: add             x2, x2, HEAP, lsl #32
    // 0x6ec0e4: LoadField: r1 = r2->field_b
    //     0x6ec0e4: ldur            w1, [x2, #0xb]
    // 0x6ec0e8: DecompressPointer r1
    //     0x6ec0e8: add             x1, x1, HEAP, lsl #32
    // 0x6ec0ec: StoreField: r0->field_13 = r1
    //     0x6ec0ec: stur            w1, [x0, #0x13]
    // 0x6ec0f0: r16 = "\" acentasını silmek istediğinize emin misiniz\?\n\nBu işlem geri alınamaz ve acentaya ait tüm veriler silinecektir."
    //     0x6ec0f0: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a420] "\" acentasını silmek istediğinize emin misiniz\?\n\nBu işlem geri alınamaz ve acentaya ait tüm veriler silinecektir."
    //     0x6ec0f4: ldr             x16, [x16, #0x420]
    // 0x6ec0f8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6ec0f8: stur            w16, [x0, #0x17]
    // 0x6ec0fc: str             x0, [SP]
    // 0x6ec100: r0 = _interpolate()
    //     0x6ec100: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6ec104: stur            x0, [fp, #-8]
    // 0x6ec108: r0 = Text()
    //     0x6ec108: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ec10c: mov             x3, x0
    // 0x6ec110: ldur            x0, [fp, #-8]
    // 0x6ec114: stur            x3, [fp, #-0x20]
    // 0x6ec118: StoreField: r3->field_b = r0
    //     0x6ec118: stur            w0, [x3, #0xb]
    // 0x6ec11c: r0 = Instance_TextStyle
    //     0x6ec11c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x6ec120: ldr             x0, [x0, #0x538]
    // 0x6ec124: StoreField: r3->field_13 = r0
    //     0x6ec124: stur            w0, [x3, #0x13]
    // 0x6ec128: ldur            x2, [fp, #-0x10]
    // 0x6ec12c: r1 = Function '<anonymous closure>':.
    //     0x6ec12c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a428] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6ec130: ldr             x1, [x1, #0x428]
    // 0x6ec134: r0 = AllocateClosure()
    //     0x6ec134: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ec138: stur            x0, [fp, #-8]
    // 0x6ec13c: r0 = TextButton()
    //     0x6ec13c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6ec140: mov             x3, x0
    // 0x6ec144: ldur            x0, [fp, #-8]
    // 0x6ec148: stur            x3, [fp, #-0x28]
    // 0x6ec14c: StoreField: r3->field_b = r0
    //     0x6ec14c: stur            w0, [x3, #0xb]
    // 0x6ec150: r0 = false
    //     0x6ec150: add             x0, NULL, #0x30  ; false
    // 0x6ec154: StoreField: r3->field_27 = r0
    //     0x6ec154: stur            w0, [x3, #0x27]
    // 0x6ec158: r1 = true
    //     0x6ec158: add             x1, NULL, #0x20  ; true
    // 0x6ec15c: StoreField: r3->field_2f = r1
    //     0x6ec15c: stur            w1, [x3, #0x2f]
    // 0x6ec160: r1 = Instance_Text
    //     0x6ec160: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x6ec164: ldr             x1, [x1, #0x198]
    // 0x6ec168: StoreField: r3->field_37 = r1
    //     0x6ec168: stur            w1, [x3, #0x37]
    // 0x6ec16c: ldur            x2, [fp, #-0x10]
    // 0x6ec170: r1 = Function '<anonymous closure>':.
    //     0x6ec170: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a430] AnonymousClosure: (0x6ec230), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showDeleteDialog (0x6ebfb4)
    //     0x6ec174: ldr             x1, [x1, #0x430]
    // 0x6ec178: r0 = AllocateClosure()
    //     0x6ec178: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ec17c: r1 = <AgencyProvider>
    //     0x6ec17c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6ec180: ldr             x1, [x1, #0xb60]
    // 0x6ec184: stur            x0, [fp, #-8]
    // 0x6ec188: r0 = Consumer()
    //     0x6ec188: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6ec18c: mov             x3, x0
    // 0x6ec190: ldur            x0, [fp, #-8]
    // 0x6ec194: stur            x3, [fp, #-0x10]
    // 0x6ec198: StoreField: r3->field_13 = r0
    //     0x6ec198: stur            w0, [x3, #0x13]
    // 0x6ec19c: r1 = Null
    //     0x6ec19c: mov             x1, NULL
    // 0x6ec1a0: r2 = 4
    //     0x6ec1a0: mov             x2, #4
    // 0x6ec1a4: r0 = AllocateArray()
    //     0x6ec1a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ec1a8: mov             x2, x0
    // 0x6ec1ac: ldur            x0, [fp, #-0x28]
    // 0x6ec1b0: stur            x2, [fp, #-8]
    // 0x6ec1b4: StoreField: r2->field_f = r0
    //     0x6ec1b4: stur            w0, [x2, #0xf]
    // 0x6ec1b8: ldur            x0, [fp, #-0x10]
    // 0x6ec1bc: StoreField: r2->field_13 = r0
    //     0x6ec1bc: stur            w0, [x2, #0x13]
    // 0x6ec1c0: r1 = <Widget>
    //     0x6ec1c0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ec1c4: r0 = AllocateGrowableArray()
    //     0x6ec1c4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ec1c8: mov             x1, x0
    // 0x6ec1cc: ldur            x0, [fp, #-8]
    // 0x6ec1d0: stur            x1, [fp, #-0x10]
    // 0x6ec1d4: StoreField: r1->field_f = r0
    //     0x6ec1d4: stur            w0, [x1, #0xf]
    // 0x6ec1d8: r0 = 4
    //     0x6ec1d8: mov             x0, #4
    // 0x6ec1dc: StoreField: r1->field_b = r0
    //     0x6ec1dc: stur            w0, [x1, #0xb]
    // 0x6ec1e0: r0 = AlertDialog()
    //     0x6ec1e0: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6ec1e4: r1 = Instance_Text
    //     0x6ec1e4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a438] Obj!Text@a1ba41
    //     0x6ec1e8: ldr             x1, [x1, #0x438]
    // 0x6ec1ec: StoreField: r0->field_f = r1
    //     0x6ec1ec: stur            w1, [x0, #0xf]
    // 0x6ec1f0: ldur            x1, [fp, #-0x20]
    // 0x6ec1f4: StoreField: r0->field_1b = r1
    //     0x6ec1f4: stur            w1, [x0, #0x1b]
    // 0x6ec1f8: ldur            x1, [fp, #-0x10]
    // 0x6ec1fc: StoreField: r0->field_27 = r1
    //     0x6ec1fc: stur            w1, [x0, #0x27]
    // 0x6ec200: r1 = Instance_Color
    //     0x6ec200: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6ec204: ldr             x1, [x1, #0x1c0]
    // 0x6ec208: StoreField: r0->field_43 = r1
    //     0x6ec208: stur            w1, [x0, #0x43]
    // 0x6ec20c: ldur            x1, [fp, #-0x18]
    // 0x6ec210: StoreField: r0->field_5f = r1
    //     0x6ec210: stur            w1, [x0, #0x5f]
    // 0x6ec214: r1 = false
    //     0x6ec214: add             x1, NULL, #0x30  ; false
    // 0x6ec218: StoreField: r0->field_6b = r1
    //     0x6ec218: stur            w1, [x0, #0x6b]
    // 0x6ec21c: LeaveFrame
    //     0x6ec21c: mov             SP, fp
    //     0x6ec220: ldp             fp, lr, [SP], #0x10
    // 0x6ec224: ret
    //     0x6ec224: ret             
    // 0x6ec228: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ec228: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ec22c: b               #0x6ec04c
  }
  [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6ec230, size: 0x114
    // 0x6ec230: EnterFrame
    //     0x6ec230: stp             fp, lr, [SP, #-0x10]!
    //     0x6ec234: mov             fp, SP
    // 0x6ec238: AllocStack(0x28)
    //     0x6ec238: sub             SP, SP, #0x28
    // 0x6ec23c: SetupParameters([dynamic _ /* r0 */])
    //     0x6ec23c: ldr             x0, [fp, #0x28]
    //     0x6ec240: ldur            w1, [x0, #0x17]
    //     0x6ec244: add             x1, x1, HEAP, lsl #32
    //     0x6ec248: stur            x1, [fp, #-8]
    // 0x6ec24c: CheckStackOverflow
    //     0x6ec24c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ec250: cmp             SP, x16
    //     0x6ec254: b.ls            #0x6ec33c
    // 0x6ec258: r1 = 1
    //     0x6ec258: mov             x1, #1
    // 0x6ec25c: r0 = AllocateContext()
    //     0x6ec25c: bl              #0x927010  ; AllocateContextStub
    // 0x6ec260: mov             x3, x0
    // 0x6ec264: ldur            x0, [fp, #-8]
    // 0x6ec268: stur            x3, [fp, #-0x10]
    // 0x6ec26c: StoreField: r3->field_b = r0
    //     0x6ec26c: stur            w0, [x3, #0xb]
    // 0x6ec270: ldr             x0, [fp, #0x18]
    // 0x6ec274: StoreField: r3->field_f = r0
    //     0x6ec274: stur            w0, [x3, #0xf]
    // 0x6ec278: LoadField: r1 = r0->field_2b
    //     0x6ec278: ldur            w1, [x0, #0x2b]
    // 0x6ec27c: DecompressPointer r1
    //     0x6ec27c: add             x1, x1, HEAP, lsl #32
    // 0x6ec280: tbnz            w1, #4, #0x6ec290
    // 0x6ec284: mov             x0, x3
    // 0x6ec288: r1 = Null
    //     0x6ec288: mov             x1, NULL
    // 0x6ec28c: b               #0x6ec2a8
    // 0x6ec290: mov             x2, x3
    // 0x6ec294: r1 = Function '<anonymous closure>':.
    //     0x6ec294: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a440] AnonymousClosure: (0x6d66c0), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_confirmDelete (0x6d63a4)
    //     0x6ec298: ldr             x1, [x1, #0x440]
    // 0x6ec29c: r0 = AllocateClosure()
    //     0x6ec29c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ec2a0: mov             x1, x0
    // 0x6ec2a4: ldur            x0, [fp, #-0x10]
    // 0x6ec2a8: stur            x1, [fp, #-8]
    // 0x6ec2ac: r16 = Instance_MaterialColor
    //     0x6ec2ac: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x6ec2b0: ldr             x16, [x16, #0xb90]
    // 0x6ec2b4: r30 = Instance_Color
    //     0x6ec2b4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ec2b8: stp             lr, x16, [SP]
    // 0x6ec2bc: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6ec2bc: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6ec2c0: ldr             x4, [x4, #0x1a8]
    // 0x6ec2c4: r0 = styleFrom()
    //     0x6ec2c4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6ec2c8: mov             x1, x0
    // 0x6ec2cc: ldur            x0, [fp, #-0x10]
    // 0x6ec2d0: stur            x1, [fp, #-0x18]
    // 0x6ec2d4: LoadField: r2 = r0->field_f
    //     0x6ec2d4: ldur            w2, [x0, #0xf]
    // 0x6ec2d8: DecompressPointer r2
    //     0x6ec2d8: add             x2, x2, HEAP, lsl #32
    // 0x6ec2dc: LoadField: r0 = r2->field_2b
    //     0x6ec2dc: ldur            w0, [x2, #0x2b]
    // 0x6ec2e0: DecompressPointer r0
    //     0x6ec2e0: add             x0, x0, HEAP, lsl #32
    // 0x6ec2e4: tbnz            w0, #4, #0x6ec2f4
    // 0x6ec2e8: r2 = Instance_SizedBox
    //     0x6ec2e8: add             x2, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6ec2ec: ldr             x2, [x2, #0x1b0]
    // 0x6ec2f0: b               #0x6ec2fc
    // 0x6ec2f4: r2 = Instance_Text
    //     0x6ec2f4: add             x2, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x6ec2f8: ldr             x2, [x2, #0x7e0]
    // 0x6ec2fc: ldur            x0, [fp, #-8]
    // 0x6ec300: stur            x2, [fp, #-0x10]
    // 0x6ec304: r0 = ElevatedButton()
    //     0x6ec304: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6ec308: ldur            x1, [fp, #-8]
    // 0x6ec30c: StoreField: r0->field_b = r1
    //     0x6ec30c: stur            w1, [x0, #0xb]
    // 0x6ec310: ldur            x1, [fp, #-0x18]
    // 0x6ec314: StoreField: r0->field_1b = r1
    //     0x6ec314: stur            w1, [x0, #0x1b]
    // 0x6ec318: r1 = false
    //     0x6ec318: add             x1, NULL, #0x30  ; false
    // 0x6ec31c: StoreField: r0->field_27 = r1
    //     0x6ec31c: stur            w1, [x0, #0x27]
    // 0x6ec320: r1 = true
    //     0x6ec320: add             x1, NULL, #0x20  ; true
    // 0x6ec324: StoreField: r0->field_2f = r1
    //     0x6ec324: stur            w1, [x0, #0x2f]
    // 0x6ec328: ldur            x1, [fp, #-0x10]
    // 0x6ec32c: StoreField: r0->field_37 = r1
    //     0x6ec32c: stur            w1, [x0, #0x37]
    // 0x6ec330: LeaveFrame
    //     0x6ec330: mov             SP, fp
    //     0x6ec334: ldp             fp, lr, [SP], #0x10
    // 0x6ec338: ret
    //     0x6ec338: ret             
    // 0x6ec33c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ec33c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ec340: b               #0x6ec258
  }
  _ _toggleAgencyStatus(/* No info */) async {
    // ** addr: 0x6ec344, size: 0x84
    // 0x6ec344: EnterFrame
    //     0x6ec344: stp             fp, lr, [SP, #-0x10]!
    //     0x6ec348: mov             fp, SP
    // 0x6ec34c: AllocStack(0x28)
    //     0x6ec34c: sub             SP, SP, #0x28
    // 0x6ec350: SetupParameters(_SuperAdminDashboardState this /* r1 => r2, fp-0x20 */, dynamic _ /* r2 => r1, fp-0x18 */)
    //     0x6ec350: stur            NULL, [fp, #-8]
    //     0x6ec354: stur            x1, [fp, #-0x10]
    //     0x6ec358: mov             x16, x2
    //     0x6ec35c: mov             x2, x1
    //     0x6ec360: mov             x1, x16
    //     0x6ec364: stur            x1, [fp, #-0x18]
    //     0x6ec368: stur            x3, [fp, #-0x20]
    // 0x6ec36c: CheckStackOverflow
    //     0x6ec36c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ec370: cmp             SP, x16
    //     0x6ec374: b.ls            #0x6ec3c0
    // 0x6ec378: InitAsync() -> Future<void?>
    //     0x6ec378: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6ec37c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ec380: ldur            x0, [fp, #-0x20]
    // 0x6ec384: LoadField: r2 = r0->field_7
    //     0x6ec384: ldur            w2, [x0, #7]
    // 0x6ec388: DecompressPointer r2
    //     0x6ec388: add             x2, x2, HEAP, lsl #32
    // 0x6ec38c: LoadField: r1 = r0->field_1f
    //     0x6ec38c: ldur            w1, [x0, #0x1f]
    // 0x6ec390: DecompressPointer r1
    //     0x6ec390: add             x1, x1, HEAP, lsl #32
    // 0x6ec394: eor             x0, x1, #0x10
    // 0x6ec398: str             x0, [SP]
    // 0x6ec39c: ldur            x1, [fp, #-0x18]
    // 0x6ec3a0: r4 = const [0, 0x3, 0x1, 0x2, isActive, 0x2, null]
    //     0x6ec3a0: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a448] List(7) [0, 0x3, 0x1, 0x2, "isActive", 0x2, Null]
    //     0x6ec3a4: ldr             x4, [x4, #0x448]
    // 0x6ec3a8: r0 = updateAgency()
    //     0x6ec3a8: bl              #0x6d8fa0  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::updateAgency
    // 0x6ec3ac: mov             x1, x0
    // 0x6ec3b0: stur            x1, [fp, #-0x18]
    // 0x6ec3b4: r0 = Await()
    //     0x6ec3b4: bl              #0x3dd188  ; AwaitStub
    // 0x6ec3b8: r0 = Null
    //     0x6ec3b8: mov             x0, NULL
    // 0x6ec3bc: r0 = ReturnAsyncNotFuture()
    //     0x6ec3bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ec3c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ec3c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ec3c4: b               #0x6ec378
  }
  _ _showAgencyDialog(/* No info */) {
    // ** addr: 0x6ec3c8, size: 0x320
    // 0x6ec3c8: EnterFrame
    //     0x6ec3c8: stp             fp, lr, [SP, #-0x10]!
    //     0x6ec3cc: mov             fp, SP
    // 0x6ec3d0: AllocStack(0x38)
    //     0x6ec3d0: sub             SP, SP, #0x38
    // 0x6ec3d4: SetupParameters(_SuperAdminDashboardState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x6ec3d4: stur            x1, [fp, #-8]
    //     0x6ec3d8: stur            x2, [fp, #-0x10]
    //     0x6ec3dc: stur            x3, [fp, #-0x18]
    // 0x6ec3e0: CheckStackOverflow
    //     0x6ec3e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ec3e4: cmp             SP, x16
    //     0x6ec3e8: b.ls            #0x6ec6e0
    // 0x6ec3ec: r1 = 9
    //     0x6ec3ec: mov             x1, #9
    // 0x6ec3f0: r0 = AllocateContext()
    //     0x6ec3f0: bl              #0x927010  ; AllocateContextStub
    // 0x6ec3f4: mov             x2, x0
    // 0x6ec3f8: ldur            x0, [fp, #-8]
    // 0x6ec3fc: stur            x2, [fp, #-0x20]
    // 0x6ec400: StoreField: r2->field_f = r0
    //     0x6ec400: stur            w0, [x2, #0xf]
    // 0x6ec404: ldur            x0, [fp, #-0x18]
    // 0x6ec408: StoreField: r2->field_13 = r0
    //     0x6ec408: stur            w0, [x2, #0x13]
    // 0x6ec40c: cmp             w0, NULL
    // 0x6ec410: r16 = true
    //     0x6ec410: add             x16, NULL, #0x20  ; true
    // 0x6ec414: r17 = false
    //     0x6ec414: add             x17, NULL, #0x30  ; false
    // 0x6ec418: csel            x1, x16, x17, ne
    // 0x6ec41c: ArrayStore: r2[0] = r1  ; List_4
    //     0x6ec41c: stur            w1, [x2, #0x17]
    // 0x6ec420: cmp             w0, NULL
    // 0x6ec424: b.ne            #0x6ec430
    // 0x6ec428: r0 = Null
    //     0x6ec428: mov             x0, NULL
    // 0x6ec42c: b               #0x6ec43c
    // 0x6ec430: LoadField: r1 = r0->field_b
    //     0x6ec430: ldur            w1, [x0, #0xb]
    // 0x6ec434: DecompressPointer r1
    //     0x6ec434: add             x1, x1, HEAP, lsl #32
    // 0x6ec438: mov             x0, x1
    // 0x6ec43c: cmp             w0, NULL
    // 0x6ec440: b.ne            #0x6ec448
    // 0x6ec444: r0 = ""
    //     0x6ec444: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6ec448: stur            x0, [fp, #-8]
    // 0x6ec44c: r1 = <TextEditingValue>
    //     0x6ec44c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6ec450: r0 = TextEditingController()
    //     0x6ec450: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6ec454: stur            x0, [fp, #-0x18]
    // 0x6ec458: ldur            x16, [fp, #-8]
    // 0x6ec45c: str             x16, [SP]
    // 0x6ec460: mov             x1, x0
    // 0x6ec464: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6ec464: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6ec468: ldr             x4, [x4, #0xa20]
    // 0x6ec46c: r0 = TextEditingController()
    //     0x6ec46c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6ec470: ldur            x0, [fp, #-0x18]
    // 0x6ec474: ldur            x2, [fp, #-0x20]
    // 0x6ec478: StoreField: r2->field_1b = r0
    //     0x6ec478: stur            w0, [x2, #0x1b]
    //     0x6ec47c: ldurb           w16, [x2, #-1]
    //     0x6ec480: ldurb           w17, [x0, #-1]
    //     0x6ec484: and             x16, x17, x16, lsr #2
    //     0x6ec488: tst             x16, HEAP, lsr #32
    //     0x6ec48c: b.eq            #0x6ec494
    //     0x6ec490: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec494: LoadField: r0 = r2->field_13
    //     0x6ec494: ldur            w0, [x2, #0x13]
    // 0x6ec498: DecompressPointer r0
    //     0x6ec498: add             x0, x0, HEAP, lsl #32
    // 0x6ec49c: cmp             w0, NULL
    // 0x6ec4a0: b.ne            #0x6ec4ac
    // 0x6ec4a4: r0 = Null
    //     0x6ec4a4: mov             x0, NULL
    // 0x6ec4a8: b               #0x6ec4b8
    // 0x6ec4ac: LoadField: r1 = r0->field_f
    //     0x6ec4ac: ldur            w1, [x0, #0xf]
    // 0x6ec4b0: DecompressPointer r1
    //     0x6ec4b0: add             x1, x1, HEAP, lsl #32
    // 0x6ec4b4: mov             x0, x1
    // 0x6ec4b8: cmp             w0, NULL
    // 0x6ec4bc: b.ne            #0x6ec4c4
    // 0x6ec4c0: r0 = ""
    //     0x6ec4c0: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6ec4c4: stur            x0, [fp, #-8]
    // 0x6ec4c8: r1 = <TextEditingValue>
    //     0x6ec4c8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6ec4cc: r0 = TextEditingController()
    //     0x6ec4cc: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6ec4d0: stur            x0, [fp, #-0x18]
    // 0x6ec4d4: ldur            x16, [fp, #-8]
    // 0x6ec4d8: str             x16, [SP]
    // 0x6ec4dc: mov             x1, x0
    // 0x6ec4e0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6ec4e0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6ec4e4: ldr             x4, [x4, #0xa20]
    // 0x6ec4e8: r0 = TextEditingController()
    //     0x6ec4e8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6ec4ec: ldur            x0, [fp, #-0x18]
    // 0x6ec4f0: ldur            x2, [fp, #-0x20]
    // 0x6ec4f4: StoreField: r2->field_1f = r0
    //     0x6ec4f4: stur            w0, [x2, #0x1f]
    //     0x6ec4f8: ldurb           w16, [x2, #-1]
    //     0x6ec4fc: ldurb           w17, [x0, #-1]
    //     0x6ec500: and             x16, x17, x16, lsr #2
    //     0x6ec504: tst             x16, HEAP, lsr #32
    //     0x6ec508: b.eq            #0x6ec510
    //     0x6ec50c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec510: LoadField: r0 = r2->field_13
    //     0x6ec510: ldur            w0, [x2, #0x13]
    // 0x6ec514: DecompressPointer r0
    //     0x6ec514: add             x0, x0, HEAP, lsl #32
    // 0x6ec518: cmp             w0, NULL
    // 0x6ec51c: b.ne            #0x6ec528
    // 0x6ec520: r0 = Null
    //     0x6ec520: mov             x0, NULL
    // 0x6ec524: b               #0x6ec534
    // 0x6ec528: LoadField: r1 = r0->field_13
    //     0x6ec528: ldur            w1, [x0, #0x13]
    // 0x6ec52c: DecompressPointer r1
    //     0x6ec52c: add             x1, x1, HEAP, lsl #32
    // 0x6ec530: mov             x0, x1
    // 0x6ec534: cmp             w0, NULL
    // 0x6ec538: b.ne            #0x6ec540
    // 0x6ec53c: r0 = ""
    //     0x6ec53c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6ec540: stur            x0, [fp, #-8]
    // 0x6ec544: r1 = <TextEditingValue>
    //     0x6ec544: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6ec548: r0 = TextEditingController()
    //     0x6ec548: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6ec54c: stur            x0, [fp, #-0x18]
    // 0x6ec550: ldur            x16, [fp, #-8]
    // 0x6ec554: str             x16, [SP]
    // 0x6ec558: mov             x1, x0
    // 0x6ec55c: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6ec55c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6ec560: ldr             x4, [x4, #0xa20]
    // 0x6ec564: r0 = TextEditingController()
    //     0x6ec564: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6ec568: ldur            x0, [fp, #-0x18]
    // 0x6ec56c: ldur            x2, [fp, #-0x20]
    // 0x6ec570: StoreField: r2->field_23 = r0
    //     0x6ec570: stur            w0, [x2, #0x23]
    //     0x6ec574: ldurb           w16, [x2, #-1]
    //     0x6ec578: ldurb           w17, [x0, #-1]
    //     0x6ec57c: and             x16, x17, x16, lsr #2
    //     0x6ec580: tst             x16, HEAP, lsr #32
    //     0x6ec584: b.eq            #0x6ec58c
    //     0x6ec588: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec58c: LoadField: r0 = r2->field_13
    //     0x6ec58c: ldur            w0, [x2, #0x13]
    // 0x6ec590: DecompressPointer r0
    //     0x6ec590: add             x0, x0, HEAP, lsl #32
    // 0x6ec594: cmp             w0, NULL
    // 0x6ec598: b.ne            #0x6ec5a4
    // 0x6ec59c: r0 = Null
    //     0x6ec59c: mov             x0, NULL
    // 0x6ec5a0: b               #0x6ec5b0
    // 0x6ec5a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6ec5a4: ldur            w1, [x0, #0x17]
    // 0x6ec5a8: DecompressPointer r1
    //     0x6ec5a8: add             x1, x1, HEAP, lsl #32
    // 0x6ec5ac: mov             x0, x1
    // 0x6ec5b0: cmp             w0, NULL
    // 0x6ec5b4: b.ne            #0x6ec5bc
    // 0x6ec5b8: r0 = ""
    //     0x6ec5b8: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6ec5bc: stur            x0, [fp, #-8]
    // 0x6ec5c0: r1 = <TextEditingValue>
    //     0x6ec5c0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6ec5c4: r0 = TextEditingController()
    //     0x6ec5c4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6ec5c8: stur            x0, [fp, #-0x18]
    // 0x6ec5cc: ldur            x16, [fp, #-8]
    // 0x6ec5d0: str             x16, [SP]
    // 0x6ec5d4: mov             x1, x0
    // 0x6ec5d8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6ec5d8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6ec5dc: ldr             x4, [x4, #0xa20]
    // 0x6ec5e0: r0 = TextEditingController()
    //     0x6ec5e0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6ec5e4: ldur            x0, [fp, #-0x18]
    // 0x6ec5e8: ldur            x2, [fp, #-0x20]
    // 0x6ec5ec: StoreField: r2->field_27 = r0
    //     0x6ec5ec: stur            w0, [x2, #0x27]
    //     0x6ec5f0: ldurb           w16, [x2, #-1]
    //     0x6ec5f4: ldurb           w17, [x0, #-1]
    //     0x6ec5f8: and             x16, x17, x16, lsr #2
    //     0x6ec5fc: tst             x16, HEAP, lsr #32
    //     0x6ec600: b.eq            #0x6ec608
    //     0x6ec604: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec608: LoadField: r0 = r2->field_13
    //     0x6ec608: ldur            w0, [x2, #0x13]
    // 0x6ec60c: DecompressPointer r0
    //     0x6ec60c: add             x0, x0, HEAP, lsl #32
    // 0x6ec610: cmp             w0, NULL
    // 0x6ec614: b.ne            #0x6ec620
    // 0x6ec618: r0 = Null
    //     0x6ec618: mov             x0, NULL
    // 0x6ec61c: b               #0x6ec62c
    // 0x6ec620: LoadField: r1 = r0->field_1b
    //     0x6ec620: ldur            w1, [x0, #0x1b]
    // 0x6ec624: DecompressPointer r1
    //     0x6ec624: add             x1, x1, HEAP, lsl #32
    // 0x6ec628: mov             x0, x1
    // 0x6ec62c: cmp             w0, NULL
    // 0x6ec630: b.ne            #0x6ec638
    // 0x6ec634: r0 = ""
    //     0x6ec634: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6ec638: stur            x0, [fp, #-8]
    // 0x6ec63c: r1 = <TextEditingValue>
    //     0x6ec63c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6ec640: r0 = TextEditingController()
    //     0x6ec640: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6ec644: stur            x0, [fp, #-0x18]
    // 0x6ec648: ldur            x16, [fp, #-8]
    // 0x6ec64c: str             x16, [SP]
    // 0x6ec650: mov             x1, x0
    // 0x6ec654: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6ec654: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6ec658: ldr             x4, [x4, #0xa20]
    // 0x6ec65c: r0 = TextEditingController()
    //     0x6ec65c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6ec660: ldur            x0, [fp, #-0x18]
    // 0x6ec664: ldur            x2, [fp, #-0x20]
    // 0x6ec668: StoreField: r2->field_2b = r0
    //     0x6ec668: stur            w0, [x2, #0x2b]
    //     0x6ec66c: ldurb           w16, [x2, #-1]
    //     0x6ec670: ldurb           w17, [x0, #-1]
    //     0x6ec674: and             x16, x17, x16, lsr #2
    //     0x6ec678: tst             x16, HEAP, lsr #32
    //     0x6ec67c: b.eq            #0x6ec684
    //     0x6ec680: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec684: r1 = <FormState>
    //     0x6ec684: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x6ec688: ldr             x1, [x1, #0x590]
    // 0x6ec68c: r0 = LabeledGlobalKey()
    //     0x6ec68c: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x6ec690: ldur            x2, [fp, #-0x20]
    // 0x6ec694: StoreField: r2->field_2f = r0
    //     0x6ec694: stur            w0, [x2, #0x2f]
    //     0x6ec698: ldurb           w16, [x2, #-1]
    //     0x6ec69c: ldurb           w17, [x0, #-1]
    //     0x6ec6a0: and             x16, x17, x16, lsr #2
    //     0x6ec6a4: tst             x16, HEAP, lsr #32
    //     0x6ec6a8: b.eq            #0x6ec6b0
    //     0x6ec6ac: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ec6b0: r1 = Function '<anonymous closure>':.
    //     0x6ec6b0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a450] AnonymousClosure: (0x6ec6e8), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showAgencyDialog (0x6ec3c8)
    //     0x6ec6b4: ldr             x1, [x1, #0x450]
    // 0x6ec6b8: r0 = AllocateClosure()
    //     0x6ec6b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ec6bc: stp             x0, NULL, [SP, #8]
    // 0x6ec6c0: ldur            x16, [fp, #-0x10]
    // 0x6ec6c4: str             x16, [SP]
    // 0x6ec6c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6ec6c8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6ec6cc: r0 = showDialog()
    //     0x6ec6cc: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6ec6d0: r0 = Null
    //     0x6ec6d0: mov             x0, NULL
    // 0x6ec6d4: LeaveFrame
    //     0x6ec6d4: mov             SP, fp
    //     0x6ec6d8: ldp             fp, lr, [SP], #0x10
    // 0x6ec6dc: ret
    //     0x6ec6dc: ret             
    // 0x6ec6e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ec6e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ec6e4: b               #0x6ec3ec
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6ec6e8, size: 0x4c4
    // 0x6ec6e8: EnterFrame
    //     0x6ec6e8: stp             fp, lr, [SP, #-0x10]!
    //     0x6ec6ec: mov             fp, SP
    // 0x6ec6f0: AllocStack(0x38)
    //     0x6ec6f0: sub             SP, SP, #0x38
    // 0x6ec6f4: SetupParameters([dynamic _ /* r0 */])
    //     0x6ec6f4: ldr             x0, [fp, #0x18]
    //     0x6ec6f8: ldur            w1, [x0, #0x17]
    //     0x6ec6fc: add             x1, x1, HEAP, lsl #32
    //     0x6ec700: stur            x1, [fp, #-8]
    // 0x6ec704: CheckStackOverflow
    //     0x6ec704: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ec708: cmp             SP, x16
    //     0x6ec70c: b.ls            #0x6ecba4
    // 0x6ec710: r1 = 1
    //     0x6ec710: mov             x1, #1
    // 0x6ec714: r0 = AllocateContext()
    //     0x6ec714: bl              #0x927010  ; AllocateContextStub
    // 0x6ec718: mov             x1, x0
    // 0x6ec71c: ldur            x0, [fp, #-8]
    // 0x6ec720: stur            x1, [fp, #-0x10]
    // 0x6ec724: StoreField: r1->field_b = r0
    //     0x6ec724: stur            w0, [x1, #0xb]
    // 0x6ec728: ldr             x2, [fp, #0x10]
    // 0x6ec72c: StoreField: r1->field_f = r2
    //     0x6ec72c: stur            w2, [x1, #0xf]
    // 0x6ec730: r0 = Radius()
    //     0x6ec730: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ec734: d0 = 16.000000
    //     0x6ec734: fmov            d0, #16.00000000
    // 0x6ec738: stur            x0, [fp, #-0x18]
    // 0x6ec73c: StoreField: r0->field_7 = d0
    //     0x6ec73c: stur            d0, [x0, #7]
    // 0x6ec740: StoreField: r0->field_f = d0
    //     0x6ec740: stur            d0, [x0, #0xf]
    // 0x6ec744: r0 = BorderRadius()
    //     0x6ec744: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ec748: mov             x1, x0
    // 0x6ec74c: ldur            x0, [fp, #-0x18]
    // 0x6ec750: stur            x1, [fp, #-0x20]
    // 0x6ec754: StoreField: r1->field_7 = r0
    //     0x6ec754: stur            w0, [x1, #7]
    // 0x6ec758: StoreField: r1->field_b = r0
    //     0x6ec758: stur            w0, [x1, #0xb]
    // 0x6ec75c: StoreField: r1->field_f = r0
    //     0x6ec75c: stur            w0, [x1, #0xf]
    // 0x6ec760: StoreField: r1->field_13 = r0
    //     0x6ec760: stur            w0, [x1, #0x13]
    // 0x6ec764: r0 = RoundedRectangleBorder()
    //     0x6ec764: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6ec768: mov             x1, x0
    // 0x6ec76c: ldur            x0, [fp, #-0x20]
    // 0x6ec770: stur            x1, [fp, #-0x28]
    // 0x6ec774: StoreField: r1->field_b = r0
    //     0x6ec774: stur            w0, [x1, #0xb]
    // 0x6ec778: r0 = Instance_BorderSide
    //     0x6ec778: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6ec77c: ldr             x0, [x0, #0xcb8]
    // 0x6ec780: StoreField: r1->field_7 = r0
    //     0x6ec780: stur            w0, [x1, #7]
    // 0x6ec784: ldur            x0, [fp, #-8]
    // 0x6ec788: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6ec788: ldur            w2, [x0, #0x17]
    // 0x6ec78c: DecompressPointer r2
    //     0x6ec78c: add             x2, x2, HEAP, lsl #32
    // 0x6ec790: tbnz            w2, #4, #0x6ec7a0
    // 0x6ec794: r2 = "Acenta Düzenle"
    //     0x6ec794: add             x2, PP, #0x19, lsl #12  ; [pp+0x19790] "Acenta Düzenle"
    //     0x6ec798: ldr             x2, [x2, #0x790]
    // 0x6ec79c: b               #0x6ec7a8
    // 0x6ec7a0: r2 = "Yeni Acenta Ekle"
    //     0x6ec7a0: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a458] "Yeni Acenta Ekle"
    //     0x6ec7a4: ldr             x2, [x2, #0x458]
    // 0x6ec7a8: stur            x2, [fp, #-0x18]
    // 0x6ec7ac: r0 = Text()
    //     0x6ec7ac: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ec7b0: mov             x4, x0
    // 0x6ec7b4: ldur            x0, [fp, #-0x18]
    // 0x6ec7b8: stur            x4, [fp, #-0x20]
    // 0x6ec7bc: StoreField: r4->field_b = r0
    //     0x6ec7bc: stur            w0, [x4, #0xb]
    // 0x6ec7c0: r0 = Instance_TextStyle
    //     0x6ec7c0: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6ec7c4: ldr             x0, [x0, #0x158]
    // 0x6ec7c8: StoreField: r4->field_13 = r0
    //     0x6ec7c8: stur            w0, [x4, #0x13]
    // 0x6ec7cc: ldur            x0, [fp, #-8]
    // 0x6ec7d0: LoadField: r1 = r0->field_f
    //     0x6ec7d0: ldur            w1, [x0, #0xf]
    // 0x6ec7d4: DecompressPointer r1
    //     0x6ec7d4: add             x1, x1, HEAP, lsl #32
    // 0x6ec7d8: LoadField: r2 = r0->field_1b
    //     0x6ec7d8: ldur            w2, [x0, #0x1b]
    // 0x6ec7dc: DecompressPointer r2
    //     0x6ec7dc: add             x2, x2, HEAP, lsl #32
    // 0x6ec7e0: r16 = true
    //     0x6ec7e0: add             x16, NULL, #0x20  ; true
    // 0x6ec7e4: str             x16, [SP]
    // 0x6ec7e8: r3 = "Acenta Adı *"
    //     0x6ec7e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a460] "Acenta Adı *"
    //     0x6ec7ec: ldr             x3, [x3, #0x460]
    // 0x6ec7f0: r5 = Instance_IconData
    //     0x6ec7f0: add             x5, PP, #0x19, lsl #12  ; [pp+0x19700] Obj!IconData@a09ec1
    //     0x6ec7f4: ldr             x5, [x5, #0x700]
    // 0x6ec7f8: r4 = const [0, 0x5, 0x1, 0x4, isRequired, 0x4, null]
    //     0x6ec7f8: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a468] List(7) [0, 0x5, 0x1, 0x4, "isRequired", 0x4, Null]
    //     0x6ec7fc: ldr             x4, [x4, #0x468]
    // 0x6ec800: r0 = _buildTextField()
    //     0x6ec800: bl              #0x6ecbac  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField
    // 0x6ec804: r1 = <Widget>
    //     0x6ec804: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ec808: r2 = 18
    //     0x6ec808: mov             x2, #0x12
    // 0x6ec80c: stur            x0, [fp, #-0x18]
    // 0x6ec810: r0 = AllocateArray()
    //     0x6ec810: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ec814: mov             x4, x0
    // 0x6ec818: ldur            x0, [fp, #-0x18]
    // 0x6ec81c: stur            x4, [fp, #-0x30]
    // 0x6ec820: StoreField: r4->field_f = r0
    //     0x6ec820: stur            w0, [x4, #0xf]
    // 0x6ec824: r16 = Instance_SizedBox
    //     0x6ec824: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ec828: ldr             x16, [x16, #0x220]
    // 0x6ec82c: StoreField: r4->field_13 = r16
    //     0x6ec82c: stur            w16, [x4, #0x13]
    // 0x6ec830: ldur            x0, [fp, #-8]
    // 0x6ec834: LoadField: r1 = r0->field_f
    //     0x6ec834: ldur            w1, [x0, #0xf]
    // 0x6ec838: DecompressPointer r1
    //     0x6ec838: add             x1, x1, HEAP, lsl #32
    // 0x6ec83c: LoadField: r2 = r0->field_1f
    //     0x6ec83c: ldur            w2, [x0, #0x1f]
    // 0x6ec840: DecompressPointer r2
    //     0x6ec840: add             x2, x2, HEAP, lsl #32
    // 0x6ec844: r3 = "Açıklama"
    //     0x6ec844: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a470] "Açıklama"
    //     0x6ec848: ldr             x3, [x3, #0x470]
    // 0x6ec84c: r5 = Instance_IconData
    //     0x6ec84c: add             x5, PP, #0x1a, lsl #12  ; [pp+0x1a478] Obj!IconData@a09fc1
    //     0x6ec850: ldr             x5, [x5, #0x478]
    // 0x6ec854: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x6ec854: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x6ec858: r0 = _buildTextField()
    //     0x6ec858: bl              #0x6ecbac  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField
    // 0x6ec85c: ldur            x1, [fp, #-0x30]
    // 0x6ec860: ArrayStore: r1[2] = r0  ; List_4
    //     0x6ec860: add             x25, x1, #0x17
    //     0x6ec864: str             w0, [x25]
    //     0x6ec868: tbz             w0, #0, #0x6ec884
    //     0x6ec86c: ldurb           w16, [x1, #-1]
    //     0x6ec870: ldurb           w17, [x0, #-1]
    //     0x6ec874: and             x16, x17, x16, lsr #2
    //     0x6ec878: tst             x16, HEAP, lsr #32
    //     0x6ec87c: b.eq            #0x6ec884
    //     0x6ec880: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ec884: ldur            x0, [fp, #-0x30]
    // 0x6ec888: r16 = Instance_SizedBox
    //     0x6ec888: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ec88c: ldr             x16, [x16, #0x220]
    // 0x6ec890: StoreField: r0->field_1b = r16
    //     0x6ec890: stur            w16, [x0, #0x1b]
    // 0x6ec894: ldur            x4, [fp, #-8]
    // 0x6ec898: LoadField: r1 = r4->field_f
    //     0x6ec898: ldur            w1, [x4, #0xf]
    // 0x6ec89c: DecompressPointer r1
    //     0x6ec89c: add             x1, x1, HEAP, lsl #32
    // 0x6ec8a0: LoadField: r2 = r4->field_23
    //     0x6ec8a0: ldur            w2, [x4, #0x23]
    // 0x6ec8a4: DecompressPointer r2
    //     0x6ec8a4: add             x2, x2, HEAP, lsl #32
    // 0x6ec8a8: r3 = "Telefon"
    //     0x6ec8a8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15488] "Telefon"
    //     0x6ec8ac: ldr             x3, [x3, #0x488]
    // 0x6ec8b0: r5 = Instance_IconData
    //     0x6ec8b0: add             x5, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x6ec8b4: ldr             x5, [x5, #0x268]
    // 0x6ec8b8: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x6ec8b8: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x6ec8bc: r0 = _buildTextField()
    //     0x6ec8bc: bl              #0x6ecbac  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField
    // 0x6ec8c0: ldur            x1, [fp, #-0x30]
    // 0x6ec8c4: ArrayStore: r1[4] = r0  ; List_4
    //     0x6ec8c4: add             x25, x1, #0x1f
    //     0x6ec8c8: str             w0, [x25]
    //     0x6ec8cc: tbz             w0, #0, #0x6ec8e8
    //     0x6ec8d0: ldurb           w16, [x1, #-1]
    //     0x6ec8d4: ldurb           w17, [x0, #-1]
    //     0x6ec8d8: and             x16, x17, x16, lsr #2
    //     0x6ec8dc: tst             x16, HEAP, lsr #32
    //     0x6ec8e0: b.eq            #0x6ec8e8
    //     0x6ec8e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ec8e8: ldur            x0, [fp, #-0x30]
    // 0x6ec8ec: r16 = Instance_SizedBox
    //     0x6ec8ec: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ec8f0: ldr             x16, [x16, #0x220]
    // 0x6ec8f4: StoreField: r0->field_23 = r16
    //     0x6ec8f4: stur            w16, [x0, #0x23]
    // 0x6ec8f8: ldur            x4, [fp, #-8]
    // 0x6ec8fc: LoadField: r1 = r4->field_f
    //     0x6ec8fc: ldur            w1, [x4, #0xf]
    // 0x6ec900: DecompressPointer r1
    //     0x6ec900: add             x1, x1, HEAP, lsl #32
    // 0x6ec904: LoadField: r2 = r4->field_27
    //     0x6ec904: ldur            w2, [x4, #0x27]
    // 0x6ec908: DecompressPointer r2
    //     0x6ec908: add             x2, x2, HEAP, lsl #32
    // 0x6ec90c: r3 = "E-posta"
    //     0x6ec90c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a480] "E-posta"
    //     0x6ec910: ldr             x3, [x3, #0x480]
    // 0x6ec914: r5 = Instance_IconData
    //     0x6ec914: add             x5, PP, #0x12, lsl #12  ; [pp+0x122a8] Obj!IconData@a09e81
    //     0x6ec918: ldr             x5, [x5, #0x2a8]
    // 0x6ec91c: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x6ec91c: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x6ec920: r0 = _buildTextField()
    //     0x6ec920: bl              #0x6ecbac  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField
    // 0x6ec924: ldur            x1, [fp, #-0x30]
    // 0x6ec928: ArrayStore: r1[6] = r0  ; List_4
    //     0x6ec928: add             x25, x1, #0x27
    //     0x6ec92c: str             w0, [x25]
    //     0x6ec930: tbz             w0, #0, #0x6ec94c
    //     0x6ec934: ldurb           w16, [x1, #-1]
    //     0x6ec938: ldurb           w17, [x0, #-1]
    //     0x6ec93c: and             x16, x17, x16, lsr #2
    //     0x6ec940: tst             x16, HEAP, lsr #32
    //     0x6ec944: b.eq            #0x6ec94c
    //     0x6ec948: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ec94c: ldur            x0, [fp, #-0x30]
    // 0x6ec950: r16 = Instance_SizedBox
    //     0x6ec950: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ec954: ldr             x16, [x16, #0x220]
    // 0x6ec958: StoreField: r0->field_2b = r16
    //     0x6ec958: stur            w16, [x0, #0x2b]
    // 0x6ec95c: ldur            x4, [fp, #-8]
    // 0x6ec960: LoadField: r1 = r4->field_f
    //     0x6ec960: ldur            w1, [x4, #0xf]
    // 0x6ec964: DecompressPointer r1
    //     0x6ec964: add             x1, x1, HEAP, lsl #32
    // 0x6ec968: LoadField: r2 = r4->field_2b
    //     0x6ec968: ldur            w2, [x4, #0x2b]
    // 0x6ec96c: DecompressPointer r2
    //     0x6ec96c: add             x2, x2, HEAP, lsl #32
    // 0x6ec970: r3 = "Adres"
    //     0x6ec970: add             x3, PP, #0x19, lsl #12  ; [pp+0x19360] "Adres"
    //     0x6ec974: ldr             x3, [x3, #0x360]
    // 0x6ec978: r5 = Instance_IconData
    //     0x6ec978: add             x5, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6ec97c: ldr             x5, [x5, #0x528]
    // 0x6ec980: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x6ec980: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x6ec984: r0 = _buildTextField()
    //     0x6ec984: bl              #0x6ecbac  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField
    // 0x6ec988: ldur            x1, [fp, #-0x30]
    // 0x6ec98c: ArrayStore: r1[8] = r0  ; List_4
    //     0x6ec98c: add             x25, x1, #0x2f
    //     0x6ec990: str             w0, [x25]
    //     0x6ec994: tbz             w0, #0, #0x6ec9b0
    //     0x6ec998: ldurb           w16, [x1, #-1]
    //     0x6ec99c: ldurb           w17, [x0, #-1]
    //     0x6ec9a0: and             x16, x17, x16, lsr #2
    //     0x6ec9a4: tst             x16, HEAP, lsr #32
    //     0x6ec9a8: b.eq            #0x6ec9b0
    //     0x6ec9ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ec9b0: r1 = <Widget>
    //     0x6ec9b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ec9b4: r0 = AllocateGrowableArray()
    //     0x6ec9b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ec9b8: mov             x1, x0
    // 0x6ec9bc: ldur            x0, [fp, #-0x30]
    // 0x6ec9c0: stur            x1, [fp, #-0x18]
    // 0x6ec9c4: StoreField: r1->field_f = r0
    //     0x6ec9c4: stur            w0, [x1, #0xf]
    // 0x6ec9c8: r0 = 18
    //     0x6ec9c8: mov             x0, #0x12
    // 0x6ec9cc: StoreField: r1->field_b = r0
    //     0x6ec9cc: stur            w0, [x1, #0xb]
    // 0x6ec9d0: r0 = Column()
    //     0x6ec9d0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6ec9d4: mov             x1, x0
    // 0x6ec9d8: r0 = Instance_Axis
    //     0x6ec9d8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ec9dc: stur            x1, [fp, #-0x30]
    // 0x6ec9e0: StoreField: r1->field_f = r0
    //     0x6ec9e0: stur            w0, [x1, #0xf]
    // 0x6ec9e4: r2 = Instance_MainAxisAlignment
    //     0x6ec9e4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ec9e8: ldr             x2, [x2, #0x230]
    // 0x6ec9ec: StoreField: r1->field_13 = r2
    //     0x6ec9ec: stur            w2, [x1, #0x13]
    // 0x6ec9f0: r2 = Instance_MainAxisSize
    //     0x6ec9f0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6ec9f4: ldr             x2, [x2, #0xb60]
    // 0x6ec9f8: ArrayStore: r1[0] = r2  ; List_4
    //     0x6ec9f8: stur            w2, [x1, #0x17]
    // 0x6ec9fc: r2 = Instance_CrossAxisAlignment
    //     0x6ec9fc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6eca00: ldr             x2, [x2, #0x338]
    // 0x6eca04: StoreField: r1->field_1b = r2
    //     0x6eca04: stur            w2, [x1, #0x1b]
    // 0x6eca08: r2 = Instance_VerticalDirection
    //     0x6eca08: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6eca0c: ldr             x2, [x2, #0x340]
    // 0x6eca10: StoreField: r1->field_23 = r2
    //     0x6eca10: stur            w2, [x1, #0x23]
    // 0x6eca14: r2 = Instance_Clip
    //     0x6eca14: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6eca18: ldr             x2, [x2, #0x348]
    // 0x6eca1c: StoreField: r1->field_2b = r2
    //     0x6eca1c: stur            w2, [x1, #0x2b]
    // 0x6eca20: StoreField: r1->field_2f = rZR
    //     0x6eca20: stur            xzr, [x1, #0x2f]
    // 0x6eca24: ldur            x2, [fp, #-0x18]
    // 0x6eca28: StoreField: r1->field_b = r2
    //     0x6eca28: stur            w2, [x1, #0xb]
    // 0x6eca2c: ldur            x2, [fp, #-8]
    // 0x6eca30: LoadField: r3 = r2->field_2f
    //     0x6eca30: ldur            w3, [x2, #0x2f]
    // 0x6eca34: DecompressPointer r3
    //     0x6eca34: add             x3, x3, HEAP, lsl #32
    // 0x6eca38: stur            x3, [fp, #-0x18]
    // 0x6eca3c: r0 = Form()
    //     0x6eca3c: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6eca40: mov             x1, x0
    // 0x6eca44: ldur            x0, [fp, #-0x30]
    // 0x6eca48: stur            x1, [fp, #-8]
    // 0x6eca4c: StoreField: r1->field_b = r0
    //     0x6eca4c: stur            w0, [x1, #0xb]
    // 0x6eca50: r0 = Instance_AutovalidateMode
    //     0x6eca50: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6eca54: ldr             x0, [x0, #0xb68]
    // 0x6eca58: StoreField: r1->field_23 = r0
    //     0x6eca58: stur            w0, [x1, #0x23]
    // 0x6eca5c: ldur            x0, [fp, #-0x18]
    // 0x6eca60: StoreField: r1->field_7 = r0
    //     0x6eca60: stur            w0, [x1, #7]
    // 0x6eca64: r0 = SingleChildScrollView()
    //     0x6eca64: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6eca68: mov             x3, x0
    // 0x6eca6c: r0 = Instance_Axis
    //     0x6eca6c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6eca70: stur            x3, [fp, #-0x18]
    // 0x6eca74: StoreField: r3->field_b = r0
    //     0x6eca74: stur            w0, [x3, #0xb]
    // 0x6eca78: r0 = false
    //     0x6eca78: add             x0, NULL, #0x30  ; false
    // 0x6eca7c: StoreField: r3->field_f = r0
    //     0x6eca7c: stur            w0, [x3, #0xf]
    // 0x6eca80: ldur            x1, [fp, #-8]
    // 0x6eca84: StoreField: r3->field_23 = r1
    //     0x6eca84: stur            w1, [x3, #0x23]
    // 0x6eca88: r1 = Instance_DragStartBehavior
    //     0x6eca88: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6eca8c: StoreField: r3->field_27 = r1
    //     0x6eca8c: stur            w1, [x3, #0x27]
    // 0x6eca90: r1 = Instance_Clip
    //     0x6eca90: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6eca94: ldr             x1, [x1, #0x2d8]
    // 0x6eca98: StoreField: r3->field_2b = r1
    //     0x6eca98: stur            w1, [x3, #0x2b]
    // 0x6eca9c: r1 = Instance_HitTestBehavior
    //     0x6eca9c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6ecaa0: ldr             x1, [x1, #0xe20]
    // 0x6ecaa4: StoreField: r3->field_2f = r1
    //     0x6ecaa4: stur            w1, [x3, #0x2f]
    // 0x6ecaa8: ldur            x2, [fp, #-0x10]
    // 0x6ecaac: r1 = Function '<anonymous closure>':.
    //     0x6ecaac: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a488] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6ecab0: ldr             x1, [x1, #0x488]
    // 0x6ecab4: r0 = AllocateClosure()
    //     0x6ecab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ecab8: stur            x0, [fp, #-8]
    // 0x6ecabc: r0 = TextButton()
    //     0x6ecabc: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6ecac0: mov             x3, x0
    // 0x6ecac4: ldur            x0, [fp, #-8]
    // 0x6ecac8: stur            x3, [fp, #-0x30]
    // 0x6ecacc: StoreField: r3->field_b = r0
    //     0x6ecacc: stur            w0, [x3, #0xb]
    // 0x6ecad0: r0 = false
    //     0x6ecad0: add             x0, NULL, #0x30  ; false
    // 0x6ecad4: StoreField: r3->field_27 = r0
    //     0x6ecad4: stur            w0, [x3, #0x27]
    // 0x6ecad8: r1 = true
    //     0x6ecad8: add             x1, NULL, #0x20  ; true
    // 0x6ecadc: StoreField: r3->field_2f = r1
    //     0x6ecadc: stur            w1, [x3, #0x2f]
    // 0x6ecae0: r1 = Instance_Text
    //     0x6ecae0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x6ecae4: ldr             x1, [x1, #0x198]
    // 0x6ecae8: StoreField: r3->field_37 = r1
    //     0x6ecae8: stur            w1, [x3, #0x37]
    // 0x6ecaec: ldur            x2, [fp, #-0x10]
    // 0x6ecaf0: r1 = Function '<anonymous closure>':.
    //     0x6ecaf0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a490] AnonymousClosure: (0x6ecf7c), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showAgencyDialog (0x6ec3c8)
    //     0x6ecaf4: ldr             x1, [x1, #0x490]
    // 0x6ecaf8: r0 = AllocateClosure()
    //     0x6ecaf8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ecafc: r1 = <AgencyProvider>
    //     0x6ecafc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6ecb00: ldr             x1, [x1, #0xb60]
    // 0x6ecb04: stur            x0, [fp, #-8]
    // 0x6ecb08: r0 = Consumer()
    //     0x6ecb08: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6ecb0c: mov             x3, x0
    // 0x6ecb10: ldur            x0, [fp, #-8]
    // 0x6ecb14: stur            x3, [fp, #-0x10]
    // 0x6ecb18: StoreField: r3->field_13 = r0
    //     0x6ecb18: stur            w0, [x3, #0x13]
    // 0x6ecb1c: r1 = Null
    //     0x6ecb1c: mov             x1, NULL
    // 0x6ecb20: r2 = 4
    //     0x6ecb20: mov             x2, #4
    // 0x6ecb24: r0 = AllocateArray()
    //     0x6ecb24: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ecb28: mov             x2, x0
    // 0x6ecb2c: ldur            x0, [fp, #-0x30]
    // 0x6ecb30: stur            x2, [fp, #-8]
    // 0x6ecb34: StoreField: r2->field_f = r0
    //     0x6ecb34: stur            w0, [x2, #0xf]
    // 0x6ecb38: ldur            x0, [fp, #-0x10]
    // 0x6ecb3c: StoreField: r2->field_13 = r0
    //     0x6ecb3c: stur            w0, [x2, #0x13]
    // 0x6ecb40: r1 = <Widget>
    //     0x6ecb40: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ecb44: r0 = AllocateGrowableArray()
    //     0x6ecb44: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ecb48: mov             x1, x0
    // 0x6ecb4c: ldur            x0, [fp, #-8]
    // 0x6ecb50: stur            x1, [fp, #-0x10]
    // 0x6ecb54: StoreField: r1->field_f = r0
    //     0x6ecb54: stur            w0, [x1, #0xf]
    // 0x6ecb58: r0 = 4
    //     0x6ecb58: mov             x0, #4
    // 0x6ecb5c: StoreField: r1->field_b = r0
    //     0x6ecb5c: stur            w0, [x1, #0xb]
    // 0x6ecb60: r0 = AlertDialog()
    //     0x6ecb60: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6ecb64: ldur            x1, [fp, #-0x20]
    // 0x6ecb68: StoreField: r0->field_f = r1
    //     0x6ecb68: stur            w1, [x0, #0xf]
    // 0x6ecb6c: ldur            x1, [fp, #-0x18]
    // 0x6ecb70: StoreField: r0->field_1b = r1
    //     0x6ecb70: stur            w1, [x0, #0x1b]
    // 0x6ecb74: ldur            x1, [fp, #-0x10]
    // 0x6ecb78: StoreField: r0->field_27 = r1
    //     0x6ecb78: stur            w1, [x0, #0x27]
    // 0x6ecb7c: r1 = Instance_Color
    //     0x6ecb7c: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6ecb80: ldr             x1, [x1, #0x1c0]
    // 0x6ecb84: StoreField: r0->field_43 = r1
    //     0x6ecb84: stur            w1, [x0, #0x43]
    // 0x6ecb88: ldur            x1, [fp, #-0x28]
    // 0x6ecb8c: StoreField: r0->field_5f = r1
    //     0x6ecb8c: stur            w1, [x0, #0x5f]
    // 0x6ecb90: r1 = false
    //     0x6ecb90: add             x1, NULL, #0x30  ; false
    // 0x6ecb94: StoreField: r0->field_6b = r1
    //     0x6ecb94: stur            w1, [x0, #0x6b]
    // 0x6ecb98: LeaveFrame
    //     0x6ecb98: mov             SP, fp
    //     0x6ecb9c: ldp             fp, lr, [SP], #0x10
    // 0x6ecba0: ret
    //     0x6ecba0: ret             
    // 0x6ecba4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ecba4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ecba8: b               #0x6ec710
  }
  _ _buildTextField(/* No info */) {
    // ** addr: 0x6ecbac, size: 0x330
    // 0x6ecbac: EnterFrame
    //     0x6ecbac: stp             fp, lr, [SP, #-0x10]!
    //     0x6ecbb0: mov             fp, SP
    // 0x6ecbb4: AllocStack(0x58)
    //     0x6ecbb4: sub             SP, SP, #0x58
    // 0x6ecbb8: SetupParameters(dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */, {dynamic isRequired = false /* r0, fp-0x8 */})
    //     0x6ecbb8: stur            x2, [fp, #-0x10]
    //     0x6ecbbc: stur            x3, [fp, #-0x18]
    //     0x6ecbc0: stur            x5, [fp, #-0x20]
    //     0x6ecbc4: ldur            w0, [x4, #0x13]
    //     0x6ecbc8: ldur            w1, [x4, #0x1f]
    //     0x6ecbcc: add             x1, x1, HEAP, lsl #32
    //     0x6ecbd0: ldr             x16, [PP, #0x28d8]  ; [pp+0x28d8] "isRequired"
    //     0x6ecbd4: cmp             w1, w16
    //     0x6ecbd8: b.ne            #0x6ecbf4
    //     0x6ecbdc: ldur            w1, [x4, #0x23]
    //     0x6ecbe0: add             x1, x1, HEAP, lsl #32
    //     0x6ecbe4: sub             w4, w0, w1
    //     0x6ecbe8: add             x0, fp, w4, sxtw #2
    //     0x6ecbec: ldr             x0, [x0, #8]
    //     0x6ecbf0: b               #0x6ecbf8
    //     0x6ecbf4: add             x0, NULL, #0x30  ; false
    //     0x6ecbf8: stur            x0, [fp, #-8]
    // 0x6ecbfc: CheckStackOverflow
    //     0x6ecbfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ecc00: cmp             SP, x16
    //     0x6ecc04: b.ls            #0x6eced4
    // 0x6ecc08: r1 = 1
    //     0x6ecc08: mov             x1, #1
    // 0x6ecc0c: r0 = AllocateContext()
    //     0x6ecc0c: bl              #0x927010  ; AllocateContextStub
    // 0x6ecc10: mov             x1, x0
    // 0x6ecc14: ldur            x0, [fp, #-0x18]
    // 0x6ecc18: StoreField: r1->field_f = r0
    //     0x6ecc18: stur            w0, [x1, #0xf]
    // 0x6ecc1c: ldur            x2, [fp, #-8]
    // 0x6ecc20: tbnz            w2, #4, #0x6ecc3c
    // 0x6ecc24: mov             x2, x1
    // 0x6ecc28: r1 = Function '<anonymous closure>':.
    //     0x6ecc28: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a4a8] AnonymousClosure: (0x6ecedc), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_buildTextField (0x6ecbac)
    //     0x6ecc2c: ldr             x1, [x1, #0x4a8]
    // 0x6ecc30: r0 = AllocateClosure()
    //     0x6ecc30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ecc34: mov             x2, x0
    // 0x6ecc38: b               #0x6ecc40
    // 0x6ecc3c: r2 = Null
    //     0x6ecc3c: mov             x2, NULL
    // 0x6ecc40: ldur            x0, [fp, #-0x18]
    // 0x6ecc44: ldur            x1, [fp, #-0x20]
    // 0x6ecc48: stur            x2, [fp, #-8]
    // 0x6ecc4c: r0 = Icon()
    //     0x6ecc4c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ecc50: mov             x1, x0
    // 0x6ecc54: ldur            x0, [fp, #-0x20]
    // 0x6ecc58: stur            x1, [fp, #-0x28]
    // 0x6ecc5c: StoreField: r1->field_b = r0
    //     0x6ecc5c: stur            w0, [x1, #0xb]
    // 0x6ecc60: r0 = Instance_Color
    //     0x6ecc60: add             x0, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x6ecc64: ldr             x0, [x0, #0x1e8]
    // 0x6ecc68: StoreField: r1->field_23 = r0
    //     0x6ecc68: stur            w0, [x1, #0x23]
    // 0x6ecc6c: r0 = Radius()
    //     0x6ecc6c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ecc70: d0 = 8.000000
    //     0x6ecc70: fmov            d0, #8.00000000
    // 0x6ecc74: stur            x0, [fp, #-0x20]
    // 0x6ecc78: StoreField: r0->field_7 = d0
    //     0x6ecc78: stur            d0, [x0, #7]
    // 0x6ecc7c: StoreField: r0->field_f = d0
    //     0x6ecc7c: stur            d0, [x0, #0xf]
    // 0x6ecc80: r0 = BorderRadius()
    //     0x6ecc80: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ecc84: mov             x2, x0
    // 0x6ecc88: ldur            x0, [fp, #-0x20]
    // 0x6ecc8c: stur            x2, [fp, #-0x30]
    // 0x6ecc90: StoreField: r2->field_7 = r0
    //     0x6ecc90: stur            w0, [x2, #7]
    // 0x6ecc94: StoreField: r2->field_b = r0
    //     0x6ecc94: stur            w0, [x2, #0xb]
    // 0x6ecc98: StoreField: r2->field_f = r0
    //     0x6ecc98: stur            w0, [x2, #0xf]
    // 0x6ecc9c: StoreField: r2->field_13 = r0
    //     0x6ecc9c: stur            w0, [x2, #0x13]
    // 0x6ecca0: r16 = 0.200000
    //     0x6ecca0: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6ecca4: ldr             x16, [x16, #0x1f0]
    // 0x6ecca8: str             x16, [SP]
    // 0x6eccac: r1 = Instance_Color
    //     0x6eccac: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6eccb0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6eccb0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6eccb4: ldr             x4, [x4, #0x198]
    // 0x6eccb8: r0 = withValues()
    //     0x6eccb8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6eccbc: stur            x0, [fp, #-0x20]
    // 0x6eccc0: r0 = BorderSide()
    //     0x6eccc0: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6eccc4: mov             x1, x0
    // 0x6eccc8: ldur            x0, [fp, #-0x20]
    // 0x6ecccc: stur            x1, [fp, #-0x38]
    // 0x6eccd0: StoreField: r1->field_7 = r0
    //     0x6eccd0: stur            w0, [x1, #7]
    // 0x6eccd4: d0 = 1.000000
    //     0x6eccd4: fmov            d0, #1.00000000
    // 0x6eccd8: StoreField: r1->field_b = d0
    //     0x6eccd8: stur            d0, [x1, #0xb]
    // 0x6eccdc: r0 = Instance_BorderStyle
    //     0x6eccdc: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6ecce0: ldr             x0, [x0, #0x738]
    // 0x6ecce4: StoreField: r1->field_13 = r0
    //     0x6ecce4: stur            w0, [x1, #0x13]
    // 0x6ecce8: d0 = -1.000000
    //     0x6ecce8: fmov            d0, #-1.00000000
    // 0x6eccec: ArrayStore: r1[0] = d0  ; List_8
    //     0x6eccec: stur            d0, [x1, #0x17]
    // 0x6eccf0: r0 = OutlineInputBorder()
    //     0x6eccf0: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6eccf4: mov             x1, x0
    // 0x6eccf8: ldur            x0, [fp, #-0x30]
    // 0x6eccfc: stur            x1, [fp, #-0x20]
    // 0x6ecd00: StoreField: r1->field_13 = r0
    //     0x6ecd00: stur            w0, [x1, #0x13]
    // 0x6ecd04: d0 = 4.000000
    //     0x6ecd04: fmov            d0, #4.00000000
    // 0x6ecd08: StoreField: r1->field_b = d0
    //     0x6ecd08: stur            d0, [x1, #0xb]
    // 0x6ecd0c: ldur            x0, [fp, #-0x38]
    // 0x6ecd10: StoreField: r1->field_7 = r0
    //     0x6ecd10: stur            w0, [x1, #7]
    // 0x6ecd14: r0 = Radius()
    //     0x6ecd14: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ecd18: d0 = 8.000000
    //     0x6ecd18: fmov            d0, #8.00000000
    // 0x6ecd1c: stur            x0, [fp, #-0x30]
    // 0x6ecd20: StoreField: r0->field_7 = d0
    //     0x6ecd20: stur            d0, [x0, #7]
    // 0x6ecd24: StoreField: r0->field_f = d0
    //     0x6ecd24: stur            d0, [x0, #0xf]
    // 0x6ecd28: r0 = BorderRadius()
    //     0x6ecd28: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ecd2c: mov             x1, x0
    // 0x6ecd30: ldur            x0, [fp, #-0x30]
    // 0x6ecd34: stur            x1, [fp, #-0x38]
    // 0x6ecd38: StoreField: r1->field_7 = r0
    //     0x6ecd38: stur            w0, [x1, #7]
    // 0x6ecd3c: StoreField: r1->field_b = r0
    //     0x6ecd3c: stur            w0, [x1, #0xb]
    // 0x6ecd40: StoreField: r1->field_f = r0
    //     0x6ecd40: stur            w0, [x1, #0xf]
    // 0x6ecd44: StoreField: r1->field_13 = r0
    //     0x6ecd44: stur            w0, [x1, #0x13]
    // 0x6ecd48: r0 = OutlineInputBorder()
    //     0x6ecd48: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6ecd4c: mov             x1, x0
    // 0x6ecd50: ldur            x0, [fp, #-0x38]
    // 0x6ecd54: stur            x1, [fp, #-0x30]
    // 0x6ecd58: StoreField: r1->field_13 = r0
    //     0x6ecd58: stur            w0, [x1, #0x13]
    // 0x6ecd5c: d0 = 4.000000
    //     0x6ecd5c: fmov            d0, #4.00000000
    // 0x6ecd60: StoreField: r1->field_b = d0
    //     0x6ecd60: stur            d0, [x1, #0xb]
    // 0x6ecd64: r0 = Instance_BorderSide
    //     0x6ecd64: add             x0, PP, #0x19, lsl #12  ; [pp+0x191f0] Obj!BorderSide@a19571
    //     0x6ecd68: ldr             x0, [x0, #0x1f0]
    // 0x6ecd6c: StoreField: r1->field_7 = r0
    //     0x6ecd6c: stur            w0, [x1, #7]
    // 0x6ecd70: r0 = Radius()
    //     0x6ecd70: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ecd74: d0 = 8.000000
    //     0x6ecd74: fmov            d0, #8.00000000
    // 0x6ecd78: stur            x0, [fp, #-0x38]
    // 0x6ecd7c: StoreField: r0->field_7 = d0
    //     0x6ecd7c: stur            d0, [x0, #7]
    // 0x6ecd80: StoreField: r0->field_f = d0
    //     0x6ecd80: stur            d0, [x0, #0xf]
    // 0x6ecd84: r0 = BorderRadius()
    //     0x6ecd84: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ecd88: mov             x1, x0
    // 0x6ecd8c: ldur            x0, [fp, #-0x38]
    // 0x6ecd90: stur            x1, [fp, #-0x40]
    // 0x6ecd94: StoreField: r1->field_7 = r0
    //     0x6ecd94: stur            w0, [x1, #7]
    // 0x6ecd98: StoreField: r1->field_b = r0
    //     0x6ecd98: stur            w0, [x1, #0xb]
    // 0x6ecd9c: StoreField: r1->field_f = r0
    //     0x6ecd9c: stur            w0, [x1, #0xf]
    // 0x6ecda0: StoreField: r1->field_13 = r0
    //     0x6ecda0: stur            w0, [x1, #0x13]
    // 0x6ecda4: r0 = OutlineInputBorder()
    //     0x6ecda4: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6ecda8: mov             x1, x0
    // 0x6ecdac: ldur            x0, [fp, #-0x40]
    // 0x6ecdb0: stur            x1, [fp, #-0x38]
    // 0x6ecdb4: StoreField: r1->field_13 = r0
    //     0x6ecdb4: stur            w0, [x1, #0x13]
    // 0x6ecdb8: d0 = 4.000000
    //     0x6ecdb8: fmov            d0, #4.00000000
    // 0x6ecdbc: StoreField: r1->field_b = d0
    //     0x6ecdbc: stur            d0, [x1, #0xb]
    // 0x6ecdc0: r0 = Instance_BorderSide
    //     0x6ecdc0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bd0] Obj!BorderSide@a19551
    //     0x6ecdc4: ldr             x0, [x0, #0xbd0]
    // 0x6ecdc8: StoreField: r1->field_7 = r0
    //     0x6ecdc8: stur            w0, [x1, #7]
    // 0x6ecdcc: r0 = Radius()
    //     0x6ecdcc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ecdd0: d0 = 8.000000
    //     0x6ecdd0: fmov            d0, #8.00000000
    // 0x6ecdd4: stur            x0, [fp, #-0x40]
    // 0x6ecdd8: StoreField: r0->field_7 = d0
    //     0x6ecdd8: stur            d0, [x0, #7]
    // 0x6ecddc: StoreField: r0->field_f = d0
    //     0x6ecddc: stur            d0, [x0, #0xf]
    // 0x6ecde0: r0 = BorderRadius()
    //     0x6ecde0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ecde4: mov             x1, x0
    // 0x6ecde8: ldur            x0, [fp, #-0x40]
    // 0x6ecdec: stur            x1, [fp, #-0x48]
    // 0x6ecdf0: StoreField: r1->field_7 = r0
    //     0x6ecdf0: stur            w0, [x1, #7]
    // 0x6ecdf4: StoreField: r1->field_b = r0
    //     0x6ecdf4: stur            w0, [x1, #0xb]
    // 0x6ecdf8: StoreField: r1->field_f = r0
    //     0x6ecdf8: stur            w0, [x1, #0xf]
    // 0x6ecdfc: StoreField: r1->field_13 = r0
    //     0x6ecdfc: stur            w0, [x1, #0x13]
    // 0x6ece00: r0 = OutlineInputBorder()
    //     0x6ece00: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6ece04: mov             x1, x0
    // 0x6ece08: ldur            x0, [fp, #-0x48]
    // 0x6ece0c: stur            x1, [fp, #-0x40]
    // 0x6ece10: StoreField: r1->field_13 = r0
    //     0x6ece10: stur            w0, [x1, #0x13]
    // 0x6ece14: d0 = 4.000000
    //     0x6ece14: fmov            d0, #4.00000000
    // 0x6ece18: StoreField: r1->field_b = d0
    //     0x6ece18: stur            d0, [x1, #0xb]
    // 0x6ece1c: r0 = Instance_BorderSide
    //     0x6ece1c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bd0] Obj!BorderSide@a19551
    //     0x6ece20: ldr             x0, [x0, #0xbd0]
    // 0x6ece24: StoreField: r1->field_7 = r0
    //     0x6ece24: stur            w0, [x1, #7]
    // 0x6ece28: r0 = InputDecoration()
    //     0x6ece28: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6ece2c: mov             x2, x0
    // 0x6ece30: ldur            x0, [fp, #-0x18]
    // 0x6ece34: stur            x2, [fp, #-0x48]
    // 0x6ece38: StoreField: r2->field_13 = r0
    //     0x6ece38: stur            w0, [x2, #0x13]
    // 0x6ece3c: r0 = Instance_TextStyle
    //     0x6ece3c: add             x0, PP, #0x19, lsl #12  ; [pp+0x191f8] Obj!TextStyle@a17981
    //     0x6ece40: ldr             x0, [x0, #0x1f8]
    // 0x6ece44: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ece44: stur            w0, [x2, #0x17]
    // 0x6ece48: r0 = true
    //     0x6ece48: add             x0, NULL, #0x20  ; true
    // 0x6ece4c: StoreField: r2->field_47 = r0
    //     0x6ece4c: stur            w0, [x2, #0x47]
    // 0x6ece50: StoreField: r2->field_4b = r0
    //     0x6ece50: stur            w0, [x2, #0x4b]
    // 0x6ece54: ldur            x1, [fp, #-0x28]
    // 0x6ece58: StoreField: r2->field_73 = r1
    //     0x6ece58: stur            w1, [x2, #0x73]
    // 0x6ece5c: StoreField: r2->field_af = r0
    //     0x6ece5c: stur            w0, [x2, #0xaf]
    // 0x6ece60: r1 = Instance_Color
    //     0x6ece60: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x6ece64: ldr             x1, [x1, #0xf48]
    // 0x6ece68: StoreField: r2->field_b3 = r1
    //     0x6ece68: stur            w1, [x2, #0xb3]
    // 0x6ece6c: ldur            x1, [fp, #-0x38]
    // 0x6ece70: StoreField: r2->field_bf = r1
    //     0x6ece70: stur            w1, [x2, #0xbf]
    // 0x6ece74: ldur            x1, [fp, #-0x30]
    // 0x6ece78: StoreField: r2->field_c3 = r1
    //     0x6ece78: stur            w1, [x2, #0xc3]
    // 0x6ece7c: ldur            x1, [fp, #-0x40]
    // 0x6ece80: StoreField: r2->field_c7 = r1
    //     0x6ece80: stur            w1, [x2, #0xc7]
    // 0x6ece84: ldur            x1, [fp, #-0x20]
    // 0x6ece88: StoreField: r2->field_cf = r1
    //     0x6ece88: stur            w1, [x2, #0xcf]
    // 0x6ece8c: StoreField: r2->field_d7 = r0
    //     0x6ece8c: stur            w0, [x2, #0xd7]
    // 0x6ece90: r1 = <String>
    //     0x6ece90: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6ece94: r0 = TextFormField()
    //     0x6ece94: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6ece98: stur            x0, [fp, #-0x18]
    // 0x6ece9c: r16 = Instance_TextStyle
    //     0x6ece9c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6ecea0: ldr             x16, [x16, #0x158]
    // 0x6ecea4: ldur            lr, [fp, #-8]
    // 0x6ecea8: stp             lr, x16, [SP]
    // 0x6eceac: mov             x1, x0
    // 0x6eceb0: ldur            x2, [fp, #-0x10]
    // 0x6eceb4: ldur            x3, [fp, #-0x48]
    // 0x6eceb8: r4 = const [0, 0x5, 0x2, 0x3, style, 0x3, validator, 0x4, null]
    //     0x6eceb8: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a4b0] List(9) [0, 0x5, 0x2, 0x3, "style", 0x3, "validator", 0x4, Null]
    //     0x6ecebc: ldr             x4, [x4, #0x4b0]
    // 0x6ecec0: r0 = TextFormField()
    //     0x6ecec0: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6ecec4: ldur            x0, [fp, #-0x18]
    // 0x6ecec8: LeaveFrame
    //     0x6ecec8: mov             SP, fp
    //     0x6ececc: ldp             fp, lr, [SP], #0x10
    // 0x6eced0: ret
    //     0x6eced0: ret             
    // 0x6eced4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eced4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eced8: b               #0x6ecc08
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ecedc, size: 0xa0
    // 0x6ecedc: EnterFrame
    //     0x6ecedc: stp             fp, lr, [SP, #-0x10]!
    //     0x6ecee0: mov             fp, SP
    // 0x6ecee4: AllocStack(0x18)
    //     0x6ecee4: sub             SP, SP, #0x18
    // 0x6ecee8: SetupParameters([dynamic _ /* r0 */])
    //     0x6ecee8: ldr             x0, [fp, #0x18]
    //     0x6eceec: ldur            w2, [x0, #0x17]
    //     0x6ecef0: add             x2, x2, HEAP, lsl #32
    //     0x6ecef4: stur            x2, [fp, #-8]
    // 0x6ecef8: CheckStackOverflow
    //     0x6ecef8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ecefc: cmp             SP, x16
    //     0x6ecf00: b.ls            #0x6ecf74
    // 0x6ecf04: ldr             x1, [fp, #0x10]
    // 0x6ecf08: cmp             w1, NULL
    // 0x6ecf0c: b.ne            #0x6ecf18
    // 0x6ecf10: mov             x0, x2
    // 0x6ecf14: b               #0x6ecf28
    // 0x6ecf18: r0 = trim()
    //     0x6ecf18: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ecf1c: LoadField: r1 = r0->field_7
    //     0x6ecf1c: ldur            w1, [x0, #7]
    // 0x6ecf20: cbnz            w1, #0x6ecf64
    // 0x6ecf24: ldur            x0, [fp, #-8]
    // 0x6ecf28: LoadField: r3 = r0->field_f
    //     0x6ecf28: ldur            w3, [x0, #0xf]
    // 0x6ecf2c: DecompressPointer r3
    //     0x6ecf2c: add             x3, x3, HEAP, lsl #32
    // 0x6ecf30: stur            x3, [fp, #-0x10]
    // 0x6ecf34: r1 = Null
    //     0x6ecf34: mov             x1, NULL
    // 0x6ecf38: r2 = 4
    //     0x6ecf38: mov             x2, #4
    // 0x6ecf3c: r0 = AllocateArray()
    //     0x6ecf3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ecf40: mov             x1, x0
    // 0x6ecf44: ldur            x0, [fp, #-0x10]
    // 0x6ecf48: StoreField: r1->field_f = r0
    //     0x6ecf48: stur            w0, [x1, #0xf]
    // 0x6ecf4c: r16 = " gerekli"
    //     0x6ecf4c: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a4b8] " gerekli"
    //     0x6ecf50: ldr             x16, [x16, #0x4b8]
    // 0x6ecf54: StoreField: r1->field_13 = r16
    //     0x6ecf54: stur            w16, [x1, #0x13]
    // 0x6ecf58: str             x1, [SP]
    // 0x6ecf5c: r0 = _interpolate()
    //     0x6ecf5c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6ecf60: b               #0x6ecf68
    // 0x6ecf64: r0 = Null
    //     0x6ecf64: mov             x0, NULL
    // 0x6ecf68: LeaveFrame
    //     0x6ecf68: mov             SP, fp
    //     0x6ecf6c: ldp             fp, lr, [SP], #0x10
    // 0x6ecf70: ret
    //     0x6ecf70: ret             
    // 0x6ecf74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ecf74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ecf78: b               #0x6ecf04
  }
  [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6ecf7c, size: 0x158
    // 0x6ecf7c: EnterFrame
    //     0x6ecf7c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ecf80: mov             fp, SP
    // 0x6ecf84: AllocStack(0x30)
    //     0x6ecf84: sub             SP, SP, #0x30
    // 0x6ecf88: SetupParameters([dynamic _ /* r0 */])
    //     0x6ecf88: ldr             x0, [fp, #0x28]
    //     0x6ecf8c: ldur            w1, [x0, #0x17]
    //     0x6ecf90: add             x1, x1, HEAP, lsl #32
    //     0x6ecf94: stur            x1, [fp, #-8]
    // 0x6ecf98: CheckStackOverflow
    //     0x6ecf98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ecf9c: cmp             SP, x16
    //     0x6ecfa0: b.ls            #0x6ed0cc
    // 0x6ecfa4: r1 = 1
    //     0x6ecfa4: mov             x1, #1
    // 0x6ecfa8: r0 = AllocateContext()
    //     0x6ecfa8: bl              #0x927010  ; AllocateContextStub
    // 0x6ecfac: mov             x3, x0
    // 0x6ecfb0: ldur            x0, [fp, #-8]
    // 0x6ecfb4: stur            x3, [fp, #-0x10]
    // 0x6ecfb8: StoreField: r3->field_b = r0
    //     0x6ecfb8: stur            w0, [x3, #0xb]
    // 0x6ecfbc: ldr             x1, [fp, #0x18]
    // 0x6ecfc0: StoreField: r3->field_f = r1
    //     0x6ecfc0: stur            w1, [x3, #0xf]
    // 0x6ecfc4: LoadField: r2 = r1->field_2b
    //     0x6ecfc4: ldur            w2, [x1, #0x2b]
    // 0x6ecfc8: DecompressPointer r2
    //     0x6ecfc8: add             x2, x2, HEAP, lsl #32
    // 0x6ecfcc: tbnz            w2, #4, #0x6ecfdc
    // 0x6ecfd0: mov             x0, x3
    // 0x6ecfd4: r1 = Null
    //     0x6ecfd4: mov             x1, NULL
    // 0x6ecfd8: b               #0x6ecff4
    // 0x6ecfdc: mov             x2, x3
    // 0x6ecfe0: r1 = Function '<anonymous closure>':.
    //     0x6ecfe0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a498] AnonymousClosure: (0x6ed0d4), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showAgencyDialog (0x6ec3c8)
    //     0x6ecfe4: ldr             x1, [x1, #0x498]
    // 0x6ecfe8: r0 = AllocateClosure()
    //     0x6ecfe8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ecfec: mov             x1, x0
    // 0x6ecff0: ldur            x0, [fp, #-0x10]
    // 0x6ecff4: stur            x1, [fp, #-0x18]
    // 0x6ecff8: r16 = Instance_Color
    //     0x6ecff8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6ecffc: ldr             x16, [x16, #0xf30]
    // 0x6ed000: r30 = Instance_Color
    //     0x6ed000: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ed004: stp             lr, x16, [SP]
    // 0x6ed008: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6ed008: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6ed00c: ldr             x4, [x4, #0x1a8]
    // 0x6ed010: r0 = styleFrom()
    //     0x6ed010: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6ed014: mov             x1, x0
    // 0x6ed018: ldur            x0, [fp, #-0x10]
    // 0x6ed01c: stur            x1, [fp, #-0x20]
    // 0x6ed020: LoadField: r2 = r0->field_f
    //     0x6ed020: ldur            w2, [x0, #0xf]
    // 0x6ed024: DecompressPointer r2
    //     0x6ed024: add             x2, x2, HEAP, lsl #32
    // 0x6ed028: LoadField: r0 = r2->field_2b
    //     0x6ed028: ldur            w0, [x2, #0x2b]
    // 0x6ed02c: DecompressPointer r0
    //     0x6ed02c: add             x0, x0, HEAP, lsl #32
    // 0x6ed030: tbnz            w0, #4, #0x6ed044
    // 0x6ed034: mov             x0, x1
    // 0x6ed038: r2 = Instance_SizedBox
    //     0x6ed038: add             x2, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6ed03c: ldr             x2, [x2, #0x1b0]
    // 0x6ed040: b               #0x6ed08c
    // 0x6ed044: ldur            x0, [fp, #-8]
    // 0x6ed048: LoadField: r2 = r0->field_b
    //     0x6ed048: ldur            w2, [x0, #0xb]
    // 0x6ed04c: DecompressPointer r2
    //     0x6ed04c: add             x2, x2, HEAP, lsl #32
    // 0x6ed050: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x6ed050: ldur            w0, [x2, #0x17]
    // 0x6ed054: DecompressPointer r0
    //     0x6ed054: add             x0, x0, HEAP, lsl #32
    // 0x6ed058: tbnz            w0, #4, #0x6ed068
    // 0x6ed05c: r0 = "Güncelle"
    //     0x6ed05c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6ed060: ldr             x0, [x0, #0xb48]
    // 0x6ed064: b               #0x6ed070
    // 0x6ed068: r0 = "Ekle"
    //     0x6ed068: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x6ed06c: ldr             x0, [x0, #0x1b8]
    // 0x6ed070: stur            x0, [fp, #-8]
    // 0x6ed074: r0 = Text()
    //     0x6ed074: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ed078: mov             x1, x0
    // 0x6ed07c: ldur            x0, [fp, #-8]
    // 0x6ed080: StoreField: r1->field_b = r0
    //     0x6ed080: stur            w0, [x1, #0xb]
    // 0x6ed084: mov             x2, x1
    // 0x6ed088: ldur            x0, [fp, #-0x20]
    // 0x6ed08c: ldur            x1, [fp, #-0x18]
    // 0x6ed090: stur            x2, [fp, #-8]
    // 0x6ed094: r0 = ElevatedButton()
    //     0x6ed094: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6ed098: ldur            x1, [fp, #-0x18]
    // 0x6ed09c: StoreField: r0->field_b = r1
    //     0x6ed09c: stur            w1, [x0, #0xb]
    // 0x6ed0a0: ldur            x1, [fp, #-0x20]
    // 0x6ed0a4: StoreField: r0->field_1b = r1
    //     0x6ed0a4: stur            w1, [x0, #0x1b]
    // 0x6ed0a8: r1 = false
    //     0x6ed0a8: add             x1, NULL, #0x30  ; false
    // 0x6ed0ac: StoreField: r0->field_27 = r1
    //     0x6ed0ac: stur            w1, [x0, #0x27]
    // 0x6ed0b0: r1 = true
    //     0x6ed0b0: add             x1, NULL, #0x20  ; true
    // 0x6ed0b4: StoreField: r0->field_2f = r1
    //     0x6ed0b4: stur            w1, [x0, #0x2f]
    // 0x6ed0b8: ldur            x1, [fp, #-8]
    // 0x6ed0bc: StoreField: r0->field_37 = r1
    //     0x6ed0bc: stur            w1, [x0, #0x37]
    // 0x6ed0c0: LeaveFrame
    //     0x6ed0c0: mov             SP, fp
    //     0x6ed0c4: ldp             fp, lr, [SP], #0x10
    // 0x6ed0c8: ret
    //     0x6ed0c8: ret             
    // 0x6ed0cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed0cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed0d0: b               #0x6ecfa4
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6ed0d4, size: 0x32c
    // 0x6ed0d4: EnterFrame
    //     0x6ed0d4: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed0d8: mov             fp, SP
    // 0x6ed0dc: AllocStack(0x80)
    //     0x6ed0dc: sub             SP, SP, #0x80
    // 0x6ed0e0: SetupParameters(_SuperAdminDashboardState this /* r1 */)
    //     0x6ed0e0: stur            NULL, [fp, #-8]
    //     0x6ed0e4: mov             x0, #0
    //     0x6ed0e8: add             x1, fp, w0, sxtw #2
    //     0x6ed0ec: ldr             x1, [x1, #0x10]
    //     0x6ed0f0: ldur            w2, [x1, #0x17]
    //     0x6ed0f4: add             x2, x2, HEAP, lsl #32
    //     0x6ed0f8: stur            x2, [fp, #-0x10]
    // 0x6ed0fc: CheckStackOverflow
    //     0x6ed0fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed100: cmp             SP, x16
    //     0x6ed104: b.ls            #0x6ed3f4
    // 0x6ed108: InitAsync() -> Future<void?>
    //     0x6ed108: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6ed10c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ed110: ldur            x0, [fp, #-0x10]
    // 0x6ed114: LoadField: r2 = r0->field_b
    //     0x6ed114: ldur            w2, [x0, #0xb]
    // 0x6ed118: DecompressPointer r2
    //     0x6ed118: add             x2, x2, HEAP, lsl #32
    // 0x6ed11c: stur            x2, [fp, #-0x28]
    // 0x6ed120: LoadField: r3 = r2->field_b
    //     0x6ed120: ldur            w3, [x2, #0xb]
    // 0x6ed124: DecompressPointer r3
    //     0x6ed124: add             x3, x3, HEAP, lsl #32
    // 0x6ed128: stur            x3, [fp, #-0x20]
    // 0x6ed12c: LoadField: r4 = r3->field_1b
    //     0x6ed12c: ldur            w4, [x3, #0x1b]
    // 0x6ed130: DecompressPointer r4
    //     0x6ed130: add             x4, x4, HEAP, lsl #32
    // 0x6ed134: stur            x4, [fp, #-0x18]
    // 0x6ed138: LoadField: r1 = r4->field_27
    //     0x6ed138: ldur            w1, [x4, #0x27]
    // 0x6ed13c: DecompressPointer r1
    //     0x6ed13c: add             x1, x1, HEAP, lsl #32
    // 0x6ed140: LoadField: r5 = r1->field_7
    //     0x6ed140: ldur            w5, [x1, #7]
    // 0x6ed144: DecompressPointer r5
    //     0x6ed144: add             x5, x5, HEAP, lsl #32
    // 0x6ed148: mov             x1, x5
    // 0x6ed14c: r0 = trim()
    //     0x6ed14c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed150: LoadField: r1 = r0->field_7
    //     0x6ed150: ldur            w1, [x0, #7]
    // 0x6ed154: cbnz            w1, #0x6ed180
    // 0x6ed158: ldur            x0, [fp, #-0x28]
    // 0x6ed15c: LoadField: r1 = r0->field_f
    //     0x6ed15c: ldur            w1, [x0, #0xf]
    // 0x6ed160: DecompressPointer r1
    //     0x6ed160: add             x1, x1, HEAP, lsl #32
    // 0x6ed164: r0 = of()
    //     0x6ed164: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6ed168: mov             x1, x0
    // 0x6ed16c: r2 = Instance_SnackBar
    //     0x6ed16c: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a4a0] Obj!SnackBar@a20391
    //     0x6ed170: ldr             x2, [x2, #0x4a0]
    // 0x6ed174: r0 = showSnackBar()
    //     0x6ed174: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6ed178: r0 = Null
    //     0x6ed178: mov             x0, NULL
    // 0x6ed17c: r0 = ReturnAsyncNotFuture()
    //     0x6ed17c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ed180: ldur            x0, [fp, #-0x28]
    // 0x6ed184: ldur            x2, [fp, #-0x20]
    // 0x6ed188: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x6ed188: ldur            w1, [x2, #0x17]
    // 0x6ed18c: DecompressPointer r1
    //     0x6ed18c: add             x1, x1, HEAP, lsl #32
    // 0x6ed190: tbnz            w1, #4, #0x6ed2c4
    // 0x6ed194: ldur            x3, [fp, #-0x10]
    // 0x6ed198: ldur            x1, [fp, #-0x18]
    // 0x6ed19c: LoadField: r4 = r3->field_f
    //     0x6ed19c: ldur            w4, [x3, #0xf]
    // 0x6ed1a0: DecompressPointer r4
    //     0x6ed1a0: add             x4, x4, HEAP, lsl #32
    // 0x6ed1a4: stur            x4, [fp, #-0x38]
    // 0x6ed1a8: LoadField: r5 = r2->field_13
    //     0x6ed1a8: ldur            w5, [x2, #0x13]
    // 0x6ed1ac: DecompressPointer r5
    //     0x6ed1ac: add             x5, x5, HEAP, lsl #32
    // 0x6ed1b0: cmp             w5, NULL
    // 0x6ed1b4: b.eq            #0x6ed3fc
    // 0x6ed1b8: LoadField: r6 = r5->field_7
    //     0x6ed1b8: ldur            w6, [x5, #7]
    // 0x6ed1bc: DecompressPointer r6
    //     0x6ed1bc: add             x6, x6, HEAP, lsl #32
    // 0x6ed1c0: stur            x6, [fp, #-0x30]
    // 0x6ed1c4: LoadField: r5 = r1->field_27
    //     0x6ed1c4: ldur            w5, [x1, #0x27]
    // 0x6ed1c8: DecompressPointer r5
    //     0x6ed1c8: add             x5, x5, HEAP, lsl #32
    // 0x6ed1cc: LoadField: r1 = r5->field_7
    //     0x6ed1cc: ldur            w1, [x5, #7]
    // 0x6ed1d0: DecompressPointer r1
    //     0x6ed1d0: add             x1, x1, HEAP, lsl #32
    // 0x6ed1d4: r0 = trim()
    //     0x6ed1d4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed1d8: mov             x2, x0
    // 0x6ed1dc: ldur            x0, [fp, #-0x20]
    // 0x6ed1e0: stur            x2, [fp, #-0x40]
    // 0x6ed1e4: LoadField: r1 = r0->field_1f
    //     0x6ed1e4: ldur            w1, [x0, #0x1f]
    // 0x6ed1e8: DecompressPointer r1
    //     0x6ed1e8: add             x1, x1, HEAP, lsl #32
    // 0x6ed1ec: LoadField: r3 = r1->field_27
    //     0x6ed1ec: ldur            w3, [x1, #0x27]
    // 0x6ed1f0: DecompressPointer r3
    //     0x6ed1f0: add             x3, x3, HEAP, lsl #32
    // 0x6ed1f4: LoadField: r1 = r3->field_7
    //     0x6ed1f4: ldur            w1, [x3, #7]
    // 0x6ed1f8: DecompressPointer r1
    //     0x6ed1f8: add             x1, x1, HEAP, lsl #32
    // 0x6ed1fc: r0 = trim()
    //     0x6ed1fc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed200: mov             x2, x0
    // 0x6ed204: ldur            x0, [fp, #-0x20]
    // 0x6ed208: stur            x2, [fp, #-0x48]
    // 0x6ed20c: LoadField: r1 = r0->field_23
    //     0x6ed20c: ldur            w1, [x0, #0x23]
    // 0x6ed210: DecompressPointer r1
    //     0x6ed210: add             x1, x1, HEAP, lsl #32
    // 0x6ed214: LoadField: r3 = r1->field_27
    //     0x6ed214: ldur            w3, [x1, #0x27]
    // 0x6ed218: DecompressPointer r3
    //     0x6ed218: add             x3, x3, HEAP, lsl #32
    // 0x6ed21c: LoadField: r1 = r3->field_7
    //     0x6ed21c: ldur            w1, [x3, #7]
    // 0x6ed220: DecompressPointer r1
    //     0x6ed220: add             x1, x1, HEAP, lsl #32
    // 0x6ed224: r0 = trim()
    //     0x6ed224: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed228: mov             x2, x0
    // 0x6ed22c: ldur            x0, [fp, #-0x20]
    // 0x6ed230: stur            x2, [fp, #-0x50]
    // 0x6ed234: LoadField: r1 = r0->field_27
    //     0x6ed234: ldur            w1, [x0, #0x27]
    // 0x6ed238: DecompressPointer r1
    //     0x6ed238: add             x1, x1, HEAP, lsl #32
    // 0x6ed23c: LoadField: r3 = r1->field_27
    //     0x6ed23c: ldur            w3, [x1, #0x27]
    // 0x6ed240: DecompressPointer r3
    //     0x6ed240: add             x3, x3, HEAP, lsl #32
    // 0x6ed244: LoadField: r1 = r3->field_7
    //     0x6ed244: ldur            w1, [x3, #7]
    // 0x6ed248: DecompressPointer r1
    //     0x6ed248: add             x1, x1, HEAP, lsl #32
    // 0x6ed24c: r0 = trim()
    //     0x6ed24c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed250: mov             x2, x0
    // 0x6ed254: ldur            x0, [fp, #-0x20]
    // 0x6ed258: stur            x2, [fp, #-0x58]
    // 0x6ed25c: LoadField: r1 = r0->field_2b
    //     0x6ed25c: ldur            w1, [x0, #0x2b]
    // 0x6ed260: DecompressPointer r1
    //     0x6ed260: add             x1, x1, HEAP, lsl #32
    // 0x6ed264: LoadField: r0 = r1->field_27
    //     0x6ed264: ldur            w0, [x1, #0x27]
    // 0x6ed268: DecompressPointer r0
    //     0x6ed268: add             x0, x0, HEAP, lsl #32
    // 0x6ed26c: LoadField: r1 = r0->field_7
    //     0x6ed26c: ldur            w1, [x0, #7]
    // 0x6ed270: DecompressPointer r1
    //     0x6ed270: add             x1, x1, HEAP, lsl #32
    // 0x6ed274: r0 = trim()
    //     0x6ed274: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed278: ldur            x16, [fp, #-0x40]
    // 0x6ed27c: ldur            lr, [fp, #-0x48]
    // 0x6ed280: stp             lr, x16, [SP, #0x18]
    // 0x6ed284: ldur            x16, [fp, #-0x50]
    // 0x6ed288: ldur            lr, [fp, #-0x58]
    // 0x6ed28c: stp             lr, x16, [SP, #8]
    // 0x6ed290: str             x0, [SP]
    // 0x6ed294: ldur            x1, [fp, #-0x38]
    // 0x6ed298: ldur            x2, [fp, #-0x30]
    // 0x6ed29c: r4 = const [0, 0x7, 0x5, 0x2, address, 0x6, description, 0x3, email, 0x5, name, 0x2, phone, 0x4, null]
    //     0x6ed29c: add             x4, PP, #0x19, lsl #12  ; [pp+0x197f0] List(15) [0, 0x7, 0x5, 0x2, "address", 0x6, "description", 0x3, "email", 0x5, "name", 0x2, "phone", 0x4, Null]
    //     0x6ed2a0: ldr             x4, [x4, #0x7f0]
    // 0x6ed2a4: r0 = updateAgency()
    //     0x6ed2a4: bl              #0x6d8fa0  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::updateAgency
    // 0x6ed2a8: mov             x1, x0
    // 0x6ed2ac: stur            x1, [fp, #-0x30]
    // 0x6ed2b0: r0 = Await()
    //     0x6ed2b0: bl              #0x3dd188  ; AwaitStub
    // 0x6ed2b4: r16 = true
    //     0x6ed2b4: add             x16, NULL, #0x20  ; true
    // 0x6ed2b8: cmp             w0, w16
    // 0x6ed2bc: b.ne            #0x6ed3ec
    // 0x6ed2c0: b               #0x6ed3c0
    // 0x6ed2c4: mov             x0, x2
    // 0x6ed2c8: ldur            x2, [fp, #-0x10]
    // 0x6ed2cc: ldur            x1, [fp, #-0x18]
    // 0x6ed2d0: LoadField: r3 = r2->field_f
    //     0x6ed2d0: ldur            w3, [x2, #0xf]
    // 0x6ed2d4: DecompressPointer r3
    //     0x6ed2d4: add             x3, x3, HEAP, lsl #32
    // 0x6ed2d8: stur            x3, [fp, #-0x30]
    // 0x6ed2dc: LoadField: r4 = r1->field_27
    //     0x6ed2dc: ldur            w4, [x1, #0x27]
    // 0x6ed2e0: DecompressPointer r4
    //     0x6ed2e0: add             x4, x4, HEAP, lsl #32
    // 0x6ed2e4: LoadField: r1 = r4->field_7
    //     0x6ed2e4: ldur            w1, [x4, #7]
    // 0x6ed2e8: DecompressPointer r1
    //     0x6ed2e8: add             x1, x1, HEAP, lsl #32
    // 0x6ed2ec: r0 = trim()
    //     0x6ed2ec: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed2f0: mov             x2, x0
    // 0x6ed2f4: ldur            x0, [fp, #-0x20]
    // 0x6ed2f8: stur            x2, [fp, #-0x18]
    // 0x6ed2fc: LoadField: r1 = r0->field_1f
    //     0x6ed2fc: ldur            w1, [x0, #0x1f]
    // 0x6ed300: DecompressPointer r1
    //     0x6ed300: add             x1, x1, HEAP, lsl #32
    // 0x6ed304: LoadField: r3 = r1->field_27
    //     0x6ed304: ldur            w3, [x1, #0x27]
    // 0x6ed308: DecompressPointer r3
    //     0x6ed308: add             x3, x3, HEAP, lsl #32
    // 0x6ed30c: LoadField: r1 = r3->field_7
    //     0x6ed30c: ldur            w1, [x3, #7]
    // 0x6ed310: DecompressPointer r1
    //     0x6ed310: add             x1, x1, HEAP, lsl #32
    // 0x6ed314: r0 = trim()
    //     0x6ed314: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed318: mov             x2, x0
    // 0x6ed31c: ldur            x0, [fp, #-0x20]
    // 0x6ed320: stur            x2, [fp, #-0x38]
    // 0x6ed324: LoadField: r1 = r0->field_23
    //     0x6ed324: ldur            w1, [x0, #0x23]
    // 0x6ed328: DecompressPointer r1
    //     0x6ed328: add             x1, x1, HEAP, lsl #32
    // 0x6ed32c: LoadField: r3 = r1->field_27
    //     0x6ed32c: ldur            w3, [x1, #0x27]
    // 0x6ed330: DecompressPointer r3
    //     0x6ed330: add             x3, x3, HEAP, lsl #32
    // 0x6ed334: LoadField: r1 = r3->field_7
    //     0x6ed334: ldur            w1, [x3, #7]
    // 0x6ed338: DecompressPointer r1
    //     0x6ed338: add             x1, x1, HEAP, lsl #32
    // 0x6ed33c: r0 = trim()
    //     0x6ed33c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed340: mov             x2, x0
    // 0x6ed344: ldur            x0, [fp, #-0x20]
    // 0x6ed348: stur            x2, [fp, #-0x40]
    // 0x6ed34c: LoadField: r1 = r0->field_27
    //     0x6ed34c: ldur            w1, [x0, #0x27]
    // 0x6ed350: DecompressPointer r1
    //     0x6ed350: add             x1, x1, HEAP, lsl #32
    // 0x6ed354: LoadField: r3 = r1->field_27
    //     0x6ed354: ldur            w3, [x1, #0x27]
    // 0x6ed358: DecompressPointer r3
    //     0x6ed358: add             x3, x3, HEAP, lsl #32
    // 0x6ed35c: LoadField: r1 = r3->field_7
    //     0x6ed35c: ldur            w1, [x3, #7]
    // 0x6ed360: DecompressPointer r1
    //     0x6ed360: add             x1, x1, HEAP, lsl #32
    // 0x6ed364: r0 = trim()
    //     0x6ed364: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed368: mov             x2, x0
    // 0x6ed36c: ldur            x0, [fp, #-0x20]
    // 0x6ed370: stur            x2, [fp, #-0x48]
    // 0x6ed374: LoadField: r1 = r0->field_2b
    //     0x6ed374: ldur            w1, [x0, #0x2b]
    // 0x6ed378: DecompressPointer r1
    //     0x6ed378: add             x1, x1, HEAP, lsl #32
    // 0x6ed37c: LoadField: r0 = r1->field_27
    //     0x6ed37c: ldur            w0, [x1, #0x27]
    // 0x6ed380: DecompressPointer r0
    //     0x6ed380: add             x0, x0, HEAP, lsl #32
    // 0x6ed384: LoadField: r1 = r0->field_7
    //     0x6ed384: ldur            w1, [x0, #7]
    // 0x6ed388: DecompressPointer r1
    //     0x6ed388: add             x1, x1, HEAP, lsl #32
    // 0x6ed38c: r0 = trim()
    //     0x6ed38c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ed390: ldur            x1, [fp, #-0x30]
    // 0x6ed394: mov             x2, x0
    // 0x6ed398: ldur            x3, [fp, #-0x38]
    // 0x6ed39c: ldur            x5, [fp, #-0x48]
    // 0x6ed3a0: ldur            x6, [fp, #-0x18]
    // 0x6ed3a4: ldur            x7, [fp, #-0x40]
    // 0x6ed3a8: r0 = createAgency()
    //     0x6ed3a8: bl              #0x6d87ac  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::createAgency
    // 0x6ed3ac: mov             x1, x0
    // 0x6ed3b0: stur            x1, [fp, #-0x18]
    // 0x6ed3b4: r0 = Await()
    //     0x6ed3b4: bl              #0x3dd188  ; AwaitStub
    // 0x6ed3b8: cmp             w0, NULL
    // 0x6ed3bc: b.eq            #0x6ed3ec
    // 0x6ed3c0: ldur            x0, [fp, #-0x28]
    // 0x6ed3c4: LoadField: r1 = r0->field_f
    //     0x6ed3c4: ldur            w1, [x0, #0xf]
    // 0x6ed3c8: DecompressPointer r1
    //     0x6ed3c8: add             x1, x1, HEAP, lsl #32
    // 0x6ed3cc: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6ed3cc: ldur            w0, [x1, #0x17]
    // 0x6ed3d0: DecompressPointer r0
    //     0x6ed3d0: add             x0, x0, HEAP, lsl #32
    // 0x6ed3d4: cmp             w0, NULL
    // 0x6ed3d8: b.eq            #0x6ed3ec
    // 0x6ed3dc: r16 = <Object?>
    //     0x6ed3dc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6ed3e0: stp             x1, x16, [SP]
    // 0x6ed3e4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6ed3e4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6ed3e8: r0 = pop()
    //     0x6ed3e8: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6ed3ec: r0 = Null
    //     0x6ed3ec: mov             x0, NULL
    // 0x6ed3f0: r0 = ReturnAsyncNotFuture()
    //     0x6ed3f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ed3f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed3f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed3f8: b               #0x6ed108
    // 0x6ed3fc: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6ed3fc: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] List<PopupMenuEntry<String>> <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6ed400, size: 0x1e8
    // 0x6ed400: EnterFrame
    //     0x6ed400: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed404: mov             fp, SP
    // 0x6ed408: AllocStack(0x18)
    //     0x6ed408: sub             SP, SP, #0x18
    // 0x6ed40c: SetupParameters([dynamic _ /* r0 */])
    //     0x6ed40c: ldr             x0, [fp, #0x18]
    //     0x6ed410: ldur            w1, [x0, #0x17]
    //     0x6ed414: add             x1, x1, HEAP, lsl #32
    // 0x6ed418: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6ed418: ldur            w0, [x1, #0x17]
    // 0x6ed41c: DecompressPointer r0
    //     0x6ed41c: add             x0, x0, HEAP, lsl #32
    // 0x6ed420: LoadField: r1 = r0->field_1f
    //     0x6ed420: ldur            w1, [x0, #0x1f]
    // 0x6ed424: DecompressPointer r1
    //     0x6ed424: add             x1, x1, HEAP, lsl #32
    // 0x6ed428: stur            x1, [fp, #-0x10]
    // 0x6ed42c: tbnz            w1, #4, #0x6ed43c
    // 0x6ed430: r0 = Instance_IconData
    //     0x6ed430: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4c0] Obj!IconData@a0a001
    //     0x6ed434: ldr             x0, [x0, #0x4c0]
    // 0x6ed438: b               #0x6ed444
    // 0x6ed43c: r0 = Instance_IconData
    //     0x6ed43c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4c8] Obj!IconData@a09fe1
    //     0x6ed440: ldr             x0, [x0, #0x4c8]
    // 0x6ed444: stur            x0, [fp, #-8]
    // 0x6ed448: r0 = Icon()
    //     0x6ed448: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ed44c: mov             x1, x0
    // 0x6ed450: ldur            x0, [fp, #-8]
    // 0x6ed454: stur            x1, [fp, #-0x18]
    // 0x6ed458: StoreField: r1->field_b = r0
    //     0x6ed458: stur            w0, [x1, #0xb]
    // 0x6ed45c: r0 = 20.000000
    //     0x6ed45c: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x6ed460: ldr             x0, [x0, #0xe48]
    // 0x6ed464: StoreField: r1->field_f = r0
    //     0x6ed464: stur            w0, [x1, #0xf]
    // 0x6ed468: r0 = Instance_Color
    //     0x6ed468: ldr             x0, [PP, #0x5768]  ; [pp+0x5768] Obj!Color@a21c71
    // 0x6ed46c: StoreField: r1->field_23 = r0
    //     0x6ed46c: stur            w0, [x1, #0x23]
    // 0x6ed470: ldur            x0, [fp, #-0x10]
    // 0x6ed474: tbnz            w0, #4, #0x6ed484
    // 0x6ed478: r0 = "Pasif Yap"
    //     0x6ed478: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4d0] "Pasif Yap"
    //     0x6ed47c: ldr             x0, [x0, #0x4d0]
    // 0x6ed480: b               #0x6ed48c
    // 0x6ed484: r0 = "Aktif Yap"
    //     0x6ed484: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4d8] "Aktif Yap"
    //     0x6ed488: ldr             x0, [x0, #0x4d8]
    // 0x6ed48c: stur            x0, [fp, #-8]
    // 0x6ed490: r0 = Text()
    //     0x6ed490: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ed494: mov             x3, x0
    // 0x6ed498: ldur            x0, [fp, #-8]
    // 0x6ed49c: stur            x3, [fp, #-0x10]
    // 0x6ed4a0: StoreField: r3->field_b = r0
    //     0x6ed4a0: stur            w0, [x3, #0xb]
    // 0x6ed4a4: r0 = Instance_TextStyle
    //     0x6ed4a4: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6ed4a8: ldr             x0, [x0, #0x158]
    // 0x6ed4ac: StoreField: r3->field_13 = r0
    //     0x6ed4ac: stur            w0, [x3, #0x13]
    // 0x6ed4b0: r1 = Null
    //     0x6ed4b0: mov             x1, NULL
    // 0x6ed4b4: r2 = 6
    //     0x6ed4b4: mov             x2, #6
    // 0x6ed4b8: r0 = AllocateArray()
    //     0x6ed4b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ed4bc: mov             x2, x0
    // 0x6ed4c0: ldur            x0, [fp, #-0x18]
    // 0x6ed4c4: stur            x2, [fp, #-8]
    // 0x6ed4c8: StoreField: r2->field_f = r0
    //     0x6ed4c8: stur            w0, [x2, #0xf]
    // 0x6ed4cc: r16 = Instance_SizedBox
    //     0x6ed4cc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x6ed4d0: ldr             x16, [x16, #0x368]
    // 0x6ed4d4: StoreField: r2->field_13 = r16
    //     0x6ed4d4: stur            w16, [x2, #0x13]
    // 0x6ed4d8: ldur            x0, [fp, #-0x10]
    // 0x6ed4dc: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ed4dc: stur            w0, [x2, #0x17]
    // 0x6ed4e0: r1 = <Widget>
    //     0x6ed4e0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ed4e4: r0 = AllocateGrowableArray()
    //     0x6ed4e4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ed4e8: mov             x1, x0
    // 0x6ed4ec: ldur            x0, [fp, #-8]
    // 0x6ed4f0: stur            x1, [fp, #-0x10]
    // 0x6ed4f4: StoreField: r1->field_f = r0
    //     0x6ed4f4: stur            w0, [x1, #0xf]
    // 0x6ed4f8: r2 = 6
    //     0x6ed4f8: mov             x2, #6
    // 0x6ed4fc: StoreField: r1->field_b = r2
    //     0x6ed4fc: stur            w2, [x1, #0xb]
    // 0x6ed500: r0 = Row()
    //     0x6ed500: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ed504: mov             x2, x0
    // 0x6ed508: r0 = Instance_Axis
    //     0x6ed508: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ed50c: stur            x2, [fp, #-8]
    // 0x6ed510: StoreField: r2->field_f = r0
    //     0x6ed510: stur            w0, [x2, #0xf]
    // 0x6ed514: r0 = Instance_MainAxisAlignment
    //     0x6ed514: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ed518: ldr             x0, [x0, #0x230]
    // 0x6ed51c: StoreField: r2->field_13 = r0
    //     0x6ed51c: stur            w0, [x2, #0x13]
    // 0x6ed520: r0 = Instance_MainAxisSize
    //     0x6ed520: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ed524: ldr             x0, [x0, #0x330]
    // 0x6ed528: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ed528: stur            w0, [x2, #0x17]
    // 0x6ed52c: r0 = Instance_CrossAxisAlignment
    //     0x6ed52c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ed530: ldr             x0, [x0, #0x338]
    // 0x6ed534: StoreField: r2->field_1b = r0
    //     0x6ed534: stur            w0, [x2, #0x1b]
    // 0x6ed538: r0 = Instance_VerticalDirection
    //     0x6ed538: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ed53c: ldr             x0, [x0, #0x340]
    // 0x6ed540: StoreField: r2->field_23 = r0
    //     0x6ed540: stur            w0, [x2, #0x23]
    // 0x6ed544: r0 = Instance_Clip
    //     0x6ed544: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ed548: ldr             x0, [x0, #0x348]
    // 0x6ed54c: StoreField: r2->field_2b = r0
    //     0x6ed54c: stur            w0, [x2, #0x2b]
    // 0x6ed550: StoreField: r2->field_2f = rZR
    //     0x6ed550: stur            xzr, [x2, #0x2f]
    // 0x6ed554: ldur            x0, [fp, #-0x10]
    // 0x6ed558: StoreField: r2->field_b = r0
    //     0x6ed558: stur            w0, [x2, #0xb]
    // 0x6ed55c: r1 = <String>
    //     0x6ed55c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6ed560: r0 = PopupMenuItem()
    //     0x6ed560: bl              #0x6ed5e8  ; AllocatePopupMenuItemStub -> PopupMenuItem<X0> (size=0x38)
    // 0x6ed564: mov             x3, x0
    // 0x6ed568: r0 = "toggle"
    //     0x6ed568: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a408] "toggle"
    //     0x6ed56c: ldr             x0, [x0, #0x408]
    // 0x6ed570: stur            x3, [fp, #-0x10]
    // 0x6ed574: StoreField: r3->field_f = r0
    //     0x6ed574: stur            w0, [x3, #0xf]
    // 0x6ed578: r0 = true
    //     0x6ed578: add             x0, NULL, #0x20  ; true
    // 0x6ed57c: ArrayStore: r3[0] = r0  ; List_4
    //     0x6ed57c: stur            w0, [x3, #0x17]
    // 0x6ed580: d0 = 48.000000
    //     0x6ed580: ldr             d0, [PP, #0x7028]  ; [pp+0x7028] IMM: double(48) from 0x4048000000000000
    // 0x6ed584: StoreField: r3->field_1b = d0
    //     0x6ed584: stur            d0, [x3, #0x1b]
    // 0x6ed588: ldur            x0, [fp, #-8]
    // 0x6ed58c: StoreField: r3->field_33 = r0
    //     0x6ed58c: stur            w0, [x3, #0x33]
    // 0x6ed590: r1 = Null
    //     0x6ed590: mov             x1, NULL
    // 0x6ed594: r2 = 6
    //     0x6ed594: mov             x2, #6
    // 0x6ed598: r0 = AllocateArray()
    //     0x6ed598: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ed59c: stur            x0, [fp, #-8]
    // 0x6ed5a0: r16 = Instance_PopupMenuItem
    //     0x6ed5a0: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a4e0] Obj!PopupMenuItem<String>@a20b21
    //     0x6ed5a4: ldr             x16, [x16, #0x4e0]
    // 0x6ed5a8: StoreField: r0->field_f = r16
    //     0x6ed5a8: stur            w16, [x0, #0xf]
    // 0x6ed5ac: ldur            x1, [fp, #-0x10]
    // 0x6ed5b0: StoreField: r0->field_13 = r1
    //     0x6ed5b0: stur            w1, [x0, #0x13]
    // 0x6ed5b4: r16 = Instance_PopupMenuItem
    //     0x6ed5b4: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a4e8] Obj!PopupMenuItem<String>@a20ae1
    //     0x6ed5b8: ldr             x16, [x16, #0x4e8]
    // 0x6ed5bc: ArrayStore: r0[0] = r16  ; List_4
    //     0x6ed5bc: stur            w16, [x0, #0x17]
    // 0x6ed5c0: r1 = <PopupMenuEntry<String>>
    //     0x6ed5c0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a4f0] TypeArguments: <PopupMenuEntry<String>>
    //     0x6ed5c4: ldr             x1, [x1, #0x4f0]
    // 0x6ed5c8: r0 = AllocateGrowableArray()
    //     0x6ed5c8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ed5cc: ldur            x1, [fp, #-8]
    // 0x6ed5d0: StoreField: r0->field_f = r1
    //     0x6ed5d0: stur            w1, [x0, #0xf]
    // 0x6ed5d4: r1 = 6
    //     0x6ed5d4: mov             x1, #6
    // 0x6ed5d8: StoreField: r0->field_b = r1
    //     0x6ed5d8: stur            w1, [x0, #0xb]
    // 0x6ed5dc: LeaveFrame
    //     0x6ed5dc: mov             SP, fp
    //     0x6ed5e0: ldp             fp, lr, [SP], #0x10
    // 0x6ed5e4: ret
    //     0x6ed5e4: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ed684, size: 0x60
    // 0x6ed684: EnterFrame
    //     0x6ed684: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed688: mov             fp, SP
    // 0x6ed68c: ldr             x0, [fp, #0x10]
    // 0x6ed690: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6ed690: ldur            w1, [x0, #0x17]
    // 0x6ed694: DecompressPointer r1
    //     0x6ed694: add             x1, x1, HEAP, lsl #32
    // 0x6ed698: CheckStackOverflow
    //     0x6ed698: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed69c: cmp             SP, x16
    //     0x6ed6a0: b.ls            #0x6ed6dc
    // 0x6ed6a4: LoadField: r0 = r1->field_b
    //     0x6ed6a4: ldur            w0, [x1, #0xb]
    // 0x6ed6a8: DecompressPointer r0
    //     0x6ed6a8: add             x0, x0, HEAP, lsl #32
    // 0x6ed6ac: LoadField: r2 = r0->field_f
    //     0x6ed6ac: ldur            w2, [x0, #0xf]
    // 0x6ed6b0: DecompressPointer r2
    //     0x6ed6b0: add             x2, x2, HEAP, lsl #32
    // 0x6ed6b4: LoadField: r0 = r1->field_f
    //     0x6ed6b4: ldur            w0, [x1, #0xf]
    // 0x6ed6b8: DecompressPointer r0
    //     0x6ed6b8: add             x0, x0, HEAP, lsl #32
    // 0x6ed6bc: mov             x1, x2
    // 0x6ed6c0: mov             x2, x0
    // 0x6ed6c4: r3 = Null
    //     0x6ed6c4: mov             x3, NULL
    // 0x6ed6c8: r0 = _showAgencyDialog()
    //     0x6ed6c8: bl              #0x6ec3c8  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showAgencyDialog
    // 0x6ed6cc: r0 = Null
    //     0x6ed6cc: mov             x0, NULL
    // 0x6ed6d0: LeaveFrame
    //     0x6ed6d0: mov             SP, fp
    //     0x6ed6d4: ldp             fp, lr, [SP], #0x10
    // 0x6ed6d8: ret
    //     0x6ed6d8: ret             
    // 0x6ed6dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed6dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed6e0: b               #0x6ed6a4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ed6e4, size: 0x50
    // 0x6ed6e4: EnterFrame
    //     0x6ed6e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed6e8: mov             fp, SP
    // 0x6ed6ec: ldr             x0, [fp, #0x10]
    // 0x6ed6f0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6ed6f0: ldur            w1, [x0, #0x17]
    // 0x6ed6f4: DecompressPointer r1
    //     0x6ed6f4: add             x1, x1, HEAP, lsl #32
    // 0x6ed6f8: CheckStackOverflow
    //     0x6ed6f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed6fc: cmp             SP, x16
    //     0x6ed700: b.ls            #0x6ed72c
    // 0x6ed704: LoadField: r0 = r1->field_f
    //     0x6ed704: ldur            w0, [x1, #0xf]
    // 0x6ed708: DecompressPointer r0
    //     0x6ed708: add             x0, x0, HEAP, lsl #32
    // 0x6ed70c: LoadField: r2 = r1->field_13
    //     0x6ed70c: ldur            w2, [x1, #0x13]
    // 0x6ed710: DecompressPointer r2
    //     0x6ed710: add             x2, x2, HEAP, lsl #32
    // 0x6ed714: mov             x1, x0
    // 0x6ed718: r0 = _showLogoutDialog()
    //     0x6ed718: bl              #0x6ed734  ; [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showLogoutDialog
    // 0x6ed71c: r0 = Null
    //     0x6ed71c: mov             x0, NULL
    // 0x6ed720: LeaveFrame
    //     0x6ed720: mov             SP, fp
    //     0x6ed724: ldp             fp, lr, [SP], #0x10
    // 0x6ed728: ret
    //     0x6ed728: ret             
    // 0x6ed72c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed72c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed730: b               #0x6ed704
  }
  _ _showLogoutDialog(/* No info */) {
    // ** addr: 0x6ed734, size: 0x5c
    // 0x6ed734: EnterFrame
    //     0x6ed734: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed738: mov             fp, SP
    // 0x6ed73c: AllocStack(0x20)
    //     0x6ed73c: sub             SP, SP, #0x20
    // 0x6ed740: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x6ed740: mov             x0, x2
    //     0x6ed744: stur            x2, [fp, #-8]
    // 0x6ed748: CheckStackOverflow
    //     0x6ed748: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed74c: cmp             SP, x16
    //     0x6ed750: b.ls            #0x6ed788
    // 0x6ed754: r1 = Function '<anonymous closure>':.
    //     0x6ed754: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a510] AnonymousClosure: (0x6ed790), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showLogoutDialog (0x6ed734)
    //     0x6ed758: ldr             x1, [x1, #0x510]
    // 0x6ed75c: r2 = Null
    //     0x6ed75c: mov             x2, NULL
    // 0x6ed760: r0 = AllocateClosure()
    //     0x6ed760: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ed764: stp             x0, NULL, [SP, #8]
    // 0x6ed768: ldur            x16, [fp, #-8]
    // 0x6ed76c: str             x16, [SP]
    // 0x6ed770: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6ed770: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6ed774: r0 = showDialog()
    //     0x6ed774: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6ed778: r0 = Null
    //     0x6ed778: mov             x0, NULL
    // 0x6ed77c: LeaveFrame
    //     0x6ed77c: mov             SP, fp
    //     0x6ed780: ldp             fp, lr, [SP], #0x10
    // 0x6ed784: ret
    //     0x6ed784: ret             
    // 0x6ed788: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed788: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed78c: b               #0x6ed754
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6ed790, size: 0x1e4
    // 0x6ed790: EnterFrame
    //     0x6ed790: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed794: mov             fp, SP
    // 0x6ed798: AllocStack(0x38)
    //     0x6ed798: sub             SP, SP, #0x38
    // 0x6ed79c: SetupParameters([dynamic _ /* r0 */])
    //     0x6ed79c: ldr             x0, [fp, #0x18]
    //     0x6ed7a0: ldur            w1, [x0, #0x17]
    //     0x6ed7a4: add             x1, x1, HEAP, lsl #32
    //     0x6ed7a8: stur            x1, [fp, #-8]
    // 0x6ed7ac: CheckStackOverflow
    //     0x6ed7ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed7b0: cmp             SP, x16
    //     0x6ed7b4: b.ls            #0x6ed96c
    // 0x6ed7b8: r1 = 1
    //     0x6ed7b8: mov             x1, #1
    // 0x6ed7bc: r0 = AllocateContext()
    //     0x6ed7bc: bl              #0x927010  ; AllocateContextStub
    // 0x6ed7c0: mov             x1, x0
    // 0x6ed7c4: ldur            x0, [fp, #-8]
    // 0x6ed7c8: stur            x1, [fp, #-0x10]
    // 0x6ed7cc: StoreField: r1->field_b = r0
    //     0x6ed7cc: stur            w0, [x1, #0xb]
    // 0x6ed7d0: ldr             x0, [fp, #0x10]
    // 0x6ed7d4: StoreField: r1->field_f = r0
    //     0x6ed7d4: stur            w0, [x1, #0xf]
    // 0x6ed7d8: r0 = Radius()
    //     0x6ed7d8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ed7dc: d0 = 16.000000
    //     0x6ed7dc: fmov            d0, #16.00000000
    // 0x6ed7e0: stur            x0, [fp, #-8]
    // 0x6ed7e4: StoreField: r0->field_7 = d0
    //     0x6ed7e4: stur            d0, [x0, #7]
    // 0x6ed7e8: StoreField: r0->field_f = d0
    //     0x6ed7e8: stur            d0, [x0, #0xf]
    // 0x6ed7ec: r0 = BorderRadius()
    //     0x6ed7ec: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ed7f0: mov             x1, x0
    // 0x6ed7f4: ldur            x0, [fp, #-8]
    // 0x6ed7f8: stur            x1, [fp, #-0x18]
    // 0x6ed7fc: StoreField: r1->field_7 = r0
    //     0x6ed7fc: stur            w0, [x1, #7]
    // 0x6ed800: StoreField: r1->field_b = r0
    //     0x6ed800: stur            w0, [x1, #0xb]
    // 0x6ed804: StoreField: r1->field_f = r0
    //     0x6ed804: stur            w0, [x1, #0xf]
    // 0x6ed808: StoreField: r1->field_13 = r0
    //     0x6ed808: stur            w0, [x1, #0x13]
    // 0x6ed80c: r0 = RoundedRectangleBorder()
    //     0x6ed80c: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6ed810: mov             x3, x0
    // 0x6ed814: ldur            x0, [fp, #-0x18]
    // 0x6ed818: stur            x3, [fp, #-8]
    // 0x6ed81c: StoreField: r3->field_b = r0
    //     0x6ed81c: stur            w0, [x3, #0xb]
    // 0x6ed820: r0 = Instance_BorderSide
    //     0x6ed820: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6ed824: ldr             x0, [x0, #0xcb8]
    // 0x6ed828: StoreField: r3->field_7 = r0
    //     0x6ed828: stur            w0, [x3, #7]
    // 0x6ed82c: ldur            x2, [fp, #-0x10]
    // 0x6ed830: r1 = Function '<anonymous closure>':.
    //     0x6ed830: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a518] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6ed834: ldr             x1, [x1, #0x518]
    // 0x6ed838: r0 = AllocateClosure()
    //     0x6ed838: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ed83c: stur            x0, [fp, #-0x18]
    // 0x6ed840: r0 = TextButton()
    //     0x6ed840: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6ed844: mov             x1, x0
    // 0x6ed848: ldur            x0, [fp, #-0x18]
    // 0x6ed84c: stur            x1, [fp, #-0x20]
    // 0x6ed850: StoreField: r1->field_b = r0
    //     0x6ed850: stur            w0, [x1, #0xb]
    // 0x6ed854: r0 = false
    //     0x6ed854: add             x0, NULL, #0x30  ; false
    // 0x6ed858: StoreField: r1->field_27 = r0
    //     0x6ed858: stur            w0, [x1, #0x27]
    // 0x6ed85c: r2 = true
    //     0x6ed85c: add             x2, NULL, #0x20  ; true
    // 0x6ed860: StoreField: r1->field_2f = r2
    //     0x6ed860: stur            w2, [x1, #0x2f]
    // 0x6ed864: r3 = Instance_Text
    //     0x6ed864: add             x3, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x6ed868: ldr             x3, [x3, #0x198]
    // 0x6ed86c: StoreField: r1->field_37 = r3
    //     0x6ed86c: stur            w3, [x1, #0x37]
    // 0x6ed870: r16 = Instance_Color
    //     0x6ed870: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6ed874: ldr             x16, [x16, #0xf30]
    // 0x6ed878: r30 = Instance_Color
    //     0x6ed878: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ed87c: stp             lr, x16, [SP]
    // 0x6ed880: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6ed880: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6ed884: ldr             x4, [x4, #0x1a8]
    // 0x6ed888: r0 = styleFrom()
    //     0x6ed888: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6ed88c: ldur            x2, [fp, #-0x10]
    // 0x6ed890: r1 = Function '<anonymous closure>':.
    //     0x6ed890: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a520] AnonymousClosure: (0x6ed974), in [package:umrem_demo/features/admin/screens/super_admin_dashboard.dart] _SuperAdminDashboardState::_showLogoutDialog (0x6ed734)
    //     0x6ed894: ldr             x1, [x1, #0x520]
    // 0x6ed898: stur            x0, [fp, #-0x10]
    // 0x6ed89c: r0 = AllocateClosure()
    //     0x6ed89c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ed8a0: stur            x0, [fp, #-0x18]
    // 0x6ed8a4: r0 = ElevatedButton()
    //     0x6ed8a4: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6ed8a8: mov             x3, x0
    // 0x6ed8ac: ldur            x0, [fp, #-0x18]
    // 0x6ed8b0: stur            x3, [fp, #-0x28]
    // 0x6ed8b4: StoreField: r3->field_b = r0
    //     0x6ed8b4: stur            w0, [x3, #0xb]
    // 0x6ed8b8: ldur            x0, [fp, #-0x10]
    // 0x6ed8bc: StoreField: r3->field_1b = r0
    //     0x6ed8bc: stur            w0, [x3, #0x1b]
    // 0x6ed8c0: r0 = false
    //     0x6ed8c0: add             x0, NULL, #0x30  ; false
    // 0x6ed8c4: StoreField: r3->field_27 = r0
    //     0x6ed8c4: stur            w0, [x3, #0x27]
    // 0x6ed8c8: r1 = true
    //     0x6ed8c8: add             x1, NULL, #0x20  ; true
    // 0x6ed8cc: StoreField: r3->field_2f = r1
    //     0x6ed8cc: stur            w1, [x3, #0x2f]
    // 0x6ed8d0: r1 = Instance_Text
    //     0x6ed8d0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a528] Obj!Text@a1bea1
    //     0x6ed8d4: ldr             x1, [x1, #0x528]
    // 0x6ed8d8: StoreField: r3->field_37 = r1
    //     0x6ed8d8: stur            w1, [x3, #0x37]
    // 0x6ed8dc: r1 = Null
    //     0x6ed8dc: mov             x1, NULL
    // 0x6ed8e0: r2 = 4
    //     0x6ed8e0: mov             x2, #4
    // 0x6ed8e4: r0 = AllocateArray()
    //     0x6ed8e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ed8e8: mov             x2, x0
    // 0x6ed8ec: ldur            x0, [fp, #-0x20]
    // 0x6ed8f0: stur            x2, [fp, #-0x10]
    // 0x6ed8f4: StoreField: r2->field_f = r0
    //     0x6ed8f4: stur            w0, [x2, #0xf]
    // 0x6ed8f8: ldur            x0, [fp, #-0x28]
    // 0x6ed8fc: StoreField: r2->field_13 = r0
    //     0x6ed8fc: stur            w0, [x2, #0x13]
    // 0x6ed900: r1 = <Widget>
    //     0x6ed900: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ed904: r0 = AllocateGrowableArray()
    //     0x6ed904: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ed908: mov             x1, x0
    // 0x6ed90c: ldur            x0, [fp, #-0x10]
    // 0x6ed910: stur            x1, [fp, #-0x18]
    // 0x6ed914: StoreField: r1->field_f = r0
    //     0x6ed914: stur            w0, [x1, #0xf]
    // 0x6ed918: r0 = 4
    //     0x6ed918: mov             x0, #4
    // 0x6ed91c: StoreField: r1->field_b = r0
    //     0x6ed91c: stur            w0, [x1, #0xb]
    // 0x6ed920: r0 = AlertDialog()
    //     0x6ed920: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6ed924: r1 = Instance_Text
    //     0x6ed924: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a530] Obj!Text@a1be51
    //     0x6ed928: ldr             x1, [x1, #0x530]
    // 0x6ed92c: StoreField: r0->field_f = r1
    //     0x6ed92c: stur            w1, [x0, #0xf]
    // 0x6ed930: r1 = Instance_Text
    //     0x6ed930: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a538] Obj!Text@a1be01
    //     0x6ed934: ldr             x1, [x1, #0x538]
    // 0x6ed938: StoreField: r0->field_1b = r1
    //     0x6ed938: stur            w1, [x0, #0x1b]
    // 0x6ed93c: ldur            x1, [fp, #-0x18]
    // 0x6ed940: StoreField: r0->field_27 = r1
    //     0x6ed940: stur            w1, [x0, #0x27]
    // 0x6ed944: r1 = Instance_Color
    //     0x6ed944: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6ed948: ldr             x1, [x1, #0x1c0]
    // 0x6ed94c: StoreField: r0->field_43 = r1
    //     0x6ed94c: stur            w1, [x0, #0x43]
    // 0x6ed950: ldur            x1, [fp, #-8]
    // 0x6ed954: StoreField: r0->field_5f = r1
    //     0x6ed954: stur            w1, [x0, #0x5f]
    // 0x6ed958: r1 = false
    //     0x6ed958: add             x1, NULL, #0x30  ; false
    // 0x6ed95c: StoreField: r0->field_6b = r1
    //     0x6ed95c: stur            w1, [x0, #0x6b]
    // 0x6ed960: LeaveFrame
    //     0x6ed960: mov             SP, fp
    //     0x6ed964: ldp             fp, lr, [SP], #0x10
    // 0x6ed968: ret
    //     0x6ed968: ret             
    // 0x6ed96c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed96c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed970: b               #0x6ed7b8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ed974, size: 0x88
    // 0x6ed974: EnterFrame
    //     0x6ed974: stp             fp, lr, [SP, #-0x10]!
    //     0x6ed978: mov             fp, SP
    // 0x6ed97c: AllocStack(0x20)
    //     0x6ed97c: sub             SP, SP, #0x20
    // 0x6ed980: SetupParameters([dynamic _ /* r1 */])
    //     0x6ed980: mov             x3, NULL
    //     0x6ed984: add             x0, NULL, #0x30  ; false
    //     0x6ed988: ldr             x1, [fp, #0x10]
    //     0x6ed98c: ldur            w2, [x1, #0x17]
    //     0x6ed990: add             x2, x2, HEAP, lsl #32
    // 0x6ed980: r3 = Null
    // 0x6ed984: r0 = false
    // 0x6ed994: CheckStackOverflow
    //     0x6ed994: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ed998: cmp             SP, x16
    //     0x6ed99c: b.ls            #0x6ed9f4
    // 0x6ed9a0: StoreStaticField(0xfe8, r0)
    //     0x6ed9a0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6ed9a4: str             x0, [x1, #0x1fd0]
    // 0x6ed9a8: StoreStaticField(0xfe4, r3)
    //     0x6ed9a8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6ed9ac: str             x3, [x0, #0x1fc8]
    // 0x6ed9b0: LoadField: r0 = r2->field_f
    //     0x6ed9b0: ldur            w0, [x2, #0xf]
    // 0x6ed9b4: DecompressPointer r0
    //     0x6ed9b4: add             x0, x0, HEAP, lsl #32
    // 0x6ed9b8: mov             x2, x3
    // 0x6ed9bc: stur            x0, [fp, #-8]
    // 0x6ed9c0: r1 = Function '<anonymous closure>':.
    //     0x6ed9c0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a540] Function: [dart:core] Object::_simpleInstanceOfFalse (0x924db0)
    //     0x6ed9c4: ldr             x1, [x1, #0x540]
    // 0x6ed9c8: r0 = AllocateClosure()
    //     0x6ed9c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ed9cc: r16 = <Object?>
    //     0x6ed9cc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6ed9d0: ldur            lr, [fp, #-8]
    // 0x6ed9d4: stp             lr, x16, [SP, #8]
    // 0x6ed9d8: str             x0, [SP]
    // 0x6ed9dc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6ed9dc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6ed9e0: r0 = pushNamedAndRemoveUntil()
    //     0x6ed9e0: bl              #0x6ed9fc  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamedAndRemoveUntil
    // 0x6ed9e4: r0 = Null
    //     0x6ed9e4: mov             x0, NULL
    // 0x6ed9e8: LeaveFrame
    //     0x6ed9e8: mov             SP, fp
    //     0x6ed9ec: ldp             fp, lr, [SP], #0x10
    // 0x6ed9f0: ret
    //     0x6ed9f0: ret             
    // 0x6ed9f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ed9f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ed9f8: b               #0x6ed9a0
  }
}

// class id: 3211, size: 0xc, field offset: 0xc
//   const constructor, 
class SuperAdminDashboard extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd5bc, size: 0x24
    // 0x7bd5bc: EnterFrame
    //     0x7bd5bc: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd5c0: mov             fp, SP
    // 0x7bd5c4: mov             x0, x1
    // 0x7bd5c8: r1 = <SuperAdminDashboard>
    //     0x7bd5c8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12828] TypeArguments: <SuperAdminDashboard>
    //     0x7bd5cc: ldr             x1, [x1, #0x828]
    // 0x7bd5d0: r0 = _SuperAdminDashboardState()
    //     0x7bd5d0: bl              #0x7bd5e0  ; Allocate_SuperAdminDashboardStateStub -> _SuperAdminDashboardState (size=0x14)
    // 0x7bd5d4: LeaveFrame
    //     0x7bd5d4: mov             SP, fp
    //     0x7bd5d8: ldp             fp, lr, [SP], #0x10
    // 0x7bd5dc: ret
    //     0x7bd5dc: ret             
  }
}

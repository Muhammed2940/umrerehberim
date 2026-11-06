// lib: , url: package:umrem_demo/features/admin/screens/users/user_detail_screen.dart

// class id: 1049539, size: 0x8
class :: {
}

// class id: 2926, size: 0x14, field offset: 0xc
//   const constructor, 
class UserDetailScreen extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e1cc0, size: 0x2f4
    // 0x7e1cc0: EnterFrame
    //     0x7e1cc0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1cc4: mov             fp, SP
    // 0x7e1cc8: AllocStack(0x48)
    //     0x7e1cc8: sub             SP, SP, #0x48
    // 0x7e1ccc: CheckStackOverflow
    //     0x7e1ccc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1cd0: cmp             SP, x16
    //     0x7e1cd4: b.ls            #0x7e1fa8
    // 0x7e1cd8: r16 = <Object?>
    //     0x7e1cd8: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7e1cdc: stp             x2, x16, [SP]
    // 0x7e1ce0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e1ce0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e1ce4: r0 = of()
    //     0x7e1ce4: bl              #0x40b89c  ; [package:flutter/src/widgets/routes.dart] ModalRoute::of
    // 0x7e1ce8: cmp             w0, NULL
    // 0x7e1cec: b.ne            #0x7e1cf8
    // 0x7e1cf0: r3 = Null
    //     0x7e1cf0: mov             x3, NULL
    // 0x7e1cf4: b               #0x7e1d0c
    // 0x7e1cf8: LoadField: r1 = r0->field_13
    //     0x7e1cf8: ldur            w1, [x0, #0x13]
    // 0x7e1cfc: DecompressPointer r1
    //     0x7e1cfc: add             x1, x1, HEAP, lsl #32
    // 0x7e1d00: LoadField: r0 = r1->field_b
    //     0x7e1d00: ldur            w0, [x1, #0xb]
    // 0x7e1d04: DecompressPointer r0
    //     0x7e1d04: add             x0, x0, HEAP, lsl #32
    // 0x7e1d08: mov             x3, x0
    // 0x7e1d0c: mov             x0, x3
    // 0x7e1d10: stur            x3, [fp, #-8]
    // 0x7e1d14: r2 = Null
    //     0x7e1d14: mov             x2, NULL
    // 0x7e1d18: r1 = Null
    //     0x7e1d18: mov             x1, NULL
    // 0x7e1d1c: r8 = Map<String, dynamic>?
    //     0x7e1d1c: ldr             x8, [PP, #0x1838]  ; [pp+0x1838] Type: Map<String, dynamic>?
    // 0x7e1d20: r3 = Null
    //     0x7e1d20: add             x3, PP, #0x12, lsl #12  ; [pp+0x125f0] Null
    //     0x7e1d24: ldr             x3, [x3, #0x5f0]
    // 0x7e1d28: r0 = Map<String, dynamic>?()
    //     0x7e1d28: bl              #0x48a284  ; IsType_Map<String, dynamic>?_Stub
    // 0x7e1d2c: ldur            x3, [fp, #-8]
    // 0x7e1d30: cmp             w3, NULL
    // 0x7e1d34: b.ne            #0x7e1d40
    // 0x7e1d38: r4 = Null
    //     0x7e1d38: mov             x4, NULL
    // 0x7e1d3c: b               #0x7e1d68
    // 0x7e1d40: r0 = LoadClassIdInstr(r3)
    //     0x7e1d40: ldur            x0, [x3, #-1]
    //     0x7e1d44: ubfx            x0, x0, #0xc, #0x14
    // 0x7e1d48: mov             x1, x3
    // 0x7e1d4c: r2 = "user"
    //     0x7e1d4c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12600] "user"
    //     0x7e1d50: ldr             x2, [x2, #0x600]
    // 0x7e1d54: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7e1d54: add             lr, x0, #0x36e
    //     0x7e1d58: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1d5c: blr             lr
    // 0x7e1d60: mov             x4, x0
    // 0x7e1d64: ldur            x3, [fp, #-8]
    // 0x7e1d68: mov             x0, x4
    // 0x7e1d6c: stur            x4, [fp, #-0x10]
    // 0x7e1d70: r2 = Null
    //     0x7e1d70: mov             x2, NULL
    // 0x7e1d74: r1 = Null
    //     0x7e1d74: mov             x1, NULL
    // 0x7e1d78: r4 = 60
    //     0x7e1d78: mov             x4, #0x3c
    // 0x7e1d7c: branchIfSmi(r0, 0x7e1d88)
    //     0x7e1d7c: tbz             w0, #0, #0x7e1d88
    // 0x7e1d80: r4 = LoadClassIdInstr(r0)
    //     0x7e1d80: ldur            x4, [x0, #-1]
    //     0x7e1d84: ubfx            x4, x4, #0xc, #0x14
    // 0x7e1d88: cmp             x4, #0xc6
    // 0x7e1d8c: b.eq            #0x7e1da4
    // 0x7e1d90: r8 = UserModel
    //     0x7e1d90: add             x8, PP, #0x12, lsl #12  ; [pp+0x12608] Type: UserModel
    //     0x7e1d94: ldr             x8, [x8, #0x608]
    // 0x7e1d98: r3 = Null
    //     0x7e1d98: add             x3, PP, #0x12, lsl #12  ; [pp+0x12610] Null
    //     0x7e1d9c: ldr             x3, [x3, #0x610]
    // 0x7e1da0: r0 = UserModel()
    //     0x7e1da0: bl              #0x5db70c  ; IsType_UserModel_Stub
    // 0x7e1da4: ldur            x1, [fp, #-8]
    // 0x7e1da8: cmp             w1, NULL
    // 0x7e1dac: b.ne            #0x7e1db8
    // 0x7e1db0: r4 = Null
    //     0x7e1db0: mov             x4, NULL
    // 0x7e1db4: b               #0x7e1dd8
    // 0x7e1db8: r0 = LoadClassIdInstr(r1)
    //     0x7e1db8: ldur            x0, [x1, #-1]
    //     0x7e1dbc: ubfx            x0, x0, #0xc, #0x14
    // 0x7e1dc0: r2 = "admin"
    //     0x7e1dc0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12620] "admin"
    //     0x7e1dc4: ldr             x2, [x2, #0x620]
    // 0x7e1dc8: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7e1dc8: add             lr, x0, #0x36e
    //     0x7e1dcc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1dd0: blr             lr
    // 0x7e1dd4: mov             x4, x0
    // 0x7e1dd8: ldur            x3, [fp, #-0x10]
    // 0x7e1ddc: mov             x0, x4
    // 0x7e1de0: stur            x4, [fp, #-8]
    // 0x7e1de4: r2 = Null
    //     0x7e1de4: mov             x2, NULL
    // 0x7e1de8: r1 = Null
    //     0x7e1de8: mov             x1, NULL
    // 0x7e1dec: r4 = 60
    //     0x7e1dec: mov             x4, #0x3c
    // 0x7e1df0: branchIfSmi(r0, 0x7e1dfc)
    //     0x7e1df0: tbz             w0, #0, #0x7e1dfc
    // 0x7e1df4: r4 = LoadClassIdInstr(r0)
    //     0x7e1df4: ldur            x4, [x0, #-1]
    //     0x7e1df8: ubfx            x4, x4, #0xc, #0x14
    // 0x7e1dfc: cmp             x4, #0xf20
    // 0x7e1e00: b.eq            #0x7e1e18
    // 0x7e1e04: r8 = AdminProvider
    //     0x7e1e04: add             x8, PP, #0x12, lsl #12  ; [pp+0x12628] Type: AdminProvider
    //     0x7e1e08: ldr             x8, [x8, #0x628]
    // 0x7e1e0c: r3 = Null
    //     0x7e1e0c: add             x3, PP, #0x12, lsl #12  ; [pp+0x12630] Null
    //     0x7e1e10: ldr             x3, [x3, #0x630]
    // 0x7e1e14: r0 = AdminProvider()
    //     0x7e1e14: bl              #0x5d2f54  ; IsType_AdminProvider_Stub
    // 0x7e1e18: ldur            x0, [fp, #-0x10]
    // 0x7e1e1c: LoadField: r1 = r0->field_b
    //     0x7e1e1c: ldur            w1, [x0, #0xb]
    // 0x7e1e20: DecompressPointer r1
    //     0x7e1e20: add             x1, x1, HEAP, lsl #32
    // 0x7e1e24: LoadField: r2 = r1->field_7
    //     0x7e1e24: ldur            w2, [x1, #7]
    // 0x7e1e28: cbnz            w2, #0x7e1e38
    // 0x7e1e2c: r2 = "Kişi Detayı"
    //     0x7e1e2c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12640] "Kişi Detayı"
    //     0x7e1e30: ldr             x2, [x2, #0x640]
    // 0x7e1e34: b               #0x7e1e3c
    // 0x7e1e38: mov             x2, x1
    // 0x7e1e3c: ldur            x1, [fp, #-8]
    // 0x7e1e40: stur            x2, [fp, #-0x18]
    // 0x7e1e44: r0 = Text()
    //     0x7e1e44: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e1e48: mov             x1, x0
    // 0x7e1e4c: ldur            x0, [fp, #-0x18]
    // 0x7e1e50: stur            x1, [fp, #-0x20]
    // 0x7e1e54: StoreField: r1->field_b = r0
    //     0x7e1e54: stur            w0, [x1, #0xb]
    // 0x7e1e58: r0 = AppBar()
    //     0x7e1e58: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7e1e5c: mov             x1, x0
    // 0x7e1e60: ldur            x2, [fp, #-0x20]
    // 0x7e1e64: stur            x0, [fp, #-0x18]
    // 0x7e1e68: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e1e68: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e1e6c: r0 = AppBar()
    //     0x7e1e6c: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7e1e70: ldur            x0, [fp, #-8]
    // 0x7e1e74: LoadField: r3 = r0->field_37
    //     0x7e1e74: ldur            w3, [x0, #0x37]
    // 0x7e1e78: DecompressPointer r3
    //     0x7e1e78: add             x3, x3, HEAP, lsl #32
    // 0x7e1e7c: stur            x3, [fp, #-0x30]
    // 0x7e1e80: LoadField: r4 = r0->field_3b
    //     0x7e1e80: ldur            w4, [x0, #0x3b]
    // 0x7e1e84: DecompressPointer r4
    //     0x7e1e84: add             x4, x4, HEAP, lsl #32
    // 0x7e1e88: stur            x4, [fp, #-0x28]
    // 0x7e1e8c: LoadField: r5 = r0->field_43
    //     0x7e1e8c: ldur            w5, [x0, #0x43]
    // 0x7e1e90: DecompressPointer r5
    //     0x7e1e90: add             x5, x5, HEAP, lsl #32
    // 0x7e1e94: stur            x5, [fp, #-0x20]
    // 0x7e1e98: r1 = _ConstMap len:12
    //     0x7e1e98: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e1e9c: r2 = 1600
    //     0x7e1e9c: mov             x2, #0x640
    // 0x7e1ea0: r0 = []()
    //     0x7e1ea0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e1ea4: cmp             w0, NULL
    // 0x7e1ea8: b.eq            #0x7e1fb0
    // 0x7e1eac: r0 = UserAssignmentCard()
    //     0x7e1eac: bl              #0x7e1fb4  ; AllocateUserAssignmentCardStub -> UserAssignmentCard (size=0x24)
    // 0x7e1eb0: mov             x3, x0
    // 0x7e1eb4: ldur            x0, [fp, #-0x10]
    // 0x7e1eb8: stur            x3, [fp, #-0x38]
    // 0x7e1ebc: StoreField: r3->field_b = r0
    //     0x7e1ebc: stur            w0, [x3, #0xb]
    // 0x7e1ec0: ldur            x0, [fp, #-8]
    // 0x7e1ec4: StoreField: r3->field_f = r0
    //     0x7e1ec4: stur            w0, [x3, #0xf]
    // 0x7e1ec8: ldur            x0, [fp, #-0x30]
    // 0x7e1ecc: StoreField: r3->field_13 = r0
    //     0x7e1ecc: stur            w0, [x3, #0x13]
    // 0x7e1ed0: ldur            x0, [fp, #-0x28]
    // 0x7e1ed4: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e1ed4: stur            w0, [x3, #0x17]
    // 0x7e1ed8: ldur            x0, [fp, #-0x20]
    // 0x7e1edc: StoreField: r3->field_1b = r0
    //     0x7e1edc: stur            w0, [x3, #0x1b]
    // 0x7e1ee0: r0 = Instance_MaterialColor
    //     0x7e1ee0: add             x0, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7e1ee4: ldr             x0, [x0, #0x5d8]
    // 0x7e1ee8: StoreField: r3->field_1f = r0
    //     0x7e1ee8: stur            w0, [x3, #0x1f]
    // 0x7e1eec: r1 = Null
    //     0x7e1eec: mov             x1, NULL
    // 0x7e1ef0: r2 = 2
    //     0x7e1ef0: mov             x2, #2
    // 0x7e1ef4: r0 = AllocateArray()
    //     0x7e1ef4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e1ef8: mov             x2, x0
    // 0x7e1efc: ldur            x0, [fp, #-0x38]
    // 0x7e1f00: stur            x2, [fp, #-8]
    // 0x7e1f04: StoreField: r2->field_f = r0
    //     0x7e1f04: stur            w0, [x2, #0xf]
    // 0x7e1f08: r1 = <Widget>
    //     0x7e1f08: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e1f0c: r0 = AllocateGrowableArray()
    //     0x7e1f0c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e1f10: mov             x1, x0
    // 0x7e1f14: ldur            x0, [fp, #-8]
    // 0x7e1f18: stur            x1, [fp, #-0x10]
    // 0x7e1f1c: StoreField: r1->field_f = r0
    //     0x7e1f1c: stur            w0, [x1, #0xf]
    // 0x7e1f20: r0 = 2
    //     0x7e1f20: mov             x0, #2
    // 0x7e1f24: StoreField: r1->field_b = r0
    //     0x7e1f24: stur            w0, [x1, #0xb]
    // 0x7e1f28: r0 = ListView()
    //     0x7e1f28: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x7e1f2c: mov             x1, x0
    // 0x7e1f30: ldur            x2, [fp, #-0x10]
    // 0x7e1f34: r3 = Instance_EdgeInsets
    //     0x7e1f34: add             x3, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e1f38: ldr             x3, [x3, #0x240]
    // 0x7e1f3c: stur            x0, [fp, #-8]
    // 0x7e1f40: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x7e1f40: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x7e1f44: r0 = ListView()
    //     0x7e1f44: bl              #0x67cae0  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x7e1f48: r0 = Scaffold()
    //     0x7e1f48: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7e1f4c: ldur            x1, [fp, #-0x18]
    // 0x7e1f50: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e1f50: stur            w1, [x0, #0x17]
    // 0x7e1f54: ldur            x1, [fp, #-8]
    // 0x7e1f58: StoreField: r0->field_1b = r1
    //     0x7e1f58: stur            w1, [x0, #0x1b]
    // 0x7e1f5c: r1 = Instance_AlignmentDirectional
    //     0x7e1f5c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7e1f60: ldr             x1, [x1, #0x350]
    // 0x7e1f64: StoreField: r0->field_2f = r1
    //     0x7e1f64: stur            w1, [x0, #0x2f]
    // 0x7e1f68: r1 = true
    //     0x7e1f68: add             x1, NULL, #0x20  ; true
    // 0x7e1f6c: StoreField: r0->field_5f = r1
    //     0x7e1f6c: stur            w1, [x0, #0x5f]
    // 0x7e1f70: r2 = Instance_DragStartBehavior
    //     0x7e1f70: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e1f74: StoreField: r0->field_63 = r2
    //     0x7e1f74: stur            w2, [x0, #0x63]
    // 0x7e1f78: r2 = false
    //     0x7e1f78: add             x2, NULL, #0x30  ; false
    // 0x7e1f7c: StoreField: r0->field_b = r2
    //     0x7e1f7c: stur            w2, [x0, #0xb]
    // 0x7e1f80: StoreField: r0->field_f = r1
    //     0x7e1f80: stur            w1, [x0, #0xf]
    // 0x7e1f84: StoreField: r0->field_13 = r2
    //     0x7e1f84: stur            w2, [x0, #0x13]
    // 0x7e1f88: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7e1f88: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7e1f8c: ldr             x2, [x2, #0x358]
    // 0x7e1f90: StoreField: r0->field_4b = r2
    //     0x7e1f90: stur            w2, [x0, #0x4b]
    // 0x7e1f94: StoreField: r0->field_6b = r1
    //     0x7e1f94: stur            w1, [x0, #0x6b]
    // 0x7e1f98: StoreField: r0->field_6f = r1
    //     0x7e1f98: stur            w1, [x0, #0x6f]
    // 0x7e1f9c: LeaveFrame
    //     0x7e1f9c: mov             SP, fp
    //     0x7e1fa0: ldp             fp, lr, [SP], #0x10
    // 0x7e1fa4: ret
    //     0x7e1fa4: ret             
    // 0x7e1fa8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1fa8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1fac: b               #0x7e1cd8
    // 0x7e1fb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e1fb0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

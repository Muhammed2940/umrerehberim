// lib: , url: package:umrem_demo/features/admin/screens/users/users_page.dart

// class id: 1049540, size: 0x8
class :: {
}

// class id: 2925, size: 0xc, field offset: 0xc
//   const constructor, 
class UsersPage extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e1fc0, size: 0x160
    // 0x7e1fc0: EnterFrame
    //     0x7e1fc0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1fc4: mov             fp, SP
    // 0x7e1fc8: AllocStack(0x20)
    //     0x7e1fc8: sub             SP, SP, #0x20
    // 0x7e1fcc: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x7e1fcc: stur            x2, [fp, #-8]
    // 0x7e1fd0: CheckStackOverflow
    //     0x7e1fd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1fd4: cmp             SP, x16
    //     0x7e1fd8: b.ls            #0x7e2118
    // 0x7e1fdc: r1 = 1
    //     0x7e1fdc: mov             x1, #1
    // 0x7e1fe0: r0 = AllocateContext()
    //     0x7e1fe0: bl              #0x927010  ; AllocateContextStub
    // 0x7e1fe4: mov             x2, x0
    // 0x7e1fe8: ldur            x0, [fp, #-8]
    // 0x7e1fec: stur            x2, [fp, #-0x10]
    // 0x7e1ff0: StoreField: r2->field_f = r0
    //     0x7e1ff0: stur            w0, [x2, #0xf]
    // 0x7e1ff4: r1 = Instance_MaterialColor
    //     0x7e1ff4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7e1ff8: ldr             x1, [x1, #0xbc8]
    // 0x7e1ffc: r0 = shade800()
    //     0x7e1ffc: bl              #0x6d9f48  ; [package:flutter/src/material/colors.dart] MaterialColor::shade800
    // 0x7e2000: r0 = AppBar()
    //     0x7e2000: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7e2004: mov             x1, x0
    // 0x7e2008: r2 = Instance_Text
    //     0x7e2008: add             x2, PP, #0x12, lsl #12  ; [pp+0x125a8] Obj!Text@a1d981
    //     0x7e200c: ldr             x2, [x2, #0x5a8]
    // 0x7e2010: stur            x0, [fp, #-8]
    // 0x7e2014: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e2014: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e2018: r0 = AppBar()
    //     0x7e2018: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7e201c: r0 = FloatingActionButton()
    //     0x7e201c: bl              #0x6d51a8  ; AllocateFloatingActionButtonStub -> FloatingActionButton (size=0x78)
    // 0x7e2020: mov             x3, x0
    // 0x7e2024: r0 = Instance_Icon
    //     0x7e2024: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x7e2028: ldr             x0, [x0, #0x5b0]
    // 0x7e202c: stur            x3, [fp, #-0x18]
    // 0x7e2030: StoreField: r3->field_b = r0
    //     0x7e2030: stur            w0, [x3, #0xb]
    // 0x7e2034: r0 = Instance__DefaultHeroTag
    //     0x7e2034: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b8] Obj!_DefaultHeroTag@a0f381
    //     0x7e2038: ldr             x0, [x0, #0x5b8]
    // 0x7e203c: StoreField: r3->field_27 = r0
    //     0x7e203c: stur            w0, [x3, #0x27]
    // 0x7e2040: ldur            x2, [fp, #-0x10]
    // 0x7e2044: r1 = Function '<anonymous closure>':.
    //     0x7e2044: add             x1, PP, #0x12, lsl #12  ; [pp+0x125c0] AnonymousClosure: (0x7e2158), in [package:umrem_demo/features/admin/screens/users/users_page.dart] UsersPage::build (0x7e1fc0)
    //     0x7e2048: ldr             x1, [x1, #0x5c0]
    // 0x7e204c: r0 = AllocateClosure()
    //     0x7e204c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e2050: mov             x1, x0
    // 0x7e2054: ldur            x0, [fp, #-0x18]
    // 0x7e2058: StoreField: r0->field_2b = r1
    //     0x7e2058: stur            w1, [x0, #0x2b]
    // 0x7e205c: r1 = Instance_Clip
    //     0x7e205c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2060: ldr             x1, [x1, #0x348]
    // 0x7e2064: StoreField: r0->field_4b = r1
    //     0x7e2064: stur            w1, [x0, #0x4b]
    // 0x7e2068: r3 = false
    //     0x7e2068: add             x3, NULL, #0x30  ; false
    // 0x7e206c: StoreField: r0->field_57 = r3
    //     0x7e206c: stur            w3, [x0, #0x57]
    // 0x7e2070: StoreField: r0->field_4f = r3
    //     0x7e2070: stur            w3, [x0, #0x4f]
    // 0x7e2074: r1 = Instance__FloatingActionButtonType
    //     0x7e2074: add             x1, PP, #0x12, lsl #12  ; [pp+0x125c8] Obj!_FloatingActionButtonType@a2ba91
    //     0x7e2078: ldr             x1, [x1, #0x5c8]
    // 0x7e207c: StoreField: r0->field_6f = r1
    //     0x7e207c: stur            w1, [x0, #0x6f]
    // 0x7e2080: r1 = Function '<anonymous closure>':.
    //     0x7e2080: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d0] AnonymousClosure: (0x7e2120), in [package:umrem_demo/features/admin/screens/users/users_page.dart] UsersPage::build (0x7e1fc0)
    //     0x7e2084: ldr             x1, [x1, #0x5d0]
    // 0x7e2088: r2 = Null
    //     0x7e2088: mov             x2, NULL
    // 0x7e208c: r0 = AllocateClosure()
    //     0x7e208c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e2090: r1 = <AdminProvider>
    //     0x7e2090: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x7e2094: ldr             x1, [x1, #0xb50]
    // 0x7e2098: stur            x0, [fp, #-0x10]
    // 0x7e209c: r0 = Consumer()
    //     0x7e209c: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7e20a0: mov             x1, x0
    // 0x7e20a4: ldur            x0, [fp, #-0x10]
    // 0x7e20a8: stur            x1, [fp, #-0x20]
    // 0x7e20ac: StoreField: r1->field_13 = r0
    //     0x7e20ac: stur            w0, [x1, #0x13]
    // 0x7e20b0: r0 = Scaffold()
    //     0x7e20b0: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7e20b4: ldur            x1, [fp, #-8]
    // 0x7e20b8: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e20b8: stur            w1, [x0, #0x17]
    // 0x7e20bc: ldur            x1, [fp, #-0x20]
    // 0x7e20c0: StoreField: r0->field_1b = r1
    //     0x7e20c0: stur            w1, [x0, #0x1b]
    // 0x7e20c4: ldur            x1, [fp, #-0x18]
    // 0x7e20c8: StoreField: r0->field_1f = r1
    //     0x7e20c8: stur            w1, [x0, #0x1f]
    // 0x7e20cc: r1 = Instance_AlignmentDirectional
    //     0x7e20cc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7e20d0: ldr             x1, [x1, #0x350]
    // 0x7e20d4: StoreField: r0->field_2f = r1
    //     0x7e20d4: stur            w1, [x0, #0x2f]
    // 0x7e20d8: r1 = true
    //     0x7e20d8: add             x1, NULL, #0x20  ; true
    // 0x7e20dc: StoreField: r0->field_5f = r1
    //     0x7e20dc: stur            w1, [x0, #0x5f]
    // 0x7e20e0: r2 = Instance_DragStartBehavior
    //     0x7e20e0: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e20e4: StoreField: r0->field_63 = r2
    //     0x7e20e4: stur            w2, [x0, #0x63]
    // 0x7e20e8: r2 = false
    //     0x7e20e8: add             x2, NULL, #0x30  ; false
    // 0x7e20ec: StoreField: r0->field_b = r2
    //     0x7e20ec: stur            w2, [x0, #0xb]
    // 0x7e20f0: StoreField: r0->field_f = r1
    //     0x7e20f0: stur            w1, [x0, #0xf]
    // 0x7e20f4: StoreField: r0->field_13 = r2
    //     0x7e20f4: stur            w2, [x0, #0x13]
    // 0x7e20f8: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7e20f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7e20fc: ldr             x2, [x2, #0x358]
    // 0x7e2100: StoreField: r0->field_4b = r2
    //     0x7e2100: stur            w2, [x0, #0x4b]
    // 0x7e2104: StoreField: r0->field_6b = r1
    //     0x7e2104: stur            w1, [x0, #0x6b]
    // 0x7e2108: StoreField: r0->field_6f = r1
    //     0x7e2108: stur            w1, [x0, #0x6f]
    // 0x7e210c: LeaveFrame
    //     0x7e210c: mov             SP, fp
    //     0x7e2110: ldp             fp, lr, [SP], #0x10
    // 0x7e2114: ret
    //     0x7e2114: ret             
    // 0x7e2118: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e2118: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e211c: b               #0x7e1fdc
  }
  [closure] UsersTab <anonymous closure>(dynamic, BuildContext, AdminProvider, Widget?) {
    // ** addr: 0x7e2120, size: 0x2c
    // 0x7e2120: EnterFrame
    //     0x7e2120: stp             fp, lr, [SP, #-0x10]!
    //     0x7e2124: mov             fp, SP
    // 0x7e2128: r0 = UsersTab()
    //     0x7e2128: bl              #0x7e214c  ; AllocateUsersTabStub -> UsersTab (size=0x14)
    // 0x7e212c: ldr             x1, [fp, #0x18]
    // 0x7e2130: StoreField: r0->field_b = r1
    //     0x7e2130: stur            w1, [x0, #0xb]
    // 0x7e2134: r1 = Instance_MaterialColor
    //     0x7e2134: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7e2138: ldr             x1, [x1, #0x5d8]
    // 0x7e213c: StoreField: r0->field_f = r1
    //     0x7e213c: stur            w1, [x0, #0xf]
    // 0x7e2140: LeaveFrame
    //     0x7e2140: mov             SP, fp
    //     0x7e2144: ldp             fp, lr, [SP], #0x10
    // 0x7e2148: ret
    //     0x7e2148: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e2158, size: 0x6c
    // 0x7e2158: EnterFrame
    //     0x7e2158: stp             fp, lr, [SP, #-0x10]!
    //     0x7e215c: mov             fp, SP
    // 0x7e2160: AllocStack(0x18)
    //     0x7e2160: sub             SP, SP, #0x18
    // 0x7e2164: SetupParameters([dynamic _ /* r0 */])
    //     0x7e2164: ldr             x0, [fp, #0x10]
    //     0x7e2168: ldur            w1, [x0, #0x17]
    //     0x7e216c: add             x1, x1, HEAP, lsl #32
    // 0x7e2170: CheckStackOverflow
    //     0x7e2170: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e2174: cmp             SP, x16
    //     0x7e2178: b.ls            #0x7e21bc
    // 0x7e217c: LoadField: r0 = r1->field_f
    //     0x7e217c: ldur            w0, [x1, #0xf]
    // 0x7e2180: DecompressPointer r0
    //     0x7e2180: add             x0, x0, HEAP, lsl #32
    // 0x7e2184: mov             x1, x0
    // 0x7e2188: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e2188: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e218c: r0 = of()
    //     0x7e218c: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x7e2190: r16 = <Object?>
    //     0x7e2190: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7e2194: stp             x0, x16, [SP, #8]
    // 0x7e2198: r16 = "/admin/users/create"
    //     0x7e2198: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d00] "/admin/users/create"
    //     0x7e219c: ldr             x16, [x16, #0xd00]
    // 0x7e21a0: str             x16, [SP]
    // 0x7e21a4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e21a4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e21a8: r0 = pushNamed()
    //     0x7e21a8: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x7e21ac: r0 = Null
    //     0x7e21ac: mov             x0, NULL
    // 0x7e21b0: LeaveFrame
    //     0x7e21b0: mov             SP, fp
    //     0x7e21b4: ldp             fp, lr, [SP], #0x10
    // 0x7e21b8: ret
    //     0x7e21b8: ret             
    // 0x7e21bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e21bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e21c0: b               #0x7e217c
  }
}

// lib: , url: package:umrem_demo/features/admin/screens/trips_page.dart

// class id: 1049536, size: 0x8
class :: {
}

// class id: 2929, size: 0xc, field offset: 0xc
//   const constructor, 
class TripsPage extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e06d0, size: 0x100
    // 0x7e06d0: EnterFrame
    //     0x7e06d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e06d4: mov             fp, SP
    // 0x7e06d8: AllocStack(0x18)
    //     0x7e06d8: sub             SP, SP, #0x18
    // 0x7e06dc: CheckStackOverflow
    //     0x7e06dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e06e0: cmp             SP, x16
    //     0x7e06e4: b.ls            #0x7e07c4
    // 0x7e06e8: r1 = _ConstMap len:12
    //     0x7e06e8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e06ec: r2 = 1600
    //     0x7e06ec: mov             x2, #0x640
    // 0x7e06f0: r0 = []()
    //     0x7e06f0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e06f4: stur            x0, [fp, #-8]
    // 0x7e06f8: cmp             w0, NULL
    // 0x7e06fc: b.eq            #0x7e07cc
    // 0x7e0700: r1 = 1
    //     0x7e0700: mov             x1, #1
    // 0x7e0704: r0 = AllocateContext()
    //     0x7e0704: bl              #0x927010  ; AllocateContextStub
    // 0x7e0708: mov             x1, x0
    // 0x7e070c: ldur            x0, [fp, #-8]
    // 0x7e0710: stur            x1, [fp, #-0x10]
    // 0x7e0714: StoreField: r1->field_f = r0
    //     0x7e0714: stur            w0, [x1, #0xf]
    // 0x7e0718: r0 = AppBar()
    //     0x7e0718: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7e071c: mov             x1, x0
    // 0x7e0720: r2 = Instance_Text
    //     0x7e0720: add             x2, PP, #0x12, lsl #12  ; [pp+0x12688] Obj!Text@a1d841
    //     0x7e0724: ldr             x2, [x2, #0x688]
    // 0x7e0728: stur            x0, [fp, #-8]
    // 0x7e072c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e072c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e0730: r0 = AppBar()
    //     0x7e0730: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7e0734: ldur            x2, [fp, #-0x10]
    // 0x7e0738: r1 = Function '<anonymous closure>':.
    //     0x7e0738: add             x1, PP, #0x12, lsl #12  ; [pp+0x12690] AnonymousClosure: (0x7e07d0), in [package:umrem_demo/features/admin/screens/trips_page.dart] TripsPage::build (0x7e06d0)
    //     0x7e073c: ldr             x1, [x1, #0x690]
    // 0x7e0740: r0 = AllocateClosure()
    //     0x7e0740: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0744: r1 = <AdminProvider>
    //     0x7e0744: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x7e0748: ldr             x1, [x1, #0xb50]
    // 0x7e074c: stur            x0, [fp, #-0x10]
    // 0x7e0750: r0 = Consumer()
    //     0x7e0750: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7e0754: mov             x1, x0
    // 0x7e0758: ldur            x0, [fp, #-0x10]
    // 0x7e075c: stur            x1, [fp, #-0x18]
    // 0x7e0760: StoreField: r1->field_13 = r0
    //     0x7e0760: stur            w0, [x1, #0x13]
    // 0x7e0764: r0 = Scaffold()
    //     0x7e0764: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7e0768: ldur            x1, [fp, #-8]
    // 0x7e076c: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e076c: stur            w1, [x0, #0x17]
    // 0x7e0770: ldur            x1, [fp, #-0x18]
    // 0x7e0774: StoreField: r0->field_1b = r1
    //     0x7e0774: stur            w1, [x0, #0x1b]
    // 0x7e0778: r1 = Instance_AlignmentDirectional
    //     0x7e0778: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7e077c: ldr             x1, [x1, #0x350]
    // 0x7e0780: StoreField: r0->field_2f = r1
    //     0x7e0780: stur            w1, [x0, #0x2f]
    // 0x7e0784: r1 = true
    //     0x7e0784: add             x1, NULL, #0x20  ; true
    // 0x7e0788: StoreField: r0->field_5f = r1
    //     0x7e0788: stur            w1, [x0, #0x5f]
    // 0x7e078c: r2 = Instance_DragStartBehavior
    //     0x7e078c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e0790: StoreField: r0->field_63 = r2
    //     0x7e0790: stur            w2, [x0, #0x63]
    // 0x7e0794: r2 = false
    //     0x7e0794: add             x2, NULL, #0x30  ; false
    // 0x7e0798: StoreField: r0->field_b = r2
    //     0x7e0798: stur            w2, [x0, #0xb]
    // 0x7e079c: StoreField: r0->field_f = r1
    //     0x7e079c: stur            w1, [x0, #0xf]
    // 0x7e07a0: StoreField: r0->field_13 = r2
    //     0x7e07a0: stur            w2, [x0, #0x13]
    // 0x7e07a4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7e07a4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7e07a8: ldr             x2, [x2, #0x358]
    // 0x7e07ac: StoreField: r0->field_4b = r2
    //     0x7e07ac: stur            w2, [x0, #0x4b]
    // 0x7e07b0: StoreField: r0->field_6b = r1
    //     0x7e07b0: stur            w1, [x0, #0x6b]
    // 0x7e07b4: StoreField: r0->field_6f = r1
    //     0x7e07b4: stur            w1, [x0, #0x6f]
    // 0x7e07b8: LeaveFrame
    //     0x7e07b8: mov             SP, fp
    //     0x7e07bc: ldp             fp, lr, [SP], #0x10
    // 0x7e07c0: ret
    //     0x7e07c0: ret             
    // 0x7e07c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e07c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e07c8: b               #0x7e06e8
    // 0x7e07cc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e07cc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] TripsTab <anonymous closure>(dynamic, BuildContext, AdminProvider, Widget?) {
    // ** addr: 0x7e07d0, size: 0x48
    // 0x7e07d0: EnterFrame
    //     0x7e07d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e07d4: mov             fp, SP
    // 0x7e07d8: AllocStack(0x8)
    //     0x7e07d8: sub             SP, SP, #8
    // 0x7e07dc: SetupParameters([dynamic _ /* r0 */])
    //     0x7e07dc: ldr             x0, [fp, #0x28]
    //     0x7e07e0: ldur            w1, [x0, #0x17]
    //     0x7e07e4: add             x1, x1, HEAP, lsl #32
    // 0x7e07e8: LoadField: r0 = r1->field_f
    //     0x7e07e8: ldur            w0, [x1, #0xf]
    // 0x7e07ec: DecompressPointer r0
    //     0x7e07ec: add             x0, x0, HEAP, lsl #32
    // 0x7e07f0: stur            x0, [fp, #-8]
    // 0x7e07f4: r0 = TripsTab()
    //     0x7e07f4: bl              #0x7e0818  ; AllocateTripsTabStub -> TripsTab (size=0x14)
    // 0x7e07f8: ldur            x1, [fp, #-8]
    // 0x7e07fc: StoreField: r0->field_b = r1
    //     0x7e07fc: stur            w1, [x0, #0xb]
    // 0x7e0800: r1 = Instance_MaterialColor
    //     0x7e0800: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7e0804: ldr             x1, [x1, #0x5d8]
    // 0x7e0808: StoreField: r0->field_f = r1
    //     0x7e0808: stur            w1, [x0, #0xf]
    // 0x7e080c: LeaveFrame
    //     0x7e080c: mov             SP, fp
    //     0x7e0810: ldp             fp, lr, [SP], #0x10
    // 0x7e0814: ret
    //     0x7e0814: ret             
  }
}

// lib: , url: package:umrem_demo/features/admin/screens/hotels_page.dart

// class id: 1049530, size: 0x8
class :: {
}

// class id: 2931, size: 0xc, field offset: 0xc
//   const constructor, 
class HotelsPage extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7de850, size: 0x100
    // 0x7de850: EnterFrame
    //     0x7de850: stp             fp, lr, [SP, #-0x10]!
    //     0x7de854: mov             fp, SP
    // 0x7de858: AllocStack(0x18)
    //     0x7de858: sub             SP, SP, #0x18
    // 0x7de85c: CheckStackOverflow
    //     0x7de85c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7de860: cmp             SP, x16
    //     0x7de864: b.ls            #0x7de944
    // 0x7de868: r1 = _ConstMap len:12
    //     0x7de868: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7de86c: r2 = 1600
    //     0x7de86c: mov             x2, #0x640
    // 0x7de870: r0 = []()
    //     0x7de870: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7de874: stur            x0, [fp, #-8]
    // 0x7de878: cmp             w0, NULL
    // 0x7de87c: b.eq            #0x7de94c
    // 0x7de880: r1 = 1
    //     0x7de880: mov             x1, #1
    // 0x7de884: r0 = AllocateContext()
    //     0x7de884: bl              #0x927010  ; AllocateContextStub
    // 0x7de888: mov             x1, x0
    // 0x7de88c: ldur            x0, [fp, #-8]
    // 0x7de890: stur            x1, [fp, #-0x10]
    // 0x7de894: StoreField: r1->field_f = r0
    //     0x7de894: stur            w0, [x1, #0xf]
    // 0x7de898: r0 = AppBar()
    //     0x7de898: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7de89c: mov             x1, x0
    // 0x7de8a0: r2 = Instance_Text
    //     0x7de8a0: add             x2, PP, #0x12, lsl #12  ; [pp+0x126a8] Obj!Text@a1d6b1
    //     0x7de8a4: ldr             x2, [x2, #0x6a8]
    // 0x7de8a8: stur            x0, [fp, #-8]
    // 0x7de8ac: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7de8ac: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7de8b0: r0 = AppBar()
    //     0x7de8b0: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7de8b4: ldur            x2, [fp, #-0x10]
    // 0x7de8b8: r1 = Function '<anonymous closure>':.
    //     0x7de8b8: add             x1, PP, #0x12, lsl #12  ; [pp+0x126b0] AnonymousClosure: (0x7de950), in [package:umrem_demo/features/admin/screens/hotels_page.dart] HotelsPage::build (0x7de850)
    //     0x7de8bc: ldr             x1, [x1, #0x6b0]
    // 0x7de8c0: r0 = AllocateClosure()
    //     0x7de8c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7de8c4: r1 = <AdminProvider>
    //     0x7de8c4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x7de8c8: ldr             x1, [x1, #0xb50]
    // 0x7de8cc: stur            x0, [fp, #-0x10]
    // 0x7de8d0: r0 = Consumer()
    //     0x7de8d0: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7de8d4: mov             x1, x0
    // 0x7de8d8: ldur            x0, [fp, #-0x10]
    // 0x7de8dc: stur            x1, [fp, #-0x18]
    // 0x7de8e0: StoreField: r1->field_13 = r0
    //     0x7de8e0: stur            w0, [x1, #0x13]
    // 0x7de8e4: r0 = Scaffold()
    //     0x7de8e4: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7de8e8: ldur            x1, [fp, #-8]
    // 0x7de8ec: ArrayStore: r0[0] = r1  ; List_4
    //     0x7de8ec: stur            w1, [x0, #0x17]
    // 0x7de8f0: ldur            x1, [fp, #-0x18]
    // 0x7de8f4: StoreField: r0->field_1b = r1
    //     0x7de8f4: stur            w1, [x0, #0x1b]
    // 0x7de8f8: r1 = Instance_AlignmentDirectional
    //     0x7de8f8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7de8fc: ldr             x1, [x1, #0x350]
    // 0x7de900: StoreField: r0->field_2f = r1
    //     0x7de900: stur            w1, [x0, #0x2f]
    // 0x7de904: r1 = true
    //     0x7de904: add             x1, NULL, #0x20  ; true
    // 0x7de908: StoreField: r0->field_5f = r1
    //     0x7de908: stur            w1, [x0, #0x5f]
    // 0x7de90c: r2 = Instance_DragStartBehavior
    //     0x7de90c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7de910: StoreField: r0->field_63 = r2
    //     0x7de910: stur            w2, [x0, #0x63]
    // 0x7de914: r2 = false
    //     0x7de914: add             x2, NULL, #0x30  ; false
    // 0x7de918: StoreField: r0->field_b = r2
    //     0x7de918: stur            w2, [x0, #0xb]
    // 0x7de91c: StoreField: r0->field_f = r1
    //     0x7de91c: stur            w1, [x0, #0xf]
    // 0x7de920: StoreField: r0->field_13 = r2
    //     0x7de920: stur            w2, [x0, #0x13]
    // 0x7de924: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7de924: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7de928: ldr             x2, [x2, #0x358]
    // 0x7de92c: StoreField: r0->field_4b = r2
    //     0x7de92c: stur            w2, [x0, #0x4b]
    // 0x7de930: StoreField: r0->field_6b = r1
    //     0x7de930: stur            w1, [x0, #0x6b]
    // 0x7de934: StoreField: r0->field_6f = r1
    //     0x7de934: stur            w1, [x0, #0x6f]
    // 0x7de938: LeaveFrame
    //     0x7de938: mov             SP, fp
    //     0x7de93c: ldp             fp, lr, [SP], #0x10
    // 0x7de940: ret
    //     0x7de940: ret             
    // 0x7de944: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7de944: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7de948: b               #0x7de868
    // 0x7de94c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7de94c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] HotelsTab <anonymous closure>(dynamic, BuildContext, AdminProvider, Widget?) {
    // ** addr: 0x7de950, size: 0x50
    // 0x7de950: EnterFrame
    //     0x7de950: stp             fp, lr, [SP, #-0x10]!
    //     0x7de954: mov             fp, SP
    // 0x7de958: AllocStack(0x8)
    //     0x7de958: sub             SP, SP, #8
    // 0x7de95c: SetupParameters([dynamic _ /* r0 */])
    //     0x7de95c: ldr             x0, [fp, #0x28]
    //     0x7de960: ldur            w1, [x0, #0x17]
    //     0x7de964: add             x1, x1, HEAP, lsl #32
    // 0x7de968: LoadField: r0 = r1->field_f
    //     0x7de968: ldur            w0, [x1, #0xf]
    // 0x7de96c: DecompressPointer r0
    //     0x7de96c: add             x0, x0, HEAP, lsl #32
    // 0x7de970: stur            x0, [fp, #-8]
    // 0x7de974: r0 = HotelsTab()
    //     0x7de974: bl              #0x7de9a0  ; AllocateHotelsTabStub -> HotelsTab (size=0x18)
    // 0x7de978: ldr             x1, [fp, #0x18]
    // 0x7de97c: StoreField: r0->field_b = r1
    //     0x7de97c: stur            w1, [x0, #0xb]
    // 0x7de980: ldur            x1, [fp, #-8]
    // 0x7de984: StoreField: r0->field_f = r1
    //     0x7de984: stur            w1, [x0, #0xf]
    // 0x7de988: r1 = Instance_MaterialColor
    //     0x7de988: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7de98c: ldr             x1, [x1, #0x5d8]
    // 0x7de990: StoreField: r0->field_13 = r1
    //     0x7de990: stur            w1, [x0, #0x13]
    // 0x7de994: LeaveFrame
    //     0x7de994: mov             SP, fp
    //     0x7de998: ldp             fp, lr, [SP], #0x10
    // 0x7de99c: ret
    //     0x7de99c: ret             
  }
}

// lib: , url: package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart

// class id: 1049574, size: 0x8
class :: {
}

// class id: 2478, size: 0x1c, field offset: 0x14
class _ZikirlerimState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0x6f9634, size: 0x1d8
    // 0x6f9634: EnterFrame
    //     0x6f9634: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9638: mov             fp, SP
    // 0x6f963c: AllocStack(0x40)
    //     0x6f963c: sub             SP, SP, #0x40
    // 0x6f9640: SetupParameters(_ZikirlerimState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f9640: stur            x1, [fp, #-8]
    //     0x6f9644: stur            x2, [fp, #-0x10]
    // 0x6f9648: CheckStackOverflow
    //     0x6f9648: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f964c: cmp             SP, x16
    //     0x6f9650: b.ls            #0x6f9804
    // 0x6f9654: r1 = 1
    //     0x6f9654: mov             x1, #1
    // 0x6f9658: r0 = AllocateContext()
    //     0x6f9658: bl              #0x927010  ; AllocateContextStub
    // 0x6f965c: mov             x1, x0
    // 0x6f9660: ldur            x0, [fp, #-0x10]
    // 0x6f9664: StoreField: r1->field_f = r0
    //     0x6f9664: stur            w0, [x1, #0xf]
    // 0x6f9668: mov             x2, x1
    // 0x6f966c: r1 = Function '<anonymous closure>':.
    //     0x6f966c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c6d8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6f9670: ldr             x1, [x1, #0x6d8]
    // 0x6f9674: r0 = AllocateClosure()
    //     0x6f9674: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9678: stur            x0, [fp, #-0x10]
    // 0x6f967c: r0 = IconButton()
    //     0x6f967c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6f9680: mov             x1, x0
    // 0x6f9684: ldur            x0, [fp, #-0x10]
    // 0x6f9688: stur            x1, [fp, #-0x18]
    // 0x6f968c: StoreField: r1->field_3b = r0
    //     0x6f968c: stur            w0, [x1, #0x3b]
    // 0x6f9690: r0 = false
    //     0x6f9690: add             x0, NULL, #0x30  ; false
    // 0x6f9694: StoreField: r1->field_4f = r0
    //     0x6f9694: stur            w0, [x1, #0x4f]
    // 0x6f9698: r2 = Instance_Icon
    //     0x6f9698: add             x2, PP, #0x2c, lsl #12  ; [pp+0x2c6e0] Obj!Icon@a1e871
    //     0x6f969c: ldr             x2, [x2, #0x6e0]
    // 0x6f96a0: StoreField: r1->field_1f = r2
    //     0x6f96a0: stur            w2, [x1, #0x1f]
    // 0x6f96a4: r2 = Instance__IconButtonVariant
    //     0x6f96a4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6f96a8: ldr             x2, [x2, #0x1b8]
    // 0x6f96ac: StoreField: r1->field_6f = r2
    //     0x6f96ac: stur            w2, [x1, #0x6f]
    // 0x6f96b0: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x6f96b0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6f96b4: ldr             x0, [x0, #0x2078]
    //     0x6f96b8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6f96bc: cmp             w0, w16
    //     0x6f96c0: b.ne            #0x6f96d0
    //     0x6f96c4: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x6f96c8: ldr             x2, [x2, #0x450]
    //     0x6f96cc: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6f96d0: stur            x0, [fp, #-0x10]
    // 0x6f96d4: r0 = SystemUiOverlayStyle()
    //     0x6f96d4: bl              #0x5a8700  ; AllocateSystemUiOverlayStyleStub -> SystemUiOverlayStyle (size=0x28)
    // 0x6f96d8: mov             x1, x0
    // 0x6f96dc: ldur            x0, [fp, #-0x10]
    // 0x6f96e0: stur            x1, [fp, #-0x20]
    // 0x6f96e4: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f96e4: stur            w0, [x1, #0x17]
    // 0x6f96e8: r2 = Instance_Brightness
    //     0x6f96e8: ldr             x2, [PP, #0x56f8]  ; [pp+0x56f8] Obj!Brightness@a2cbd1
    // 0x6f96ec: StoreField: r1->field_1f = r2
    //     0x6f96ec: stur            w2, [x1, #0x1f]
    // 0x6f96f0: r0 = AppBar()
    //     0x6f96f0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6f96f4: stur            x0, [fp, #-0x28]
    // 0x6f96f8: ldur            x16, [fp, #-0x18]
    // 0x6f96fc: ldur            lr, [fp, #-0x20]
    // 0x6f9700: stp             lr, x16, [SP, #8]
    // 0x6f9704: ldur            x16, [fp, #-0x10]
    // 0x6f9708: str             x16, [SP]
    // 0x6f970c: mov             x1, x0
    // 0x6f9710: r2 = Instance_Text
    //     0x6f9710: add             x2, PP, #0x2c, lsl #12  ; [pp+0x2c6e8] Obj!Text@a1c4e1
    //     0x6f9714: ldr             x2, [x2, #0x6e8]
    // 0x6f9718: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x4, leading, 0x2, systemOverlayStyle, 0x3, null]
    //     0x6f9718: add             x4, PP, #0x2c, lsl #12  ; [pp+0x2c6f0] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x4, "leading", 0x2, "systemOverlayStyle", 0x3, Null]
    //     0x6f971c: ldr             x4, [x4, #0x6f0]
    // 0x6f9720: r0 = AppBar()
    //     0x6f9720: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6f9724: ldur            x1, [fp, #-8]
    // 0x6f9728: r0 = getBody()
    //     0x6f9728: bl              #0x6f982c  ; [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::getBody
    // 0x6f972c: r1 = Null
    //     0x6f972c: mov             x1, NULL
    // 0x6f9730: r2 = 2
    //     0x6f9730: mov             x2, #2
    // 0x6f9734: stur            x0, [fp, #-8]
    // 0x6f9738: r0 = AllocateArray()
    //     0x6f9738: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f973c: mov             x2, x0
    // 0x6f9740: ldur            x0, [fp, #-8]
    // 0x6f9744: stur            x2, [fp, #-0x10]
    // 0x6f9748: StoreField: r2->field_f = r0
    //     0x6f9748: stur            w0, [x2, #0xf]
    // 0x6f974c: r1 = <Widget>
    //     0x6f974c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f9750: r0 = AllocateGrowableArray()
    //     0x6f9750: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f9754: mov             x1, x0
    // 0x6f9758: ldur            x0, [fp, #-0x10]
    // 0x6f975c: stur            x1, [fp, #-8]
    // 0x6f9760: StoreField: r1->field_f = r0
    //     0x6f9760: stur            w0, [x1, #0xf]
    // 0x6f9764: r0 = 2
    //     0x6f9764: mov             x0, #2
    // 0x6f9768: StoreField: r1->field_b = r0
    //     0x6f9768: stur            w0, [x1, #0xb]
    // 0x6f976c: r0 = Stack()
    //     0x6f976c: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x6f9770: mov             x1, x0
    // 0x6f9774: r0 = Instance_AlignmentDirectional
    //     0x6f9774: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x6f9778: ldr             x0, [x0, #0xd28]
    // 0x6f977c: stur            x1, [fp, #-0x10]
    // 0x6f9780: StoreField: r1->field_f = r0
    //     0x6f9780: stur            w0, [x1, #0xf]
    // 0x6f9784: r0 = Instance_StackFit
    //     0x6f9784: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x6f9788: ldr             x0, [x0, #0x548]
    // 0x6f978c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f978c: stur            w0, [x1, #0x17]
    // 0x6f9790: r0 = Instance_Clip
    //     0x6f9790: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f9794: ldr             x0, [x0, #0x2d8]
    // 0x6f9798: StoreField: r1->field_1b = r0
    //     0x6f9798: stur            w0, [x1, #0x1b]
    // 0x6f979c: ldur            x0, [fp, #-8]
    // 0x6f97a0: StoreField: r1->field_b = r0
    //     0x6f97a0: stur            w0, [x1, #0xb]
    // 0x6f97a4: r0 = Scaffold()
    //     0x6f97a4: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6f97a8: ldur            x1, [fp, #-0x28]
    // 0x6f97ac: ArrayStore: r0[0] = r1  ; List_4
    //     0x6f97ac: stur            w1, [x0, #0x17]
    // 0x6f97b0: ldur            x1, [fp, #-0x10]
    // 0x6f97b4: StoreField: r0->field_1b = r1
    //     0x6f97b4: stur            w1, [x0, #0x1b]
    // 0x6f97b8: r1 = Instance_AlignmentDirectional
    //     0x6f97b8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6f97bc: ldr             x1, [x1, #0x350]
    // 0x6f97c0: StoreField: r0->field_2f = r1
    //     0x6f97c0: stur            w1, [x0, #0x2f]
    // 0x6f97c4: r1 = true
    //     0x6f97c4: add             x1, NULL, #0x20  ; true
    // 0x6f97c8: StoreField: r0->field_5f = r1
    //     0x6f97c8: stur            w1, [x0, #0x5f]
    // 0x6f97cc: r2 = Instance_DragStartBehavior
    //     0x6f97cc: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f97d0: StoreField: r0->field_63 = r2
    //     0x6f97d0: stur            w2, [x0, #0x63]
    // 0x6f97d4: r2 = false
    //     0x6f97d4: add             x2, NULL, #0x30  ; false
    // 0x6f97d8: StoreField: r0->field_b = r2
    //     0x6f97d8: stur            w2, [x0, #0xb]
    // 0x6f97dc: StoreField: r0->field_f = r1
    //     0x6f97dc: stur            w1, [x0, #0xf]
    // 0x6f97e0: StoreField: r0->field_13 = r2
    //     0x6f97e0: stur            w2, [x0, #0x13]
    // 0x6f97e4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6f97e4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6f97e8: ldr             x2, [x2, #0x358]
    // 0x6f97ec: StoreField: r0->field_4b = r2
    //     0x6f97ec: stur            w2, [x0, #0x4b]
    // 0x6f97f0: StoreField: r0->field_6b = r1
    //     0x6f97f0: stur            w1, [x0, #0x6b]
    // 0x6f97f4: StoreField: r0->field_6f = r1
    //     0x6f97f4: stur            w1, [x0, #0x6f]
    // 0x6f97f8: LeaveFrame
    //     0x6f97f8: mov             SP, fp
    //     0x6f97fc: ldp             fp, lr, [SP], #0x10
    // 0x6f9800: ret
    //     0x6f9800: ret             
    // 0x6f9804: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9804: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9808: b               #0x6f9654
  }
  _ getBody(/* No info */) {
    // ** addr: 0x6f982c, size: 0xc0
    // 0x6f982c: EnterFrame
    //     0x6f982c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9830: mov             fp, SP
    // 0x6f9834: AllocStack(0x18)
    //     0x6f9834: sub             SP, SP, #0x18
    // 0x6f9838: SetupParameters(_ZikirlerimState this /* r1 => r1, fp-0x8 */)
    //     0x6f9838: stur            x1, [fp, #-8]
    // 0x6f983c: CheckStackOverflow
    //     0x6f983c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9840: cmp             SP, x16
    //     0x6f9844: b.ls            #0x6f98e4
    // 0x6f9848: r1 = 1
    //     0x6f9848: mov             x1, #1
    // 0x6f984c: r0 = AllocateContext()
    //     0x6f984c: bl              #0x927010  ; AllocateContextStub
    // 0x6f9850: mov             x1, x0
    // 0x6f9854: ldur            x0, [fp, #-8]
    // 0x6f9858: stur            x1, [fp, #-0x10]
    // 0x6f985c: StoreField: r1->field_f = r0
    //     0x6f985c: stur            w0, [x1, #0xf]
    // 0x6f9860: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6f9860: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6f9864: ldr             x0, [x0, #0x2070]
    //     0x6f9868: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6f986c: cmp             w0, w16
    //     0x6f9870: b.ne            #0x6f9880
    //     0x6f9874: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6f9878: ldr             x2, [x2, #0x770]
    //     0x6f987c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6f9880: LoadField: r1 = r0->field_b
    //     0x6f9880: ldur            w1, [x0, #0xb]
    // 0x6f9884: r3 = LoadInt32Instr(r1)
    //     0x6f9884: sbfx            x3, x1, #1, #0x1f
    // 0x6f9888: stur            x3, [fp, #-0x18]
    // 0x6f988c: cbnz            w1, #0x6f98a4
    // 0x6f9890: r0 = Instance_Center
    //     0x6f9890: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c6f8] Obj!Center@a1fe31
    //     0x6f9894: ldr             x0, [x0, #0x6f8]
    // 0x6f9898: LeaveFrame
    //     0x6f9898: mov             SP, fp
    //     0x6f989c: ldp             fp, lr, [SP], #0x10
    // 0x6f98a0: ret
    //     0x6f98a0: ret             
    // 0x6f98a4: ldur            x2, [fp, #-0x10]
    // 0x6f98a8: r1 = Function '<anonymous closure>':.
    //     0x6f98a8: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c700] AnonymousClosure: (0x6f98ec), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::getBody (0x6f982c)
    //     0x6f98ac: ldr             x1, [x1, #0x700]
    // 0x6f98b0: r0 = AllocateClosure()
    //     0x6f98b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f98b4: stur            x0, [fp, #-8]
    // 0x6f98b8: r0 = ListView()
    //     0x6f98b8: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6f98bc: mov             x1, x0
    // 0x6f98c0: ldur            x2, [fp, #-8]
    // 0x6f98c4: ldur            x3, [fp, #-0x18]
    // 0x6f98c8: stur            x0, [fp, #-8]
    // 0x6f98cc: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f98cc: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f98d0: r0 = ListView.builder()
    //     0x6f98d0: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6f98d4: ldur            x0, [fp, #-8]
    // 0x6f98d8: LeaveFrame
    //     0x6f98d8: mov             SP, fp
    //     0x6f98dc: ldp             fp, lr, [SP], #0x10
    // 0x6f98e0: ret
    //     0x6f98e0: ret             
    // 0x6f98e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f98e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f98e8: b               #0x6f9848
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6f98ec, size: 0x2a8
    // 0x6f98ec: EnterFrame
    //     0x6f98ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6f98f0: mov             fp, SP
    // 0x6f98f4: AllocStack(0x28)
    //     0x6f98f4: sub             SP, SP, #0x28
    // 0x6f98f8: SetupParameters([dynamic _ /* r0 */])
    //     0x6f98f8: ldr             x0, [fp, #0x20]
    //     0x6f98fc: ldur            w1, [x0, #0x17]
    //     0x6f9900: add             x1, x1, HEAP, lsl #32
    //     0x6f9904: stur            x1, [fp, #-8]
    // 0x6f9908: CheckStackOverflow
    //     0x6f9908: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f990c: cmp             SP, x16
    //     0x6f9910: b.ls            #0x6f9b88
    // 0x6f9914: r1 = 1
    //     0x6f9914: mov             x1, #1
    // 0x6f9918: r0 = AllocateContext()
    //     0x6f9918: bl              #0x927010  ; AllocateContextStub
    // 0x6f991c: mov             x1, x0
    // 0x6f9920: ldur            x0, [fp, #-8]
    // 0x6f9924: stur            x1, [fp, #-0x10]
    // 0x6f9928: StoreField: r1->field_b = r0
    //     0x6f9928: stur            w0, [x1, #0xb]
    // 0x6f992c: ldr             x0, [fp, #0x10]
    // 0x6f9930: StoreField: r1->field_f = r0
    //     0x6f9930: stur            w0, [x1, #0xf]
    // 0x6f9934: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6f9934: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6f9938: ldr             x0, [x0, #0x2070]
    //     0x6f993c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6f9940: cmp             w0, w16
    //     0x6f9944: b.ne            #0x6f9954
    //     0x6f9948: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6f994c: ldr             x2, [x2, #0x770]
    //     0x6f9950: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6f9954: mov             x3, x0
    // 0x6f9958: ldur            x2, [fp, #-0x10]
    // 0x6f995c: LoadField: r0 = r2->field_f
    //     0x6f995c: ldur            w0, [x2, #0xf]
    // 0x6f9960: DecompressPointer r0
    //     0x6f9960: add             x0, x0, HEAP, lsl #32
    // 0x6f9964: LoadField: r1 = r3->field_b
    //     0x6f9964: ldur            w1, [x3, #0xb]
    // 0x6f9968: r4 = LoadInt32Instr(r0)
    //     0x6f9968: sbfx            x4, x0, #1, #0x1f
    //     0x6f996c: tbz             w0, #0, #0x6f9974
    //     0x6f9970: ldur            x4, [x0, #7]
    // 0x6f9974: r0 = LoadInt32Instr(r1)
    //     0x6f9974: sbfx            x0, x1, #1, #0x1f
    // 0x6f9978: mov             x1, x4
    // 0x6f997c: cmp             x1, x0
    // 0x6f9980: b.hs            #0x6f9b90
    // 0x6f9984: LoadField: r0 = r3->field_f
    //     0x6f9984: ldur            w0, [x3, #0xf]
    // 0x6f9988: DecompressPointer r0
    //     0x6f9988: add             x0, x0, HEAP, lsl #32
    // 0x6f998c: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x6f998c: add             x16, x0, x4, lsl #2
    //     0x6f9990: ldur            w1, [x16, #0xf]
    // 0x6f9994: DecompressPointer r1
    //     0x6f9994: add             x1, x1, HEAP, lsl #32
    // 0x6f9998: stur            x1, [fp, #-0x18]
    // 0x6f999c: LoadField: r0 = r1->field_7
    //     0x6f999c: ldur            w0, [x1, #7]
    // 0x6f99a0: DecompressPointer r0
    //     0x6f99a0: add             x0, x0, HEAP, lsl #32
    // 0x6f99a4: stur            x0, [fp, #-8]
    // 0x6f99a8: r0 = Text()
    //     0x6f99a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f99ac: mov             x1, x0
    // 0x6f99b0: ldur            x0, [fp, #-8]
    // 0x6f99b4: stur            x1, [fp, #-0x20]
    // 0x6f99b8: StoreField: r1->field_b = r0
    //     0x6f99b8: stur            w0, [x1, #0xb]
    // 0x6f99bc: ldur            x0, [fp, #-0x18]
    // 0x6f99c0: LoadField: r2 = r0->field_f
    //     0x6f99c0: ldur            w2, [x0, #0xf]
    // 0x6f99c4: DecompressPointer r2
    //     0x6f99c4: add             x2, x2, HEAP, lsl #32
    // 0x6f99c8: stur            x2, [fp, #-8]
    // 0x6f99cc: r0 = Text()
    //     0x6f99cc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f99d0: mov             x1, x0
    // 0x6f99d4: ldur            x0, [fp, #-8]
    // 0x6f99d8: stur            x1, [fp, #-0x28]
    // 0x6f99dc: StoreField: r1->field_b = r0
    //     0x6f99dc: stur            w0, [x1, #0xb]
    // 0x6f99e0: ldur            x0, [fp, #-0x18]
    // 0x6f99e4: LoadField: r2 = r0->field_b
    //     0x6f99e4: ldur            w2, [x0, #0xb]
    // 0x6f99e8: DecompressPointer r2
    //     0x6f99e8: add             x2, x2, HEAP, lsl #32
    // 0x6f99ec: stur            x2, [fp, #-8]
    // 0x6f99f0: r0 = Text()
    //     0x6f99f0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f99f4: mov             x3, x0
    // 0x6f99f8: ldur            x0, [fp, #-8]
    // 0x6f99fc: stur            x3, [fp, #-0x18]
    // 0x6f9a00: StoreField: r3->field_b = r0
    //     0x6f9a00: stur            w0, [x3, #0xb]
    // 0x6f9a04: r0 = Instance_TextStyle
    //     0x6f9a04: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c708] Obj!TextStyle@a17d01
    //     0x6f9a08: ldr             x0, [x0, #0x708]
    // 0x6f9a0c: StoreField: r3->field_13 = r0
    //     0x6f9a0c: stur            w0, [x3, #0x13]
    // 0x6f9a10: ldur            x2, [fp, #-0x10]
    // 0x6f9a14: r1 = Function '<anonymous closure>':.
    //     0x6f9a14: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c710] AnonymousClosure: (0x6f9b94), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::getBody (0x6f982c)
    //     0x6f9a18: ldr             x1, [x1, #0x710]
    // 0x6f9a1c: r0 = AllocateClosure()
    //     0x6f9a1c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9a20: stur            x0, [fp, #-8]
    // 0x6f9a24: r0 = IconButton()
    //     0x6f9a24: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6f9a28: mov             x3, x0
    // 0x6f9a2c: ldur            x0, [fp, #-8]
    // 0x6f9a30: stur            x3, [fp, #-0x10]
    // 0x6f9a34: StoreField: r3->field_3b = r0
    //     0x6f9a34: stur            w0, [x3, #0x3b]
    // 0x6f9a38: r0 = false
    //     0x6f9a38: add             x0, NULL, #0x30  ; false
    // 0x6f9a3c: StoreField: r3->field_4f = r0
    //     0x6f9a3c: stur            w0, [x3, #0x4f]
    // 0x6f9a40: r1 = Instance_Icon
    //     0x6f9a40: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c718] Obj!Icon@a1e771
    //     0x6f9a44: ldr             x1, [x1, #0x718]
    // 0x6f9a48: StoreField: r3->field_1f = r1
    //     0x6f9a48: stur            w1, [x3, #0x1f]
    // 0x6f9a4c: r1 = Instance__IconButtonVariant
    //     0x6f9a4c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6f9a50: ldr             x1, [x1, #0x1b8]
    // 0x6f9a54: StoreField: r3->field_6f = r1
    //     0x6f9a54: stur            w1, [x3, #0x6f]
    // 0x6f9a58: r1 = Null
    //     0x6f9a58: mov             x1, NULL
    // 0x6f9a5c: r2 = 4
    //     0x6f9a5c: mov             x2, #4
    // 0x6f9a60: r0 = AllocateArray()
    //     0x6f9a60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f9a64: mov             x2, x0
    // 0x6f9a68: ldur            x0, [fp, #-0x18]
    // 0x6f9a6c: stur            x2, [fp, #-8]
    // 0x6f9a70: StoreField: r2->field_f = r0
    //     0x6f9a70: stur            w0, [x2, #0xf]
    // 0x6f9a74: ldur            x0, [fp, #-0x10]
    // 0x6f9a78: StoreField: r2->field_13 = r0
    //     0x6f9a78: stur            w0, [x2, #0x13]
    // 0x6f9a7c: r1 = <Widget>
    //     0x6f9a7c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f9a80: r0 = AllocateGrowableArray()
    //     0x6f9a80: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f9a84: mov             x1, x0
    // 0x6f9a88: ldur            x0, [fp, #-8]
    // 0x6f9a8c: stur            x1, [fp, #-0x10]
    // 0x6f9a90: StoreField: r1->field_f = r0
    //     0x6f9a90: stur            w0, [x1, #0xf]
    // 0x6f9a94: r0 = 4
    //     0x6f9a94: mov             x0, #4
    // 0x6f9a98: StoreField: r1->field_b = r0
    //     0x6f9a98: stur            w0, [x1, #0xb]
    // 0x6f9a9c: r0 = Row()
    //     0x6f9a9c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6f9aa0: mov             x1, x0
    // 0x6f9aa4: r0 = Instance_Axis
    //     0x6f9aa4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6f9aa8: stur            x1, [fp, #-8]
    // 0x6f9aac: StoreField: r1->field_f = r0
    //     0x6f9aac: stur            w0, [x1, #0xf]
    // 0x6f9ab0: r0 = Instance_MainAxisAlignment
    //     0x6f9ab0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f9ab4: ldr             x0, [x0, #0x230]
    // 0x6f9ab8: StoreField: r1->field_13 = r0
    //     0x6f9ab8: stur            w0, [x1, #0x13]
    // 0x6f9abc: r0 = Instance_MainAxisSize
    //     0x6f9abc: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6f9ac0: ldr             x0, [x0, #0xb60]
    // 0x6f9ac4: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f9ac4: stur            w0, [x1, #0x17]
    // 0x6f9ac8: r0 = Instance_CrossAxisAlignment
    //     0x6f9ac8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f9acc: ldr             x0, [x0, #0x338]
    // 0x6f9ad0: StoreField: r1->field_1b = r0
    //     0x6f9ad0: stur            w0, [x1, #0x1b]
    // 0x6f9ad4: r0 = Instance_VerticalDirection
    //     0x6f9ad4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f9ad8: ldr             x0, [x0, #0x340]
    // 0x6f9adc: StoreField: r1->field_23 = r0
    //     0x6f9adc: stur            w0, [x1, #0x23]
    // 0x6f9ae0: r0 = Instance_Clip
    //     0x6f9ae0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f9ae4: ldr             x0, [x0, #0x348]
    // 0x6f9ae8: StoreField: r1->field_2b = r0
    //     0x6f9ae8: stur            w0, [x1, #0x2b]
    // 0x6f9aec: StoreField: r1->field_2f = rZR
    //     0x6f9aec: stur            xzr, [x1, #0x2f]
    // 0x6f9af0: ldur            x0, [fp, #-0x10]
    // 0x6f9af4: StoreField: r1->field_b = r0
    //     0x6f9af4: stur            w0, [x1, #0xb]
    // 0x6f9af8: r0 = ListTile()
    //     0x6f9af8: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6f9afc: mov             x1, x0
    // 0x6f9b00: ldur            x0, [fp, #-0x20]
    // 0x6f9b04: stur            x1, [fp, #-0x10]
    // 0x6f9b08: StoreField: r1->field_f = r0
    //     0x6f9b08: stur            w0, [x1, #0xf]
    // 0x6f9b0c: ldur            x0, [fp, #-0x28]
    // 0x6f9b10: StoreField: r1->field_13 = r0
    //     0x6f9b10: stur            w0, [x1, #0x13]
    // 0x6f9b14: ldur            x0, [fp, #-8]
    // 0x6f9b18: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f9b18: stur            w0, [x1, #0x17]
    // 0x6f9b1c: r0 = true
    //     0x6f9b1c: add             x0, NULL, #0x20  ; true
    // 0x6f9b20: StoreField: r1->field_4b = r0
    //     0x6f9b20: stur            w0, [x1, #0x4b]
    // 0x6f9b24: r2 = false
    //     0x6f9b24: add             x2, NULL, #0x30  ; false
    // 0x6f9b28: StoreField: r1->field_5f = r2
    //     0x6f9b28: stur            w2, [x1, #0x5f]
    // 0x6f9b2c: StoreField: r1->field_73 = r2
    //     0x6f9b2c: stur            w2, [x1, #0x73]
    // 0x6f9b30: StoreField: r1->field_93 = r0
    //     0x6f9b30: stur            w0, [x1, #0x93]
    // 0x6f9b34: r0 = Card()
    //     0x6f9b34: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x6f9b38: d0 = 20.000000
    //     0x6f9b38: fmov            d0, #20.00000000
    // 0x6f9b3c: stur            x0, [fp, #-8]
    // 0x6f9b40: ArrayStore: r0[0] = d0  ; List_8
    //     0x6f9b40: stur            d0, [x0, #0x17]
    // 0x6f9b44: r1 = true
    //     0x6f9b44: add             x1, NULL, #0x20  ; true
    // 0x6f9b48: StoreField: r0->field_23 = r1
    //     0x6f9b48: stur            w1, [x0, #0x23]
    // 0x6f9b4c: ldur            x2, [fp, #-0x10]
    // 0x6f9b50: StoreField: r0->field_33 = r2
    //     0x6f9b50: stur            w2, [x0, #0x33]
    // 0x6f9b54: StoreField: r0->field_2f = r1
    //     0x6f9b54: stur            w1, [x0, #0x2f]
    // 0x6f9b58: r1 = Instance__CardVariant
    //     0x6f9b58: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x6f9b5c: ldr             x1, [x1, #0xd38]
    // 0x6f9b60: StoreField: r0->field_37 = r1
    //     0x6f9b60: stur            w1, [x0, #0x37]
    // 0x6f9b64: r0 = Padding()
    //     0x6f9b64: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6f9b68: r1 = Instance_EdgeInsets
    //     0x6f9b68: add             x1, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x6f9b6c: ldr             x1, [x1, #0x480]
    // 0x6f9b70: StoreField: r0->field_f = r1
    //     0x6f9b70: stur            w1, [x0, #0xf]
    // 0x6f9b74: ldur            x1, [fp, #-8]
    // 0x6f9b78: StoreField: r0->field_b = r1
    //     0x6f9b78: stur            w1, [x0, #0xb]
    // 0x6f9b7c: LeaveFrame
    //     0x6f9b7c: mov             SP, fp
    //     0x6f9b80: ldp             fp, lr, [SP], #0x10
    // 0x6f9b84: ret
    //     0x6f9b84: ret             
    // 0x6f9b88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9b88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9b8c: b               #0x6f9914
    // 0x6f9b90: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f9b90: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f9b94, size: 0x6c
    // 0x6f9b94: EnterFrame
    //     0x6f9b94: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9b98: mov             fp, SP
    // 0x6f9b9c: ldr             x0, [fp, #0x10]
    // 0x6f9ba0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f9ba0: ldur            w1, [x0, #0x17]
    // 0x6f9ba4: DecompressPointer r1
    //     0x6f9ba4: add             x1, x1, HEAP, lsl #32
    // 0x6f9ba8: CheckStackOverflow
    //     0x6f9ba8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9bac: cmp             SP, x16
    //     0x6f9bb0: b.ls            #0x6f9bf8
    // 0x6f9bb4: LoadField: r0 = r1->field_b
    //     0x6f9bb4: ldur            w0, [x1, #0xb]
    // 0x6f9bb8: DecompressPointer r0
    //     0x6f9bb8: add             x0, x0, HEAP, lsl #32
    // 0x6f9bbc: LoadField: r2 = r0->field_f
    //     0x6f9bbc: ldur            w2, [x0, #0xf]
    // 0x6f9bc0: DecompressPointer r2
    //     0x6f9bc0: add             x2, x2, HEAP, lsl #32
    // 0x6f9bc4: LoadField: r0 = r1->field_f
    //     0x6f9bc4: ldur            w0, [x1, #0xf]
    // 0x6f9bc8: DecompressPointer r0
    //     0x6f9bc8: add             x0, x0, HEAP, lsl #32
    // 0x6f9bcc: r1 = LoadInt32Instr(r0)
    //     0x6f9bcc: sbfx            x1, x0, #1, #0x1f
    //     0x6f9bd0: tbz             w0, #0, #0x6f9bd8
    //     0x6f9bd4: ldur            x1, [x0, #7]
    // 0x6f9bd8: mov             x16, x1
    // 0x6f9bdc: mov             x1, x2
    // 0x6f9be0: mov             x2, x16
    // 0x6f9be4: r0 = menuAc()
    //     0x6f9be4: bl              #0x6f9c00  ; [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc
    // 0x6f9be8: r0 = Null
    //     0x6f9be8: mov             x0, NULL
    // 0x6f9bec: LeaveFrame
    //     0x6f9bec: mov             SP, fp
    //     0x6f9bf0: ldp             fp, lr, [SP], #0x10
    // 0x6f9bf4: ret
    //     0x6f9bf4: ret             
    // 0x6f9bf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9bf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9bfc: b               #0x6f9bb4
  }
  _ menuAc(/* No info */) {
    // ** addr: 0x6f9c00, size: 0xb0
    // 0x6f9c00: EnterFrame
    //     0x6f9c00: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9c04: mov             fp, SP
    // 0x6f9c08: AllocStack(0x38)
    //     0x6f9c08: sub             SP, SP, #0x38
    // 0x6f9c0c: SetupParameters(_ZikirlerimState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f9c0c: stur            x1, [fp, #-8]
    //     0x6f9c10: stur            x2, [fp, #-0x10]
    // 0x6f9c14: CheckStackOverflow
    //     0x6f9c14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9c18: cmp             SP, x16
    //     0x6f9c1c: b.ls            #0x6f9ca4
    // 0x6f9c20: r1 = 2
    //     0x6f9c20: mov             x1, #2
    // 0x6f9c24: r0 = AllocateContext()
    //     0x6f9c24: bl              #0x927010  ; AllocateContextStub
    // 0x6f9c28: mov             x3, x0
    // 0x6f9c2c: ldur            x2, [fp, #-8]
    // 0x6f9c30: StoreField: r3->field_f = r2
    //     0x6f9c30: stur            w2, [x3, #0xf]
    // 0x6f9c34: ldur            x4, [fp, #-0x10]
    // 0x6f9c38: r0 = BoxInt64Instr(r4)
    //     0x6f9c38: sbfiz           x0, x4, #1, #0x1f
    //     0x6f9c3c: cmp             x4, x0, asr #1
    //     0x6f9c40: b.eq            #0x6f9c4c
    //     0x6f9c44: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f9c48: stur            x4, [x0, #7]
    // 0x6f9c4c: StoreField: r3->field_13 = r0
    //     0x6f9c4c: stur            w0, [x3, #0x13]
    // 0x6f9c50: LoadField: r0 = r2->field_f
    //     0x6f9c50: ldur            w0, [x2, #0xf]
    // 0x6f9c54: DecompressPointer r0
    //     0x6f9c54: add             x0, x0, HEAP, lsl #32
    // 0x6f9c58: stur            x0, [fp, #-0x18]
    // 0x6f9c5c: cmp             w0, NULL
    // 0x6f9c60: b.eq            #0x6f9cac
    // 0x6f9c64: mov             x2, x3
    // 0x6f9c68: r1 = Function '<anonymous closure>':.
    //     0x6f9c68: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c720] AnonymousClosure: (0x6f9cb0), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc (0x6f9c00)
    //     0x6f9c6c: ldr             x1, [x1, #0x720]
    // 0x6f9c70: r0 = AllocateClosure()
    //     0x6f9c70: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9c74: stp             x0, NULL, [SP, #0x10]
    // 0x6f9c78: ldur            x16, [fp, #-0x18]
    // 0x6f9c7c: r30 = Instance_RoundedRectangleBorder
    //     0x6f9c7c: add             lr, PP, #0x2c, lsl #12  ; [pp+0x2c728] Obj!RoundedRectangleBorder@a0f2b1
    //     0x6f9c80: ldr             lr, [lr, #0x728]
    // 0x6f9c84: stp             lr, x16, [SP]
    // 0x6f9c88: r4 = const [0x1, 0x3, 0x3, 0x2, shape, 0x2, null]
    //     0x6f9c88: add             x4, PP, #0x2c, lsl #12  ; [pp+0x2c730] List(7) [0x1, 0x3, 0x3, 0x2, "shape", 0x2, Null]
    //     0x6f9c8c: ldr             x4, [x4, #0x730]
    // 0x6f9c90: r0 = showModalBottomSheet()
    //     0x6f9c90: bl              #0x6e0074  ; [package:flutter/src/material/bottom_sheet.dart] ::showModalBottomSheet
    // 0x6f9c94: r0 = Null
    //     0x6f9c94: mov             x0, NULL
    // 0x6f9c98: LeaveFrame
    //     0x6f9c98: mov             SP, fp
    //     0x6f9c9c: ldp             fp, lr, [SP], #0x10
    // 0x6f9ca0: ret
    //     0x6f9ca0: ret             
    // 0x6f9ca4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9ca4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9ca8: b               #0x6f9c20
    // 0x6f9cac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f9cac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] SizedBox <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6f9cb0, size: 0x21c
    // 0x6f9cb0: EnterFrame
    //     0x6f9cb0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9cb4: mov             fp, SP
    // 0x6f9cb8: AllocStack(0x20)
    //     0x6f9cb8: sub             SP, SP, #0x20
    // 0x6f9cbc: SetupParameters([dynamic _ /* r0 */])
    //     0x6f9cbc: ldr             x0, [fp, #0x18]
    //     0x6f9cc0: ldur            w1, [x0, #0x17]
    //     0x6f9cc4: add             x1, x1, HEAP, lsl #32
    //     0x6f9cc8: stur            x1, [fp, #-8]
    // 0x6f9ccc: r1 = 1
    //     0x6f9ccc: mov             x1, #1
    // 0x6f9cd0: r0 = AllocateContext()
    //     0x6f9cd0: bl              #0x927010  ; AllocateContextStub
    // 0x6f9cd4: mov             x1, x0
    // 0x6f9cd8: ldur            x0, [fp, #-8]
    // 0x6f9cdc: stur            x1, [fp, #-0x10]
    // 0x6f9ce0: StoreField: r1->field_b = r0
    //     0x6f9ce0: stur            w0, [x1, #0xb]
    // 0x6f9ce4: ldr             x0, [fp, #0x10]
    // 0x6f9ce8: StoreField: r1->field_f = r0
    //     0x6f9ce8: stur            w0, [x1, #0xf]
    // 0x6f9cec: r0 = ListTile()
    //     0x6f9cec: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6f9cf0: mov             x3, x0
    // 0x6f9cf4: r0 = Instance_Icon
    //     0x6f9cf4: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c738] Obj!Icon@a1e831
    //     0x6f9cf8: ldr             x0, [x0, #0x738]
    // 0x6f9cfc: stur            x3, [fp, #-8]
    // 0x6f9d00: StoreField: r3->field_b = r0
    //     0x6f9d00: stur            w0, [x3, #0xb]
    // 0x6f9d04: r0 = Instance_Text
    //     0x6f9d04: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c740] Obj!Text@a1c441
    //     0x6f9d08: ldr             x0, [x0, #0x740]
    // 0x6f9d0c: StoreField: r3->field_f = r0
    //     0x6f9d0c: stur            w0, [x3, #0xf]
    // 0x6f9d10: r0 = true
    //     0x6f9d10: add             x0, NULL, #0x20  ; true
    // 0x6f9d14: StoreField: r3->field_4b = r0
    //     0x6f9d14: stur            w0, [x3, #0x4b]
    // 0x6f9d18: ldur            x2, [fp, #-0x10]
    // 0x6f9d1c: r1 = Function '<anonymous closure>':.
    //     0x6f9d1c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c748] AnonymousClosure: (0x6fc1e4), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc (0x6f9c00)
    //     0x6f9d20: ldr             x1, [x1, #0x748]
    // 0x6f9d24: r0 = AllocateClosure()
    //     0x6f9d24: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9d28: mov             x1, x0
    // 0x6f9d2c: ldur            x0, [fp, #-8]
    // 0x6f9d30: StoreField: r0->field_4f = r1
    //     0x6f9d30: stur            w1, [x0, #0x4f]
    // 0x6f9d34: r1 = false
    //     0x6f9d34: add             x1, NULL, #0x30  ; false
    // 0x6f9d38: StoreField: r0->field_5f = r1
    //     0x6f9d38: stur            w1, [x0, #0x5f]
    // 0x6f9d3c: StoreField: r0->field_73 = r1
    //     0x6f9d3c: stur            w1, [x0, #0x73]
    // 0x6f9d40: r2 = true
    //     0x6f9d40: add             x2, NULL, #0x20  ; true
    // 0x6f9d44: StoreField: r0->field_93 = r2
    //     0x6f9d44: stur            w2, [x0, #0x93]
    // 0x6f9d48: r0 = ListTile()
    //     0x6f9d48: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6f9d4c: mov             x3, x0
    // 0x6f9d50: r0 = Instance_Icon
    //     0x6f9d50: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c750] Obj!Icon@a1e7f1
    //     0x6f9d54: ldr             x0, [x0, #0x750]
    // 0x6f9d58: stur            x3, [fp, #-0x18]
    // 0x6f9d5c: StoreField: r3->field_b = r0
    //     0x6f9d5c: stur            w0, [x3, #0xb]
    // 0x6f9d60: r0 = Instance_Text
    //     0x6f9d60: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c758] Obj!Text@a1c3f1
    //     0x6f9d64: ldr             x0, [x0, #0x758]
    // 0x6f9d68: StoreField: r3->field_f = r0
    //     0x6f9d68: stur            w0, [x3, #0xf]
    // 0x6f9d6c: r0 = true
    //     0x6f9d6c: add             x0, NULL, #0x20  ; true
    // 0x6f9d70: StoreField: r3->field_4b = r0
    //     0x6f9d70: stur            w0, [x3, #0x4b]
    // 0x6f9d74: ldur            x2, [fp, #-0x10]
    // 0x6f9d78: r1 = Function '<anonymous closure>':.
    //     0x6f9d78: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c760] AnonymousClosure: (0x6fb5ec), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc (0x6f9c00)
    //     0x6f9d7c: ldr             x1, [x1, #0x760]
    // 0x6f9d80: r0 = AllocateClosure()
    //     0x6f9d80: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9d84: mov             x1, x0
    // 0x6f9d88: ldur            x0, [fp, #-0x18]
    // 0x6f9d8c: StoreField: r0->field_4f = r1
    //     0x6f9d8c: stur            w1, [x0, #0x4f]
    // 0x6f9d90: r1 = false
    //     0x6f9d90: add             x1, NULL, #0x30  ; false
    // 0x6f9d94: StoreField: r0->field_5f = r1
    //     0x6f9d94: stur            w1, [x0, #0x5f]
    // 0x6f9d98: StoreField: r0->field_73 = r1
    //     0x6f9d98: stur            w1, [x0, #0x73]
    // 0x6f9d9c: r2 = true
    //     0x6f9d9c: add             x2, NULL, #0x20  ; true
    // 0x6f9da0: StoreField: r0->field_93 = r2
    //     0x6f9da0: stur            w2, [x0, #0x93]
    // 0x6f9da4: r0 = ListTile()
    //     0x6f9da4: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6f9da8: mov             x3, x0
    // 0x6f9dac: r0 = Instance_Icon
    //     0x6f9dac: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c768] Obj!Icon@a1e7b1
    //     0x6f9db0: ldr             x0, [x0, #0x768]
    // 0x6f9db4: stur            x3, [fp, #-0x20]
    // 0x6f9db8: StoreField: r3->field_b = r0
    //     0x6f9db8: stur            w0, [x3, #0xb]
    // 0x6f9dbc: r0 = Instance_Text
    //     0x6f9dbc: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c770] Obj!Text@a1c3a1
    //     0x6f9dc0: ldr             x0, [x0, #0x770]
    // 0x6f9dc4: StoreField: r3->field_f = r0
    //     0x6f9dc4: stur            w0, [x3, #0xf]
    // 0x6f9dc8: r0 = true
    //     0x6f9dc8: add             x0, NULL, #0x20  ; true
    // 0x6f9dcc: StoreField: r3->field_4b = r0
    //     0x6f9dcc: stur            w0, [x3, #0x4b]
    // 0x6f9dd0: ldur            x2, [fp, #-0x10]
    // 0x6f9dd4: r1 = Function '<anonymous closure>':.
    //     0x6f9dd4: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c778] AnonymousClosure: (0x6f9ecc), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc (0x6f9c00)
    //     0x6f9dd8: ldr             x1, [x1, #0x778]
    // 0x6f9ddc: r0 = AllocateClosure()
    //     0x6f9ddc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9de0: mov             x1, x0
    // 0x6f9de4: ldur            x0, [fp, #-0x20]
    // 0x6f9de8: StoreField: r0->field_4f = r1
    //     0x6f9de8: stur            w1, [x0, #0x4f]
    // 0x6f9dec: r1 = false
    //     0x6f9dec: add             x1, NULL, #0x30  ; false
    // 0x6f9df0: StoreField: r0->field_5f = r1
    //     0x6f9df0: stur            w1, [x0, #0x5f]
    // 0x6f9df4: StoreField: r0->field_73 = r1
    //     0x6f9df4: stur            w1, [x0, #0x73]
    // 0x6f9df8: r1 = true
    //     0x6f9df8: add             x1, NULL, #0x20  ; true
    // 0x6f9dfc: StoreField: r0->field_93 = r1
    //     0x6f9dfc: stur            w1, [x0, #0x93]
    // 0x6f9e00: r1 = Null
    //     0x6f9e00: mov             x1, NULL
    // 0x6f9e04: r2 = 6
    //     0x6f9e04: mov             x2, #6
    // 0x6f9e08: r0 = AllocateArray()
    //     0x6f9e08: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f9e0c: mov             x2, x0
    // 0x6f9e10: ldur            x0, [fp, #-8]
    // 0x6f9e14: stur            x2, [fp, #-0x10]
    // 0x6f9e18: StoreField: r2->field_f = r0
    //     0x6f9e18: stur            w0, [x2, #0xf]
    // 0x6f9e1c: ldur            x0, [fp, #-0x18]
    // 0x6f9e20: StoreField: r2->field_13 = r0
    //     0x6f9e20: stur            w0, [x2, #0x13]
    // 0x6f9e24: ldur            x0, [fp, #-0x20]
    // 0x6f9e28: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f9e28: stur            w0, [x2, #0x17]
    // 0x6f9e2c: r1 = <Widget>
    //     0x6f9e2c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f9e30: r0 = AllocateGrowableArray()
    //     0x6f9e30: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f9e34: mov             x1, x0
    // 0x6f9e38: ldur            x0, [fp, #-0x10]
    // 0x6f9e3c: stur            x1, [fp, #-8]
    // 0x6f9e40: StoreField: r1->field_f = r0
    //     0x6f9e40: stur            w0, [x1, #0xf]
    // 0x6f9e44: r0 = 6
    //     0x6f9e44: mov             x0, #6
    // 0x6f9e48: StoreField: r1->field_b = r0
    //     0x6f9e48: stur            w0, [x1, #0xb]
    // 0x6f9e4c: r0 = Column()
    //     0x6f9e4c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f9e50: mov             x1, x0
    // 0x6f9e54: r0 = Instance_Axis
    //     0x6f9e54: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f9e58: stur            x1, [fp, #-0x10]
    // 0x6f9e5c: StoreField: r1->field_f = r0
    //     0x6f9e5c: stur            w0, [x1, #0xf]
    // 0x6f9e60: r0 = Instance_MainAxisAlignment
    //     0x6f9e60: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f9e64: ldr             x0, [x0, #0x230]
    // 0x6f9e68: StoreField: r1->field_13 = r0
    //     0x6f9e68: stur            w0, [x1, #0x13]
    // 0x6f9e6c: r0 = Instance_MainAxisSize
    //     0x6f9e6c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f9e70: ldr             x0, [x0, #0x330]
    // 0x6f9e74: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f9e74: stur            w0, [x1, #0x17]
    // 0x6f9e78: r0 = Instance_CrossAxisAlignment
    //     0x6f9e78: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f9e7c: ldr             x0, [x0, #0x338]
    // 0x6f9e80: StoreField: r1->field_1b = r0
    //     0x6f9e80: stur            w0, [x1, #0x1b]
    // 0x6f9e84: r0 = Instance_VerticalDirection
    //     0x6f9e84: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f9e88: ldr             x0, [x0, #0x340]
    // 0x6f9e8c: StoreField: r1->field_23 = r0
    //     0x6f9e8c: stur            w0, [x1, #0x23]
    // 0x6f9e90: r0 = Instance_Clip
    //     0x6f9e90: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f9e94: ldr             x0, [x0, #0x348]
    // 0x6f9e98: StoreField: r1->field_2b = r0
    //     0x6f9e98: stur            w0, [x1, #0x2b]
    // 0x6f9e9c: StoreField: r1->field_2f = rZR
    //     0x6f9e9c: stur            xzr, [x1, #0x2f]
    // 0x6f9ea0: ldur            x0, [fp, #-8]
    // 0x6f9ea4: StoreField: r1->field_b = r0
    //     0x6f9ea4: stur            w0, [x1, #0xb]
    // 0x6f9ea8: r0 = SizedBox()
    //     0x6f9ea8: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6f9eac: r1 = 170.000000
    //     0x6f9eac: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c780] 170
    //     0x6f9eb0: ldr             x1, [x1, #0x780]
    // 0x6f9eb4: StoreField: r0->field_13 = r1
    //     0x6f9eb4: stur            w1, [x0, #0x13]
    // 0x6f9eb8: ldur            x1, [fp, #-0x10]
    // 0x6f9ebc: StoreField: r0->field_b = r1
    //     0x6f9ebc: stur            w1, [x0, #0xb]
    // 0x6f9ec0: LeaveFrame
    //     0x6f9ec0: mov             SP, fp
    //     0x6f9ec4: ldp             fp, lr, [SP], #0x10
    // 0x6f9ec8: ret
    //     0x6f9ec8: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f9ecc, size: 0x8c
    // 0x6f9ecc: EnterFrame
    //     0x6f9ecc: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9ed0: mov             fp, SP
    // 0x6f9ed4: AllocStack(0x18)
    //     0x6f9ed4: sub             SP, SP, #0x18
    // 0x6f9ed8: SetupParameters([dynamic _ /* r0 */])
    //     0x6f9ed8: ldr             x0, [fp, #0x10]
    //     0x6f9edc: ldur            w1, [x0, #0x17]
    //     0x6f9ee0: add             x1, x1, HEAP, lsl #32
    //     0x6f9ee4: stur            x1, [fp, #-8]
    // 0x6f9ee8: CheckStackOverflow
    //     0x6f9ee8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9eec: cmp             SP, x16
    //     0x6f9ef0: b.ls            #0x6f9f50
    // 0x6f9ef4: LoadField: r0 = r1->field_f
    //     0x6f9ef4: ldur            w0, [x1, #0xf]
    // 0x6f9ef8: DecompressPointer r0
    //     0x6f9ef8: add             x0, x0, HEAP, lsl #32
    // 0x6f9efc: r16 = <Object?>
    //     0x6f9efc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6f9f00: stp             x0, x16, [SP]
    // 0x6f9f04: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6f9f04: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6f9f08: r0 = pop()
    //     0x6f9f08: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6f9f0c: ldur            x0, [fp, #-8]
    // 0x6f9f10: LoadField: r1 = r0->field_b
    //     0x6f9f10: ldur            w1, [x0, #0xb]
    // 0x6f9f14: DecompressPointer r1
    //     0x6f9f14: add             x1, x1, HEAP, lsl #32
    // 0x6f9f18: LoadField: r0 = r1->field_f
    //     0x6f9f18: ldur            w0, [x1, #0xf]
    // 0x6f9f1c: DecompressPointer r0
    //     0x6f9f1c: add             x0, x0, HEAP, lsl #32
    // 0x6f9f20: LoadField: r2 = r1->field_13
    //     0x6f9f20: ldur            w2, [x1, #0x13]
    // 0x6f9f24: DecompressPointer r2
    //     0x6f9f24: add             x2, x2, HEAP, lsl #32
    // 0x6f9f28: r1 = LoadInt32Instr(r2)
    //     0x6f9f28: sbfx            x1, x2, #1, #0x1f
    //     0x6f9f2c: tbz             w2, #0, #0x6f9f34
    //     0x6f9f30: ldur            x1, [x2, #7]
    // 0x6f9f34: mov             x2, x1
    // 0x6f9f38: mov             x1, x0
    // 0x6f9f3c: r0 = silmeDialog()
    //     0x6f9f3c: bl              #0x6f9f58  ; [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::silmeDialog
    // 0x6f9f40: r0 = Null
    //     0x6f9f40: mov             x0, NULL
    // 0x6f9f44: LeaveFrame
    //     0x6f9f44: mov             SP, fp
    //     0x6f9f48: ldp             fp, lr, [SP], #0x10
    // 0x6f9f4c: ret
    //     0x6f9f4c: ret             
    // 0x6f9f50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9f50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9f54: b               #0x6f9ef4
  }
  _ silmeDialog(/* No info */) {
    // ** addr: 0x6f9f58, size: 0xa4
    // 0x6f9f58: EnterFrame
    //     0x6f9f58: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9f5c: mov             fp, SP
    // 0x6f9f60: AllocStack(0x30)
    //     0x6f9f60: sub             SP, SP, #0x30
    // 0x6f9f64: SetupParameters(_ZikirlerimState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f9f64: stur            x1, [fp, #-8]
    //     0x6f9f68: stur            x2, [fp, #-0x10]
    // 0x6f9f6c: CheckStackOverflow
    //     0x6f9f6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9f70: cmp             SP, x16
    //     0x6f9f74: b.ls            #0x6f9ff0
    // 0x6f9f78: r1 = 2
    //     0x6f9f78: mov             x1, #2
    // 0x6f9f7c: r0 = AllocateContext()
    //     0x6f9f7c: bl              #0x927010  ; AllocateContextStub
    // 0x6f9f80: mov             x3, x0
    // 0x6f9f84: ldur            x2, [fp, #-8]
    // 0x6f9f88: StoreField: r3->field_f = r2
    //     0x6f9f88: stur            w2, [x3, #0xf]
    // 0x6f9f8c: ldur            x4, [fp, #-0x10]
    // 0x6f9f90: r0 = BoxInt64Instr(r4)
    //     0x6f9f90: sbfiz           x0, x4, #1, #0x1f
    //     0x6f9f94: cmp             x4, x0, asr #1
    //     0x6f9f98: b.eq            #0x6f9fa4
    //     0x6f9f9c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f9fa0: stur            x4, [x0, #7]
    // 0x6f9fa4: StoreField: r3->field_13 = r0
    //     0x6f9fa4: stur            w0, [x3, #0x13]
    // 0x6f9fa8: LoadField: r0 = r2->field_f
    //     0x6f9fa8: ldur            w0, [x2, #0xf]
    // 0x6f9fac: DecompressPointer r0
    //     0x6f9fac: add             x0, x0, HEAP, lsl #32
    // 0x6f9fb0: stur            x0, [fp, #-0x18]
    // 0x6f9fb4: cmp             w0, NULL
    // 0x6f9fb8: b.eq            #0x6f9ff8
    // 0x6f9fbc: mov             x2, x3
    // 0x6f9fc0: r1 = Function '<anonymous closure>':.
    //     0x6f9fc0: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c788] AnonymousClosure: (0x6f9ffc), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::silmeDialog (0x6f9f58)
    //     0x6f9fc4: ldr             x1, [x1, #0x788]
    // 0x6f9fc8: r0 = AllocateClosure()
    //     0x6f9fc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9fcc: stp             x0, NULL, [SP, #8]
    // 0x6f9fd0: ldur            x16, [fp, #-0x18]
    // 0x6f9fd4: str             x16, [SP]
    // 0x6f9fd8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f9fd8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f9fdc: r0 = showDialog()
    //     0x6f9fdc: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6f9fe0: r0 = Null
    //     0x6f9fe0: mov             x0, NULL
    // 0x6f9fe4: LeaveFrame
    //     0x6f9fe4: mov             SP, fp
    //     0x6f9fe8: ldp             fp, lr, [SP], #0x10
    // 0x6f9fec: ret
    //     0x6f9fec: ret             
    // 0x6f9ff0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9ff0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9ff4: b               #0x6f9f78
    // 0x6f9ff8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f9ff8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6f9ffc, size: 0x27c
    // 0x6f9ffc: EnterFrame
    //     0x6f9ffc: stp             fp, lr, [SP, #-0x10]!
    //     0x6fa000: mov             fp, SP
    // 0x6fa004: AllocStack(0x30)
    //     0x6fa004: sub             SP, SP, #0x30
    // 0x6fa008: SetupParameters([dynamic _ /* r0 */])
    //     0x6fa008: ldr             x0, [fp, #0x18]
    //     0x6fa00c: ldur            w1, [x0, #0x17]
    //     0x6fa010: add             x1, x1, HEAP, lsl #32
    //     0x6fa014: stur            x1, [fp, #-8]
    // 0x6fa018: CheckStackOverflow
    //     0x6fa018: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fa01c: cmp             SP, x16
    //     0x6fa020: b.ls            #0x6fa26c
    // 0x6fa024: r1 = 1
    //     0x6fa024: mov             x1, #1
    // 0x6fa028: r0 = AllocateContext()
    //     0x6fa028: bl              #0x927010  ; AllocateContextStub
    // 0x6fa02c: mov             x1, x0
    // 0x6fa030: ldur            x0, [fp, #-8]
    // 0x6fa034: stur            x1, [fp, #-0x10]
    // 0x6fa038: StoreField: r1->field_b = r0
    //     0x6fa038: stur            w0, [x1, #0xb]
    // 0x6fa03c: ldr             x2, [fp, #0x10]
    // 0x6fa040: StoreField: r1->field_f = r2
    //     0x6fa040: stur            w2, [x1, #0xf]
    // 0x6fa044: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fa044: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fa048: ldr             x0, [x0, #0x2070]
    //     0x6fa04c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fa050: cmp             w0, w16
    //     0x6fa054: b.ne            #0x6fa064
    //     0x6fa058: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fa05c: ldr             x2, [x2, #0x770]
    //     0x6fa060: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fa064: mov             x2, x0
    // 0x6fa068: ldur            x0, [fp, #-8]
    // 0x6fa06c: LoadField: r1 = r0->field_13
    //     0x6fa06c: ldur            w1, [x0, #0x13]
    // 0x6fa070: DecompressPointer r1
    //     0x6fa070: add             x1, x1, HEAP, lsl #32
    // 0x6fa074: LoadField: r0 = r2->field_b
    //     0x6fa074: ldur            w0, [x2, #0xb]
    // 0x6fa078: r3 = LoadInt32Instr(r1)
    //     0x6fa078: sbfx            x3, x1, #1, #0x1f
    //     0x6fa07c: tbz             w1, #0, #0x6fa084
    //     0x6fa080: ldur            x3, [x1, #7]
    // 0x6fa084: r1 = LoadInt32Instr(r0)
    //     0x6fa084: sbfx            x1, x0, #1, #0x1f
    // 0x6fa088: mov             x0, x1
    // 0x6fa08c: mov             x1, x3
    // 0x6fa090: cmp             x1, x0
    // 0x6fa094: b.hs            #0x6fa274
    // 0x6fa098: LoadField: r0 = r2->field_f
    //     0x6fa098: ldur            w0, [x2, #0xf]
    // 0x6fa09c: DecompressPointer r0
    //     0x6fa09c: add             x0, x0, HEAP, lsl #32
    // 0x6fa0a0: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0x6fa0a0: add             x16, x0, x3, lsl #2
    //     0x6fa0a4: ldur            w1, [x16, #0xf]
    // 0x6fa0a8: DecompressPointer r1
    //     0x6fa0a8: add             x1, x1, HEAP, lsl #32
    // 0x6fa0ac: LoadField: r0 = r1->field_7
    //     0x6fa0ac: ldur            w0, [x1, #7]
    // 0x6fa0b0: DecompressPointer r0
    //     0x6fa0b0: add             x0, x0, HEAP, lsl #32
    // 0x6fa0b4: stur            x0, [fp, #-8]
    // 0x6fa0b8: r1 = Null
    //     0x6fa0b8: mov             x1, NULL
    // 0x6fa0bc: r2 = 4
    //     0x6fa0bc: mov             x2, #4
    // 0x6fa0c0: r0 = AllocateArray()
    //     0x6fa0c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fa0c4: mov             x1, x0
    // 0x6fa0c8: ldur            x0, [fp, #-8]
    // 0x6fa0cc: StoreField: r1->field_f = r0
    //     0x6fa0cc: stur            w0, [x1, #0xf]
    // 0x6fa0d0: r16 = " adlı zikri silmek istediğinize emin misiniz\?"
    //     0x6fa0d0: add             x16, PP, #0x2c, lsl #12  ; [pp+0x2c790] " adlı zikri silmek istediğinize emin misiniz\?"
    //     0x6fa0d4: ldr             x16, [x16, #0x790]
    // 0x6fa0d8: StoreField: r1->field_13 = r16
    //     0x6fa0d8: stur            w16, [x1, #0x13]
    // 0x6fa0dc: str             x1, [SP]
    // 0x6fa0e0: r0 = _interpolate()
    //     0x6fa0e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fa0e4: stur            x0, [fp, #-8]
    // 0x6fa0e8: r0 = Text()
    //     0x6fa0e8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fa0ec: mov             x1, x0
    // 0x6fa0f0: ldur            x0, [fp, #-8]
    // 0x6fa0f4: stur            x1, [fp, #-0x18]
    // 0x6fa0f8: StoreField: r1->field_b = r0
    //     0x6fa0f8: stur            w0, [x1, #0xb]
    // 0x6fa0fc: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x6fa0fc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fa100: ldr             x0, [x0, #0x2078]
    //     0x6fa104: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fa108: cmp             w0, w16
    //     0x6fa10c: b.ne            #0x6fa11c
    //     0x6fa110: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x6fa114: ldr             x2, [x2, #0x450]
    //     0x6fa118: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fa11c: stur            x0, [fp, #-8]
    // 0x6fa120: r0 = TextStyle()
    //     0x6fa120: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6fa124: mov             x1, x0
    // 0x6fa128: r0 = true
    //     0x6fa128: add             x0, NULL, #0x20  ; true
    // 0x6fa12c: stur            x1, [fp, #-0x20]
    // 0x6fa130: StoreField: r1->field_7 = r0
    //     0x6fa130: stur            w0, [x1, #7]
    // 0x6fa134: ldur            x0, [fp, #-8]
    // 0x6fa138: StoreField: r1->field_b = r0
    //     0x6fa138: stur            w0, [x1, #0xb]
    // 0x6fa13c: r0 = Text()
    //     0x6fa13c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fa140: mov             x3, x0
    // 0x6fa144: r0 = "İptal"
    //     0x6fa144: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x6fa148: ldr             x0, [x0, #0x4e0]
    // 0x6fa14c: stur            x3, [fp, #-8]
    // 0x6fa150: StoreField: r3->field_b = r0
    //     0x6fa150: stur            w0, [x3, #0xb]
    // 0x6fa154: ldur            x0, [fp, #-0x20]
    // 0x6fa158: StoreField: r3->field_13 = r0
    //     0x6fa158: stur            w0, [x3, #0x13]
    // 0x6fa15c: ldur            x2, [fp, #-0x10]
    // 0x6fa160: r1 = Function '<anonymous closure>':.
    //     0x6fa160: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c798] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6fa164: ldr             x1, [x1, #0x798]
    // 0x6fa168: r0 = AllocateClosure()
    //     0x6fa168: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa16c: stur            x0, [fp, #-0x20]
    // 0x6fa170: r0 = IconButton()
    //     0x6fa170: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6fa174: mov             x1, x0
    // 0x6fa178: ldur            x0, [fp, #-0x20]
    // 0x6fa17c: stur            x1, [fp, #-0x28]
    // 0x6fa180: StoreField: r1->field_3b = r0
    //     0x6fa180: stur            w0, [x1, #0x3b]
    // 0x6fa184: r0 = false
    //     0x6fa184: add             x0, NULL, #0x30  ; false
    // 0x6fa188: StoreField: r1->field_4f = r0
    //     0x6fa188: stur            w0, [x1, #0x4f]
    // 0x6fa18c: ldur            x2, [fp, #-8]
    // 0x6fa190: StoreField: r1->field_1f = r2
    //     0x6fa190: stur            w2, [x1, #0x1f]
    // 0x6fa194: r2 = Instance__IconButtonVariant
    //     0x6fa194: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6fa198: ldr             x2, [x2, #0x1b8]
    // 0x6fa19c: StoreField: r1->field_6f = r2
    //     0x6fa19c: stur            w2, [x1, #0x6f]
    // 0x6fa1a0: r0 = IconButton()
    //     0x6fa1a0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6fa1a4: mov             x3, x0
    // 0x6fa1a8: r0 = 50.000000
    //     0x6fa1a8: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6fa1ac: ldr             x0, [x0, #0xa48]
    // 0x6fa1b0: stur            x3, [fp, #-8]
    // 0x6fa1b4: StoreField: r3->field_b = r0
    //     0x6fa1b4: stur            w0, [x3, #0xb]
    // 0x6fa1b8: ldur            x2, [fp, #-0x10]
    // 0x6fa1bc: r1 = Function '<anonymous closure>':.
    //     0x6fa1bc: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7a0] AnonymousClosure: (0x6fa278), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::silmeDialog (0x6f9f58)
    //     0x6fa1c0: ldr             x1, [x1, #0x7a0]
    // 0x6fa1c4: r0 = AllocateClosure()
    //     0x6fa1c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa1c8: mov             x1, x0
    // 0x6fa1cc: ldur            x0, [fp, #-8]
    // 0x6fa1d0: StoreField: r0->field_3b = r1
    //     0x6fa1d0: stur            w1, [x0, #0x3b]
    // 0x6fa1d4: r3 = false
    //     0x6fa1d4: add             x3, NULL, #0x30  ; false
    // 0x6fa1d8: StoreField: r0->field_4f = r3
    //     0x6fa1d8: stur            w3, [x0, #0x4f]
    // 0x6fa1dc: r1 = Instance_Text
    //     0x6fa1dc: add             x1, PP, #0x27, lsl #12  ; [pp+0x273e0] Obj!Text@a1b681
    //     0x6fa1e0: ldr             x1, [x1, #0x3e0]
    // 0x6fa1e4: StoreField: r0->field_1f = r1
    //     0x6fa1e4: stur            w1, [x0, #0x1f]
    // 0x6fa1e8: r1 = Instance__IconButtonVariant
    //     0x6fa1e8: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6fa1ec: ldr             x1, [x1, #0x1b8]
    // 0x6fa1f0: StoreField: r0->field_6f = r1
    //     0x6fa1f0: stur            w1, [x0, #0x6f]
    // 0x6fa1f4: r1 = Null
    //     0x6fa1f4: mov             x1, NULL
    // 0x6fa1f8: r2 = 4
    //     0x6fa1f8: mov             x2, #4
    // 0x6fa1fc: r0 = AllocateArray()
    //     0x6fa1fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fa200: mov             x2, x0
    // 0x6fa204: ldur            x0, [fp, #-0x28]
    // 0x6fa208: stur            x2, [fp, #-0x10]
    // 0x6fa20c: StoreField: r2->field_f = r0
    //     0x6fa20c: stur            w0, [x2, #0xf]
    // 0x6fa210: ldur            x0, [fp, #-8]
    // 0x6fa214: StoreField: r2->field_13 = r0
    //     0x6fa214: stur            w0, [x2, #0x13]
    // 0x6fa218: r1 = <Widget>
    //     0x6fa218: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fa21c: r0 = AllocateGrowableArray()
    //     0x6fa21c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fa220: mov             x1, x0
    // 0x6fa224: ldur            x0, [fp, #-0x10]
    // 0x6fa228: stur            x1, [fp, #-8]
    // 0x6fa22c: StoreField: r1->field_f = r0
    //     0x6fa22c: stur            w0, [x1, #0xf]
    // 0x6fa230: r0 = 4
    //     0x6fa230: mov             x0, #4
    // 0x6fa234: StoreField: r1->field_b = r0
    //     0x6fa234: stur            w0, [x1, #0xb]
    // 0x6fa238: r0 = AlertDialog()
    //     0x6fa238: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6fa23c: r1 = Instance_Text
    //     0x6fa23c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20750] Obj!Text@a1c351
    //     0x6fa240: ldr             x1, [x1, #0x750]
    // 0x6fa244: StoreField: r0->field_f = r1
    //     0x6fa244: stur            w1, [x0, #0xf]
    // 0x6fa248: ldur            x1, [fp, #-0x18]
    // 0x6fa24c: StoreField: r0->field_1b = r1
    //     0x6fa24c: stur            w1, [x0, #0x1b]
    // 0x6fa250: ldur            x1, [fp, #-8]
    // 0x6fa254: StoreField: r0->field_27 = r1
    //     0x6fa254: stur            w1, [x0, #0x27]
    // 0x6fa258: r1 = false
    //     0x6fa258: add             x1, NULL, #0x30  ; false
    // 0x6fa25c: StoreField: r0->field_6b = r1
    //     0x6fa25c: stur            w1, [x0, #0x6b]
    // 0x6fa260: LeaveFrame
    //     0x6fa260: mov             SP, fp
    //     0x6fa264: ldp             fp, lr, [SP], #0x10
    // 0x6fa268: ret
    //     0x6fa268: ret             
    // 0x6fa26c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fa26c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fa270: b               #0x6fa024
    // 0x6fa274: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fa274: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6fa278, size: 0x15c
    // 0x6fa278: EnterFrame
    //     0x6fa278: stp             fp, lr, [SP, #-0x10]!
    //     0x6fa27c: mov             fp, SP
    // 0x6fa280: AllocStack(0x40)
    //     0x6fa280: sub             SP, SP, #0x40
    // 0x6fa284: SetupParameters(_ZikirlerimState this /* r1 */)
    //     0x6fa284: stur            NULL, [fp, #-8]
    //     0x6fa288: mov             x0, #0
    //     0x6fa28c: add             x1, fp, w0, sxtw #2
    //     0x6fa290: ldr             x1, [x1, #0x10]
    //     0x6fa294: ldur            w2, [x1, #0x17]
    //     0x6fa298: add             x2, x2, HEAP, lsl #32
    //     0x6fa29c: stur            x2, [fp, #-0x10]
    // 0x6fa2a0: CheckStackOverflow
    //     0x6fa2a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fa2a4: cmp             SP, x16
    //     0x6fa2a8: b.ls            #0x6fa3cc
    // 0x6fa2ac: InitAsync() -> Future<void?>
    //     0x6fa2ac: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fa2b0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fa2b4: ldur            x0, [fp, #-0x10]
    // 0x6fa2b8: LoadField: r3 = r0->field_b
    //     0x6fa2b8: ldur            w3, [x0, #0xb]
    // 0x6fa2bc: DecompressPointer r3
    //     0x6fa2bc: add             x3, x3, HEAP, lsl #32
    // 0x6fa2c0: stur            x3, [fp, #-0x20]
    // 0x6fa2c4: LoadField: r4 = r3->field_f
    //     0x6fa2c4: ldur            w4, [x3, #0xf]
    // 0x6fa2c8: DecompressPointer r4
    //     0x6fa2c8: add             x4, x4, HEAP, lsl #32
    // 0x6fa2cc: mov             x2, x0
    // 0x6fa2d0: stur            x4, [fp, #-0x18]
    // 0x6fa2d4: r1 = Function '<anonymous closure>':.
    //     0x6fa2d4: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7a8] AnonymousClosure: (0x6fb564), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::silmeDialog (0x6f9f58)
    //     0x6fa2d8: ldr             x1, [x1, #0x7a8]
    // 0x6fa2dc: r0 = AllocateClosure()
    //     0x6fa2dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa2e0: ldur            x1, [fp, #-0x18]
    // 0x6fa2e4: mov             x2, x0
    // 0x6fa2e8: r0 = setState()
    //     0x6fa2e8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fa2ec: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fa2ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fa2f0: ldr             x0, [x0, #0x2070]
    //     0x6fa2f4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fa2f8: cmp             w0, w16
    //     0x6fa2fc: b.ne            #0x6fa30c
    //     0x6fa300: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fa304: ldr             x2, [x2, #0x770]
    //     0x6fa308: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fa30c: r1 = Function '<anonymous closure>':.
    //     0x6fa30c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7b0] AnonymousClosure: (0x6fa718), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fa310: ldr             x1, [x1, #0x7b0]
    // 0x6fa314: r2 = Null
    //     0x6fa314: mov             x2, NULL
    // 0x6fa318: stur            x0, [fp, #-0x18]
    // 0x6fa31c: r0 = AllocateClosure()
    //     0x6fa31c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa320: r16 = <String>
    //     0x6fa320: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6fa324: ldur            lr, [fp, #-0x18]
    // 0x6fa328: stp             lr, x16, [SP, #8]
    // 0x6fa32c: str             x0, [SP]
    // 0x6fa330: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fa330: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fa334: r0 = map()
    //     0x6fa334: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fa338: LoadField: r1 = r0->field_7
    //     0x6fa338: ldur            w1, [x0, #7]
    // 0x6fa33c: DecompressPointer r1
    //     0x6fa33c: add             x1, x1, HEAP, lsl #32
    // 0x6fa340: mov             x2, x0
    // 0x6fa344: r0 = _GrowableList.of()
    //     0x6fa344: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fa348: mov             x1, x0
    // 0x6fa34c: r0 = listToString()
    //     0x6fa34c: bl              #0x6fa3d4  ; [dart:collection] ListBase::listToString
    // 0x6fa350: mov             x3, x0
    // 0x6fa354: ldur            x0, [fp, #-0x20]
    // 0x6fa358: stur            x3, [fp, #-0x28]
    // 0x6fa35c: LoadField: r4 = r0->field_f
    //     0x6fa35c: ldur            w4, [x0, #0xf]
    // 0x6fa360: DecompressPointer r4
    //     0x6fa360: add             x4, x4, HEAP, lsl #32
    // 0x6fa364: stur            x4, [fp, #-0x18]
    // 0x6fa368: r1 = Function '<anonymous closure>':.
    //     0x6fa368: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7b8] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fa36c: ldr             x1, [x1, #0x7b8]
    // 0x6fa370: r2 = Null
    //     0x6fa370: mov             x2, NULL
    // 0x6fa374: r0 = AllocateClosure()
    //     0x6fa374: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa378: ldur            x1, [fp, #-0x18]
    // 0x6fa37c: mov             x2, x0
    // 0x6fa380: r0 = setState()
    //     0x6fa380: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fa384: r0 = getInstance()
    //     0x6fa384: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6fa388: mov             x1, x0
    // 0x6fa38c: stur            x1, [fp, #-0x18]
    // 0x6fa390: r0 = Await()
    //     0x6fa390: bl              #0x3dd188  ; AwaitStub
    // 0x6fa394: mov             x1, x0
    // 0x6fa398: ldur            x3, [fp, #-0x28]
    // 0x6fa39c: r2 = "zikirlerim"
    //     0x6fa39c: add             x2, PP, #0x20, lsl #12  ; [pp+0x207a0] "zikirlerim"
    //     0x6fa3a0: ldr             x2, [x2, #0x7a0]
    // 0x6fa3a4: r0 = setString()
    //     0x6fa3a4: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x6fa3a8: ldur            x0, [fp, #-0x10]
    // 0x6fa3ac: LoadField: r1 = r0->field_f
    //     0x6fa3ac: ldur            w1, [x0, #0xf]
    // 0x6fa3b0: DecompressPointer r1
    //     0x6fa3b0: add             x1, x1, HEAP, lsl #32
    // 0x6fa3b4: r16 = <Object?>
    //     0x6fa3b4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fa3b8: stp             x1, x16, [SP]
    // 0x6fa3bc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fa3bc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fa3c0: r0 = pop()
    //     0x6fa3c0: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fa3c4: r0 = Null
    //     0x6fa3c4: mov             x0, NULL
    // 0x6fa3c8: r0 = ReturnAsyncNotFuture()
    //     0x6fa3c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fa3cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fa3cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fa3d0: b               #0x6fa2ac
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fb564, size: 0x88
    // 0x6fb564: EnterFrame
    //     0x6fb564: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb568: mov             fp, SP
    // 0x6fb56c: AllocStack(0x8)
    //     0x6fb56c: sub             SP, SP, #8
    // 0x6fb570: SetupParameters([dynamic _ /* r0 */])
    //     0x6fb570: ldr             x0, [fp, #0x10]
    //     0x6fb574: ldur            w1, [x0, #0x17]
    //     0x6fb578: add             x1, x1, HEAP, lsl #32
    //     0x6fb57c: stur            x1, [fp, #-8]
    // 0x6fb580: CheckStackOverflow
    //     0x6fb580: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb584: cmp             SP, x16
    //     0x6fb588: b.ls            #0x6fb5e4
    // 0x6fb58c: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fb58c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb590: ldr             x0, [x0, #0x2070]
    //     0x6fb594: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fb598: cmp             w0, w16
    //     0x6fb59c: b.ne            #0x6fb5ac
    //     0x6fb5a0: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fb5a4: ldr             x2, [x2, #0x770]
    //     0x6fb5a8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fb5ac: mov             x1, x0
    // 0x6fb5b0: ldur            x0, [fp, #-8]
    // 0x6fb5b4: LoadField: r2 = r0->field_b
    //     0x6fb5b4: ldur            w2, [x0, #0xb]
    // 0x6fb5b8: DecompressPointer r2
    //     0x6fb5b8: add             x2, x2, HEAP, lsl #32
    // 0x6fb5bc: LoadField: r0 = r2->field_13
    //     0x6fb5bc: ldur            w0, [x2, #0x13]
    // 0x6fb5c0: DecompressPointer r0
    //     0x6fb5c0: add             x0, x0, HEAP, lsl #32
    // 0x6fb5c4: r2 = LoadInt32Instr(r0)
    //     0x6fb5c4: sbfx            x2, x0, #1, #0x1f
    //     0x6fb5c8: tbz             w0, #0, #0x6fb5d0
    //     0x6fb5cc: ldur            x2, [x0, #7]
    // 0x6fb5d0: r0 = removeAt()
    //     0x6fb5d0: bl              #0x3e85e4  ; [dart:core] _GrowableList::removeAt
    // 0x6fb5d4: r0 = Null
    //     0x6fb5d4: mov             x0, NULL
    // 0x6fb5d8: LeaveFrame
    //     0x6fb5d8: mov             SP, fp
    //     0x6fb5dc: ldp             fp, lr, [SP], #0x10
    // 0x6fb5e0: ret
    //     0x6fb5e0: ret             
    // 0x6fb5e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb5e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb5e8: b               #0x6fb58c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fb5ec, size: 0x8c
    // 0x6fb5ec: EnterFrame
    //     0x6fb5ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb5f0: mov             fp, SP
    // 0x6fb5f4: AllocStack(0x18)
    //     0x6fb5f4: sub             SP, SP, #0x18
    // 0x6fb5f8: SetupParameters([dynamic _ /* r0 */])
    //     0x6fb5f8: ldr             x0, [fp, #0x10]
    //     0x6fb5fc: ldur            w1, [x0, #0x17]
    //     0x6fb600: add             x1, x1, HEAP, lsl #32
    //     0x6fb604: stur            x1, [fp, #-8]
    // 0x6fb608: CheckStackOverflow
    //     0x6fb608: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb60c: cmp             SP, x16
    //     0x6fb610: b.ls            #0x6fb670
    // 0x6fb614: LoadField: r0 = r1->field_f
    //     0x6fb614: ldur            w0, [x1, #0xf]
    // 0x6fb618: DecompressPointer r0
    //     0x6fb618: add             x0, x0, HEAP, lsl #32
    // 0x6fb61c: r16 = <Object?>
    //     0x6fb61c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fb620: stp             x0, x16, [SP]
    // 0x6fb624: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fb624: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fb628: r0 = pop()
    //     0x6fb628: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fb62c: ldur            x0, [fp, #-8]
    // 0x6fb630: LoadField: r1 = r0->field_b
    //     0x6fb630: ldur            w1, [x0, #0xb]
    // 0x6fb634: DecompressPointer r1
    //     0x6fb634: add             x1, x1, HEAP, lsl #32
    // 0x6fb638: LoadField: r0 = r1->field_f
    //     0x6fb638: ldur            w0, [x1, #0xf]
    // 0x6fb63c: DecompressPointer r0
    //     0x6fb63c: add             x0, x0, HEAP, lsl #32
    // 0x6fb640: LoadField: r2 = r1->field_13
    //     0x6fb640: ldur            w2, [x1, #0x13]
    // 0x6fb644: DecompressPointer r2
    //     0x6fb644: add             x2, x2, HEAP, lsl #32
    // 0x6fb648: r1 = LoadInt32Instr(r2)
    //     0x6fb648: sbfx            x1, x2, #1, #0x1f
    //     0x6fb64c: tbz             w2, #0, #0x6fb654
    //     0x6fb650: ldur            x1, [x2, #7]
    // 0x6fb654: mov             x2, x1
    // 0x6fb658: mov             x1, x0
    // 0x6fb65c: r0 = zikirDuzenle()
    //     0x6fb65c: bl              #0x6fb678  ; [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::zikirDuzenle
    // 0x6fb660: r0 = Null
    //     0x6fb660: mov             x0, NULL
    // 0x6fb664: LeaveFrame
    //     0x6fb664: mov             SP, fp
    //     0x6fb668: ldp             fp, lr, [SP], #0x10
    // 0x6fb66c: ret
    //     0x6fb66c: ret             
    // 0x6fb670: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb670: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb674: b               #0x6fb614
  }
  _ zikirDuzenle(/* No info */) {
    // ** addr: 0x6fb678, size: 0x19c
    // 0x6fb678: EnterFrame
    //     0x6fb678: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb67c: mov             fp, SP
    // 0x6fb680: AllocStack(0x38)
    //     0x6fb680: sub             SP, SP, #0x38
    // 0x6fb684: SetupParameters(_ZikirlerimState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6fb684: stur            x1, [fp, #-8]
    //     0x6fb688: stur            x2, [fp, #-0x10]
    // 0x6fb68c: CheckStackOverflow
    //     0x6fb68c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb690: cmp             SP, x16
    //     0x6fb694: b.ls            #0x6fb800
    // 0x6fb698: r1 = 2
    //     0x6fb698: mov             x1, #2
    // 0x6fb69c: r0 = AllocateContext()
    //     0x6fb69c: bl              #0x927010  ; AllocateContextStub
    // 0x6fb6a0: mov             x3, x0
    // 0x6fb6a4: ldur            x2, [fp, #-8]
    // 0x6fb6a8: stur            x3, [fp, #-0x20]
    // 0x6fb6ac: StoreField: r3->field_f = r2
    //     0x6fb6ac: stur            w2, [x3, #0xf]
    // 0x6fb6b0: ldur            x4, [fp, #-0x10]
    // 0x6fb6b4: r0 = BoxInt64Instr(r4)
    //     0x6fb6b4: sbfiz           x0, x4, #1, #0x1f
    //     0x6fb6b8: cmp             x4, x0, asr #1
    //     0x6fb6bc: b.eq            #0x6fb6c8
    //     0x6fb6c0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fb6c4: stur            x4, [x0, #7]
    // 0x6fb6c8: StoreField: r3->field_13 = r0
    //     0x6fb6c8: stur            w0, [x3, #0x13]
    // 0x6fb6cc: LoadField: r1 = r2->field_13
    //     0x6fb6cc: ldur            w1, [x2, #0x13]
    // 0x6fb6d0: DecompressPointer r1
    //     0x6fb6d0: add             x1, x1, HEAP, lsl #32
    // 0x6fb6d4: stur            x1, [fp, #-0x18]
    // 0x6fb6d8: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fb6d8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb6dc: ldr             x0, [x0, #0x2070]
    //     0x6fb6e0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fb6e4: cmp             w0, w16
    //     0x6fb6e8: b.ne            #0x6fb6f8
    //     0x6fb6ec: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fb6f0: ldr             x2, [x2, #0x770]
    //     0x6fb6f4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fb6f8: mov             x2, x0
    // 0x6fb6fc: ldur            x3, [fp, #-0x20]
    // 0x6fb700: LoadField: r0 = r3->field_13
    //     0x6fb700: ldur            w0, [x3, #0x13]
    // 0x6fb704: DecompressPointer r0
    //     0x6fb704: add             x0, x0, HEAP, lsl #32
    // 0x6fb708: LoadField: r1 = r2->field_b
    //     0x6fb708: ldur            w1, [x2, #0xb]
    // 0x6fb70c: r4 = LoadInt32Instr(r0)
    //     0x6fb70c: sbfx            x4, x0, #1, #0x1f
    //     0x6fb710: tbz             w0, #0, #0x6fb718
    //     0x6fb714: ldur            x4, [x0, #7]
    // 0x6fb718: r0 = LoadInt32Instr(r1)
    //     0x6fb718: sbfx            x0, x1, #1, #0x1f
    // 0x6fb71c: mov             x1, x4
    // 0x6fb720: cmp             x1, x0
    // 0x6fb724: b.hs            #0x6fb808
    // 0x6fb728: LoadField: r0 = r2->field_f
    //     0x6fb728: ldur            w0, [x2, #0xf]
    // 0x6fb72c: DecompressPointer r0
    //     0x6fb72c: add             x0, x0, HEAP, lsl #32
    // 0x6fb730: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x6fb730: add             x16, x0, x4, lsl #2
    //     0x6fb734: ldur            w1, [x16, #0xf]
    // 0x6fb738: DecompressPointer r1
    //     0x6fb738: add             x1, x1, HEAP, lsl #32
    // 0x6fb73c: LoadField: r2 = r1->field_7
    //     0x6fb73c: ldur            w2, [x1, #7]
    // 0x6fb740: DecompressPointer r2
    //     0x6fb740: add             x2, x2, HEAP, lsl #32
    // 0x6fb744: ldur            x1, [fp, #-0x18]
    // 0x6fb748: r0 = text=()
    //     0x6fb748: bl              #0x6d4d7c  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::text=
    // 0x6fb74c: ldur            x3, [fp, #-8]
    // 0x6fb750: ArrayLoad: r2 = r3[0]  ; List_4
    //     0x6fb750: ldur            w2, [x3, #0x17]
    // 0x6fb754: DecompressPointer r2
    //     0x6fb754: add             x2, x2, HEAP, lsl #32
    // 0x6fb758: r4 = LoadStaticField(0x1038)
    //     0x6fb758: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb75c: ldr             x4, [x4, #0x2070]
    // 0x6fb760: ldur            x5, [fp, #-0x20]
    // 0x6fb764: LoadField: r0 = r5->field_13
    //     0x6fb764: ldur            w0, [x5, #0x13]
    // 0x6fb768: DecompressPointer r0
    //     0x6fb768: add             x0, x0, HEAP, lsl #32
    // 0x6fb76c: LoadField: r1 = r4->field_b
    //     0x6fb76c: ldur            w1, [x4, #0xb]
    // 0x6fb770: r6 = LoadInt32Instr(r0)
    //     0x6fb770: sbfx            x6, x0, #1, #0x1f
    //     0x6fb774: tbz             w0, #0, #0x6fb77c
    //     0x6fb778: ldur            x6, [x0, #7]
    // 0x6fb77c: r0 = LoadInt32Instr(r1)
    //     0x6fb77c: sbfx            x0, x1, #1, #0x1f
    // 0x6fb780: mov             x1, x6
    // 0x6fb784: cmp             x1, x0
    // 0x6fb788: b.hs            #0x6fb80c
    // 0x6fb78c: LoadField: r0 = r4->field_f
    //     0x6fb78c: ldur            w0, [x4, #0xf]
    // 0x6fb790: DecompressPointer r0
    //     0x6fb790: add             x0, x0, HEAP, lsl #32
    // 0x6fb794: ArrayLoad: r1 = r0[r6]  ; Unknown_4
    //     0x6fb794: add             x16, x0, x6, lsl #2
    //     0x6fb798: ldur            w1, [x16, #0xf]
    // 0x6fb79c: DecompressPointer r1
    //     0x6fb79c: add             x1, x1, HEAP, lsl #32
    // 0x6fb7a0: LoadField: r0 = r1->field_b
    //     0x6fb7a0: ldur            w0, [x1, #0xb]
    // 0x6fb7a4: DecompressPointer r0
    //     0x6fb7a4: add             x0, x0, HEAP, lsl #32
    // 0x6fb7a8: mov             x1, x2
    // 0x6fb7ac: mov             x2, x0
    // 0x6fb7b0: r0 = text=()
    //     0x6fb7b0: bl              #0x6d4d7c  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::text=
    // 0x6fb7b4: ldur            x0, [fp, #-8]
    // 0x6fb7b8: LoadField: r3 = r0->field_f
    //     0x6fb7b8: ldur            w3, [x0, #0xf]
    // 0x6fb7bc: DecompressPointer r3
    //     0x6fb7bc: add             x3, x3, HEAP, lsl #32
    // 0x6fb7c0: stur            x3, [fp, #-0x18]
    // 0x6fb7c4: cmp             w3, NULL
    // 0x6fb7c8: b.eq            #0x6fb810
    // 0x6fb7cc: ldur            x2, [fp, #-0x20]
    // 0x6fb7d0: r1 = Function '<anonymous closure>':.
    //     0x6fb7d0: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7c0] AnonymousClosure: (0x6fb814), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::zikirDuzenle (0x6fb678)
    //     0x6fb7d4: ldr             x1, [x1, #0x7c0]
    // 0x6fb7d8: r0 = AllocateClosure()
    //     0x6fb7d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb7dc: stp             x0, NULL, [SP, #8]
    // 0x6fb7e0: ldur            x16, [fp, #-0x18]
    // 0x6fb7e4: str             x16, [SP]
    // 0x6fb7e8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fb7e8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fb7ec: r0 = showDialog()
    //     0x6fb7ec: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6fb7f0: r0 = Null
    //     0x6fb7f0: mov             x0, NULL
    // 0x6fb7f4: LeaveFrame
    //     0x6fb7f4: mov             SP, fp
    //     0x6fb7f8: ldp             fp, lr, [SP], #0x10
    // 0x6fb7fc: ret
    //     0x6fb7fc: ret             
    // 0x6fb800: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb800: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb804: b               #0x6fb698
    // 0x6fb808: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fb808: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6fb80c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fb80c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6fb810: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fb810: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6fb814, size: 0x624
    // 0x6fb814: EnterFrame
    //     0x6fb814: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb818: mov             fp, SP
    // 0x6fb81c: AllocStack(0x38)
    //     0x6fb81c: sub             SP, SP, #0x38
    // 0x6fb820: SetupParameters([dynamic _ /* r0 */])
    //     0x6fb820: ldr             x0, [fp, #0x18]
    //     0x6fb824: ldur            w1, [x0, #0x17]
    //     0x6fb828: add             x1, x1, HEAP, lsl #32
    //     0x6fb82c: stur            x1, [fp, #-8]
    // 0x6fb830: CheckStackOverflow
    //     0x6fb830: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb834: cmp             SP, x16
    //     0x6fb838: b.ls            #0x6fbe2c
    // 0x6fb83c: r1 = 1
    //     0x6fb83c: mov             x1, #1
    // 0x6fb840: r0 = AllocateContext()
    //     0x6fb840: bl              #0x927010  ; AllocateContextStub
    // 0x6fb844: mov             x1, x0
    // 0x6fb848: ldur            x0, [fp, #-8]
    // 0x6fb84c: stur            x1, [fp, #-0x10]
    // 0x6fb850: StoreField: r1->field_b = r0
    //     0x6fb850: stur            w0, [x1, #0xb]
    // 0x6fb854: ldr             x2, [fp, #0x10]
    // 0x6fb858: StoreField: r1->field_f = r2
    //     0x6fb858: stur            w2, [x1, #0xf]
    // 0x6fb85c: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fb85c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb860: ldr             x0, [x0, #0x2070]
    //     0x6fb864: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fb868: cmp             w0, w16
    //     0x6fb86c: b.ne            #0x6fb87c
    //     0x6fb870: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fb874: ldr             x2, [x2, #0x770]
    //     0x6fb878: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fb87c: mov             x3, x0
    // 0x6fb880: ldur            x2, [fp, #-8]
    // 0x6fb884: LoadField: r0 = r2->field_13
    //     0x6fb884: ldur            w0, [x2, #0x13]
    // 0x6fb888: DecompressPointer r0
    //     0x6fb888: add             x0, x0, HEAP, lsl #32
    // 0x6fb88c: LoadField: r1 = r3->field_b
    //     0x6fb88c: ldur            w1, [x3, #0xb]
    // 0x6fb890: r4 = LoadInt32Instr(r0)
    //     0x6fb890: sbfx            x4, x0, #1, #0x1f
    //     0x6fb894: tbz             w0, #0, #0x6fb89c
    //     0x6fb898: ldur            x4, [x0, #7]
    // 0x6fb89c: r0 = LoadInt32Instr(r1)
    //     0x6fb89c: sbfx            x0, x1, #1, #0x1f
    // 0x6fb8a0: mov             x1, x4
    // 0x6fb8a4: cmp             x1, x0
    // 0x6fb8a8: b.hs            #0x6fbe34
    // 0x6fb8ac: LoadField: r0 = r3->field_f
    //     0x6fb8ac: ldur            w0, [x3, #0xf]
    // 0x6fb8b0: DecompressPointer r0
    //     0x6fb8b0: add             x0, x0, HEAP, lsl #32
    // 0x6fb8b4: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x6fb8b4: add             x16, x0, x4, lsl #2
    //     0x6fb8b8: ldur            w1, [x16, #0xf]
    // 0x6fb8bc: DecompressPointer r1
    //     0x6fb8bc: add             x1, x1, HEAP, lsl #32
    // 0x6fb8c0: LoadField: r0 = r1->field_7
    //     0x6fb8c0: ldur            w0, [x1, #7]
    // 0x6fb8c4: DecompressPointer r0
    //     0x6fb8c4: add             x0, x0, HEAP, lsl #32
    // 0x6fb8c8: stur            x0, [fp, #-0x18]
    // 0x6fb8cc: r0 = Text()
    //     0x6fb8cc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fb8d0: mov             x1, x0
    // 0x6fb8d4: ldur            x0, [fp, #-0x18]
    // 0x6fb8d8: stur            x1, [fp, #-0x20]
    // 0x6fb8dc: StoreField: r1->field_b = r0
    //     0x6fb8dc: stur            w0, [x1, #0xb]
    // 0x6fb8e0: ldur            x0, [fp, #-8]
    // 0x6fb8e4: LoadField: r2 = r0->field_f
    //     0x6fb8e4: ldur            w2, [x0, #0xf]
    // 0x6fb8e8: DecompressPointer r2
    //     0x6fb8e8: add             x2, x2, HEAP, lsl #32
    // 0x6fb8ec: LoadField: r3 = r2->field_13
    //     0x6fb8ec: ldur            w3, [x2, #0x13]
    // 0x6fb8f0: DecompressPointer r3
    //     0x6fb8f0: add             x3, x3, HEAP, lsl #32
    // 0x6fb8f4: stur            x3, [fp, #-0x18]
    // 0x6fb8f8: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x6fb8f8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb8fc: ldr             x0, [x0, #0x2078]
    //     0x6fb900: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fb904: cmp             w0, w16
    //     0x6fb908: b.ne            #0x6fb918
    //     0x6fb90c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x6fb910: ldr             x2, [x2, #0x450]
    //     0x6fb914: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fb918: stur            x0, [fp, #-0x28]
    // 0x6fb91c: r0 = BorderSide()
    //     0x6fb91c: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6fb920: mov             x1, x0
    // 0x6fb924: ldur            x0, [fp, #-0x28]
    // 0x6fb928: stur            x1, [fp, #-0x30]
    // 0x6fb92c: StoreField: r1->field_7 = r0
    //     0x6fb92c: stur            w0, [x1, #7]
    // 0x6fb930: d0 = 1.000000
    //     0x6fb930: fmov            d0, #1.00000000
    // 0x6fb934: StoreField: r1->field_b = d0
    //     0x6fb934: stur            d0, [x1, #0xb]
    // 0x6fb938: r2 = Instance_BorderStyle
    //     0x6fb938: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6fb93c: ldr             x2, [x2, #0x738]
    // 0x6fb940: StoreField: r1->field_13 = r2
    //     0x6fb940: stur            w2, [x1, #0x13]
    // 0x6fb944: d1 = -1.000000
    //     0x6fb944: fmov            d1, #-1.00000000
    // 0x6fb948: ArrayStore: r1[0] = d1  ; List_8
    //     0x6fb948: stur            d1, [x1, #0x17]
    // 0x6fb94c: r0 = UnderlineInputBorder()
    //     0x6fb94c: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x6fb950: mov             x1, x0
    // 0x6fb954: r0 = Instance_BorderRadius
    //     0x6fb954: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x6fb958: ldr             x0, [x0, #0x560]
    // 0x6fb95c: stur            x1, [fp, #-0x38]
    // 0x6fb960: StoreField: r1->field_b = r0
    //     0x6fb960: stur            w0, [x1, #0xb]
    // 0x6fb964: ldur            x2, [fp, #-0x30]
    // 0x6fb968: StoreField: r1->field_7 = r2
    //     0x6fb968: stur            w2, [x1, #7]
    // 0x6fb96c: r0 = InputDecoration()
    //     0x6fb96c: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6fb970: mov             x1, x0
    // 0x6fb974: r0 = "Zikir Adı"
    //     0x6fb974: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c7c8] "Zikir Adı"
    //     0x6fb978: ldr             x0, [x0, #0x7c8]
    // 0x6fb97c: stur            x1, [fp, #-0x30]
    // 0x6fb980: StoreField: r1->field_2f = r0
    //     0x6fb980: stur            w0, [x1, #0x2f]
    // 0x6fb984: r0 = true
    //     0x6fb984: add             x0, NULL, #0x20  ; true
    // 0x6fb988: StoreField: r1->field_47 = r0
    //     0x6fb988: stur            w0, [x1, #0x47]
    // 0x6fb98c: StoreField: r1->field_4b = r0
    //     0x6fb98c: stur            w0, [x1, #0x4b]
    // 0x6fb990: ldur            x2, [fp, #-0x38]
    // 0x6fb994: StoreField: r1->field_c3 = r2
    //     0x6fb994: stur            w2, [x1, #0xc3]
    // 0x6fb998: StoreField: r1->field_d7 = r0
    //     0x6fb998: stur            w0, [x1, #0xd7]
    // 0x6fb99c: r0 = TextField()
    //     0x6fb99c: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6fb9a0: mov             x1, x0
    // 0x6fb9a4: r0 = EditableText
    //     0x6fb9a4: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6fb9a8: stur            x1, [fp, #-0x38]
    // 0x6fb9ac: StoreField: r1->field_f = r0
    //     0x6fb9ac: stur            w0, [x1, #0xf]
    // 0x6fb9b0: ldur            x2, [fp, #-0x18]
    // 0x6fb9b4: StoreField: r1->field_13 = r2
    //     0x6fb9b4: stur            w2, [x1, #0x13]
    // 0x6fb9b8: ldur            x2, [fp, #-0x30]
    // 0x6fb9bc: StoreField: r1->field_1b = r2
    //     0x6fb9bc: stur            w2, [x1, #0x1b]
    // 0x6fb9c0: r2 = Instance_TextCapitalization
    //     0x6fb9c0: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6fb9c4: ldr             x2, [x2, #0x4f0]
    // 0x6fb9c8: StoreField: r1->field_27 = r2
    //     0x6fb9c8: stur            w2, [x1, #0x27]
    // 0x6fb9cc: r3 = Instance_TextAlign
    //     0x6fb9cc: ldr             x3, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6fb9d0: StoreField: r1->field_33 = r3
    //     0x6fb9d0: stur            w3, [x1, #0x33]
    // 0x6fb9d4: r4 = false
    //     0x6fb9d4: add             x4, NULL, #0x30  ; false
    // 0x6fb9d8: StoreField: r1->field_6b = r4
    //     0x6fb9d8: stur            w4, [x1, #0x6b]
    // 0x6fb9dc: StoreField: r1->field_3f = r4
    //     0x6fb9dc: stur            w4, [x1, #0x3f]
    // 0x6fb9e0: r5 = "•"
    //     0x6fb9e0: add             x5, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6fb9e4: ldr             x5, [x5, #0x4f8]
    // 0x6fb9e8: StoreField: r1->field_47 = r5
    //     0x6fb9e8: stur            w5, [x1, #0x47]
    // 0x6fb9ec: StoreField: r1->field_4b = r4
    //     0x6fb9ec: stur            w4, [x1, #0x4b]
    // 0x6fb9f0: r6 = true
    //     0x6fb9f0: add             x6, NULL, #0x20  ; true
    // 0x6fb9f4: StoreField: r1->field_5b = r6
    //     0x6fb9f4: stur            w6, [x1, #0x5b]
    // 0x6fb9f8: r7 = 2
    //     0x6fb9f8: mov             x7, #2
    // 0x6fb9fc: StoreField: r1->field_5f = r7
    //     0x6fb9fc: stur            w7, [x1, #0x5f]
    // 0x6fba00: StoreField: r1->field_67 = r4
    //     0x6fba00: stur            w4, [x1, #0x67]
    // 0x6fba04: d0 = 2.000000
    //     0x6fba04: fmov            d0, #2.00000000
    // 0x6fba08: StoreField: r1->field_9b = d0
    //     0x6fba08: stur            d0, [x1, #0x9b]
    // 0x6fba0c: r8 = Instance_EdgeInsets
    //     0x6fba0c: ldr             x8, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6fba10: StoreField: r1->field_c3 = r8
    //     0x6fba10: stur            w8, [x1, #0xc3]
    // 0x6fba14: r9 = Instance_DragStartBehavior
    //     0x6fba14: ldr             x9, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6fba18: StoreField: r1->field_d3 = r9
    //     0x6fba18: stur            w9, [x1, #0xd3]
    // 0x6fba1c: StoreField: r1->field_db = r4
    //     0x6fba1c: stur            w4, [x1, #0xdb]
    // 0x6fba20: r10 = const []
    //     0x6fba20: ldr             x10, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6fba24: StoreField: r1->field_f7 = r10
    //     0x6fba24: stur            w10, [x1, #0xf7]
    // 0x6fba28: r11 = Instance_Clip
    //     0x6fba28: add             x11, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6fba2c: ldr             x11, [x11, #0x2d8]
    // 0x6fba30: StoreField: r1->field_fb = r11
    //     0x6fba30: stur            w11, [x1, #0xfb]
    // 0x6fba34: r17 = 259
    //     0x6fba34: mov             x17, #0x103
    // 0x6fba38: str             w6, [x1, x17]
    // 0x6fba3c: r17 = 263
    //     0x6fba3c: mov             x17, #0x107
    // 0x6fba40: str             w6, [x1, x17]
    // 0x6fba44: r17 = 267
    //     0x6fba44: mov             x17, #0x10b
    // 0x6fba48: str             w6, [x1, x17]
    // 0x6fba4c: r12 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6fba4c: add             x12, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6fba50: ldr             x12, [x12, #0x9f8]
    // 0x6fba54: r17 = 275
    //     0x6fba54: mov             x17, #0x113
    // 0x6fba58: str             w12, [x1, x17]
    // 0x6fba5c: r17 = 279
    //     0x6fba5c: mov             x17, #0x117
    // 0x6fba60: str             w6, [x1, x17]
    // 0x6fba64: r13 = Instance_SmartDashesType
    //     0x6fba64: ldr             x13, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6fba68: StoreField: r1->field_53 = r13
    //     0x6fba68: stur            w13, [x1, #0x53]
    // 0x6fba6c: r14 = Instance_SmartQuotesType
    //     0x6fba6c: add             x14, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6fba70: ldr             x14, [x14, #0x520]
    // 0x6fba74: StoreField: r1->field_57 = r14
    //     0x6fba74: stur            w14, [x1, #0x57]
    // 0x6fba78: r19 = Instance_TextInputType
    //     0x6fba78: add             x19, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6fba7c: ldr             x19, [x19, #0x528]
    // 0x6fba80: StoreField: r1->field_1f = r19
    //     0x6fba80: stur            w19, [x1, #0x1f]
    // 0x6fba84: StoreField: r1->field_c7 = r6
    //     0x6fba84: stur            w6, [x1, #0xc7]
    // 0x6fba88: ldur            x19, [fp, #-8]
    // 0x6fba8c: LoadField: r20 = r19->field_f
    //     0x6fba8c: ldur            w20, [x19, #0xf]
    // 0x6fba90: DecompressPointer r20
    //     0x6fba90: add             x20, x20, HEAP, lsl #32
    // 0x6fba94: ArrayLoad: r19 = r20[0]  ; List_4
    //     0x6fba94: ldur            w19, [x20, #0x17]
    // 0x6fba98: DecompressPointer r19
    //     0x6fba98: add             x19, x19, HEAP, lsl #32
    // 0x6fba9c: stur            x19, [fp, #-8]
    // 0x6fbaa0: r0 = BorderSide()
    //     0x6fbaa0: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6fbaa4: mov             x1, x0
    // 0x6fbaa8: ldur            x0, [fp, #-0x28]
    // 0x6fbaac: stur            x1, [fp, #-0x18]
    // 0x6fbab0: StoreField: r1->field_7 = r0
    //     0x6fbab0: stur            w0, [x1, #7]
    // 0x6fbab4: d0 = 1.000000
    //     0x6fbab4: fmov            d0, #1.00000000
    // 0x6fbab8: StoreField: r1->field_b = d0
    //     0x6fbab8: stur            d0, [x1, #0xb]
    // 0x6fbabc: r2 = Instance_BorderStyle
    //     0x6fbabc: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6fbac0: ldr             x2, [x2, #0x738]
    // 0x6fbac4: StoreField: r1->field_13 = r2
    //     0x6fbac4: stur            w2, [x1, #0x13]
    // 0x6fbac8: d0 = -1.000000
    //     0x6fbac8: fmov            d0, #-1.00000000
    // 0x6fbacc: ArrayStore: r1[0] = d0  ; List_8
    //     0x6fbacc: stur            d0, [x1, #0x17]
    // 0x6fbad0: r0 = UnderlineInputBorder()
    //     0x6fbad0: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x6fbad4: mov             x1, x0
    // 0x6fbad8: r0 = Instance_BorderRadius
    //     0x6fbad8: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x6fbadc: ldr             x0, [x0, #0x560]
    // 0x6fbae0: stur            x1, [fp, #-0x30]
    // 0x6fbae4: StoreField: r1->field_b = r0
    //     0x6fbae4: stur            w0, [x1, #0xb]
    // 0x6fbae8: ldur            x0, [fp, #-0x18]
    // 0x6fbaec: StoreField: r1->field_7 = r0
    //     0x6fbaec: stur            w0, [x1, #7]
    // 0x6fbaf0: r0 = InputDecoration()
    //     0x6fbaf0: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6fbaf4: mov             x1, x0
    // 0x6fbaf8: r0 = "Zikir Sayısı"
    //     0x6fbaf8: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c7d0] "Zikir Sayısı"
    //     0x6fbafc: ldr             x0, [x0, #0x7d0]
    // 0x6fbb00: stur            x1, [fp, #-0x18]
    // 0x6fbb04: StoreField: r1->field_2f = r0
    //     0x6fbb04: stur            w0, [x1, #0x2f]
    // 0x6fbb08: r0 = true
    //     0x6fbb08: add             x0, NULL, #0x20  ; true
    // 0x6fbb0c: StoreField: r1->field_47 = r0
    //     0x6fbb0c: stur            w0, [x1, #0x47]
    // 0x6fbb10: StoreField: r1->field_4b = r0
    //     0x6fbb10: stur            w0, [x1, #0x4b]
    // 0x6fbb14: ldur            x2, [fp, #-0x30]
    // 0x6fbb18: StoreField: r1->field_c3 = r2
    //     0x6fbb18: stur            w2, [x1, #0xc3]
    // 0x6fbb1c: StoreField: r1->field_d7 = r0
    //     0x6fbb1c: stur            w0, [x1, #0xd7]
    // 0x6fbb20: r0 = TextField()
    //     0x6fbb20: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6fbb24: mov             x3, x0
    // 0x6fbb28: r0 = EditableText
    //     0x6fbb28: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6fbb2c: stur            x3, [fp, #-0x30]
    // 0x6fbb30: StoreField: r3->field_f = r0
    //     0x6fbb30: stur            w0, [x3, #0xf]
    // 0x6fbb34: ldur            x0, [fp, #-8]
    // 0x6fbb38: StoreField: r3->field_13 = r0
    //     0x6fbb38: stur            w0, [x3, #0x13]
    // 0x6fbb3c: ldur            x0, [fp, #-0x18]
    // 0x6fbb40: StoreField: r3->field_1b = r0
    //     0x6fbb40: stur            w0, [x3, #0x1b]
    // 0x6fbb44: r0 = Instance_TextCapitalization
    //     0x6fbb44: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6fbb48: ldr             x0, [x0, #0x4f0]
    // 0x6fbb4c: StoreField: r3->field_27 = r0
    //     0x6fbb4c: stur            w0, [x3, #0x27]
    // 0x6fbb50: r0 = Instance_TextAlign
    //     0x6fbb50: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6fbb54: StoreField: r3->field_33 = r0
    //     0x6fbb54: stur            w0, [x3, #0x33]
    // 0x6fbb58: r0 = false
    //     0x6fbb58: add             x0, NULL, #0x30  ; false
    // 0x6fbb5c: StoreField: r3->field_6b = r0
    //     0x6fbb5c: stur            w0, [x3, #0x6b]
    // 0x6fbb60: StoreField: r3->field_3f = r0
    //     0x6fbb60: stur            w0, [x3, #0x3f]
    // 0x6fbb64: r1 = "•"
    //     0x6fbb64: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6fbb68: ldr             x1, [x1, #0x4f8]
    // 0x6fbb6c: StoreField: r3->field_47 = r1
    //     0x6fbb6c: stur            w1, [x3, #0x47]
    // 0x6fbb70: StoreField: r3->field_4b = r0
    //     0x6fbb70: stur            w0, [x3, #0x4b]
    // 0x6fbb74: r4 = true
    //     0x6fbb74: add             x4, NULL, #0x20  ; true
    // 0x6fbb78: StoreField: r3->field_5b = r4
    //     0x6fbb78: stur            w4, [x3, #0x5b]
    // 0x6fbb7c: r1 = 2
    //     0x6fbb7c: mov             x1, #2
    // 0x6fbb80: StoreField: r3->field_5f = r1
    //     0x6fbb80: stur            w1, [x3, #0x5f]
    // 0x6fbb84: StoreField: r3->field_67 = r0
    //     0x6fbb84: stur            w0, [x3, #0x67]
    // 0x6fbb88: d0 = 2.000000
    //     0x6fbb88: fmov            d0, #2.00000000
    // 0x6fbb8c: StoreField: r3->field_9b = d0
    //     0x6fbb8c: stur            d0, [x3, #0x9b]
    // 0x6fbb90: r1 = Instance_EdgeInsets
    //     0x6fbb90: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6fbb94: StoreField: r3->field_c3 = r1
    //     0x6fbb94: stur            w1, [x3, #0xc3]
    // 0x6fbb98: r1 = Instance_DragStartBehavior
    //     0x6fbb98: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6fbb9c: StoreField: r3->field_d3 = r1
    //     0x6fbb9c: stur            w1, [x3, #0xd3]
    // 0x6fbba0: StoreField: r3->field_db = r0
    //     0x6fbba0: stur            w0, [x3, #0xdb]
    // 0x6fbba4: r1 = const []
    //     0x6fbba4: ldr             x1, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6fbba8: StoreField: r3->field_f7 = r1
    //     0x6fbba8: stur            w1, [x3, #0xf7]
    // 0x6fbbac: r1 = Instance_Clip
    //     0x6fbbac: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6fbbb0: ldr             x1, [x1, #0x2d8]
    // 0x6fbbb4: StoreField: r3->field_fb = r1
    //     0x6fbbb4: stur            w1, [x3, #0xfb]
    // 0x6fbbb8: r17 = 259
    //     0x6fbbb8: mov             x17, #0x103
    // 0x6fbbbc: str             w4, [x3, x17]
    // 0x6fbbc0: r17 = 263
    //     0x6fbbc0: mov             x17, #0x107
    // 0x6fbbc4: str             w4, [x3, x17]
    // 0x6fbbc8: r17 = 267
    //     0x6fbbc8: mov             x17, #0x10b
    // 0x6fbbcc: str             w4, [x3, x17]
    // 0x6fbbd0: r1 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6fbbd0: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6fbbd4: ldr             x1, [x1, #0x9f8]
    // 0x6fbbd8: r17 = 275
    //     0x6fbbd8: mov             x17, #0x113
    // 0x6fbbdc: str             w1, [x3, x17]
    // 0x6fbbe0: r17 = 279
    //     0x6fbbe0: mov             x17, #0x117
    // 0x6fbbe4: str             w4, [x3, x17]
    // 0x6fbbe8: r1 = Instance_SmartDashesType
    //     0x6fbbe8: ldr             x1, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6fbbec: StoreField: r3->field_53 = r1
    //     0x6fbbec: stur            w1, [x3, #0x53]
    // 0x6fbbf0: r1 = Instance_SmartQuotesType
    //     0x6fbbf0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6fbbf4: ldr             x1, [x1, #0x520]
    // 0x6fbbf8: StoreField: r3->field_57 = r1
    //     0x6fbbf8: stur            w1, [x3, #0x57]
    // 0x6fbbfc: r1 = Instance_TextInputType
    //     0x6fbbfc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6fbc00: ldr             x1, [x1, #0x948]
    // 0x6fbc04: StoreField: r3->field_1f = r1
    //     0x6fbc04: stur            w1, [x3, #0x1f]
    // 0x6fbc08: StoreField: r3->field_c7 = r4
    //     0x6fbc08: stur            w4, [x3, #0xc7]
    // 0x6fbc0c: r1 = Null
    //     0x6fbc0c: mov             x1, NULL
    // 0x6fbc10: r2 = 4
    //     0x6fbc10: mov             x2, #4
    // 0x6fbc14: r0 = AllocateArray()
    //     0x6fbc14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fbc18: mov             x2, x0
    // 0x6fbc1c: ldur            x0, [fp, #-0x38]
    // 0x6fbc20: stur            x2, [fp, #-8]
    // 0x6fbc24: StoreField: r2->field_f = r0
    //     0x6fbc24: stur            w0, [x2, #0xf]
    // 0x6fbc28: ldur            x0, [fp, #-0x30]
    // 0x6fbc2c: StoreField: r2->field_13 = r0
    //     0x6fbc2c: stur            w0, [x2, #0x13]
    // 0x6fbc30: r1 = <Widget>
    //     0x6fbc30: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fbc34: r0 = AllocateGrowableArray()
    //     0x6fbc34: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fbc38: mov             x1, x0
    // 0x6fbc3c: ldur            x0, [fp, #-8]
    // 0x6fbc40: stur            x1, [fp, #-0x18]
    // 0x6fbc44: StoreField: r1->field_f = r0
    //     0x6fbc44: stur            w0, [x1, #0xf]
    // 0x6fbc48: r2 = 4
    //     0x6fbc48: mov             x2, #4
    // 0x6fbc4c: StoreField: r1->field_b = r2
    //     0x6fbc4c: stur            w2, [x1, #0xb]
    // 0x6fbc50: r0 = Column()
    //     0x6fbc50: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6fbc54: mov             x1, x0
    // 0x6fbc58: r0 = Instance_Axis
    //     0x6fbc58: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6fbc5c: stur            x1, [fp, #-8]
    // 0x6fbc60: StoreField: r1->field_f = r0
    //     0x6fbc60: stur            w0, [x1, #0xf]
    // 0x6fbc64: r0 = Instance_MainAxisAlignment
    //     0x6fbc64: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6fbc68: ldr             x0, [x0, #0x230]
    // 0x6fbc6c: StoreField: r1->field_13 = r0
    //     0x6fbc6c: stur            w0, [x1, #0x13]
    // 0x6fbc70: r0 = Instance_MainAxisSize
    //     0x6fbc70: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6fbc74: ldr             x0, [x0, #0xb60]
    // 0x6fbc78: ArrayStore: r1[0] = r0  ; List_4
    //     0x6fbc78: stur            w0, [x1, #0x17]
    // 0x6fbc7c: r0 = Instance_CrossAxisAlignment
    //     0x6fbc7c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6fbc80: ldr             x0, [x0, #0x338]
    // 0x6fbc84: StoreField: r1->field_1b = r0
    //     0x6fbc84: stur            w0, [x1, #0x1b]
    // 0x6fbc88: r0 = Instance_VerticalDirection
    //     0x6fbc88: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6fbc8c: ldr             x0, [x0, #0x340]
    // 0x6fbc90: StoreField: r1->field_23 = r0
    //     0x6fbc90: stur            w0, [x1, #0x23]
    // 0x6fbc94: r0 = Instance_Clip
    //     0x6fbc94: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6fbc98: ldr             x0, [x0, #0x348]
    // 0x6fbc9c: StoreField: r1->field_2b = r0
    //     0x6fbc9c: stur            w0, [x1, #0x2b]
    // 0x6fbca0: StoreField: r1->field_2f = rZR
    //     0x6fbca0: stur            xzr, [x1, #0x2f]
    // 0x6fbca4: ldur            x0, [fp, #-0x18]
    // 0x6fbca8: StoreField: r1->field_b = r0
    //     0x6fbca8: stur            w0, [x1, #0xb]
    // 0x6fbcac: r0 = TextStyle()
    //     0x6fbcac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6fbcb0: mov             x1, x0
    // 0x6fbcb4: r0 = true
    //     0x6fbcb4: add             x0, NULL, #0x20  ; true
    // 0x6fbcb8: stur            x1, [fp, #-0x18]
    // 0x6fbcbc: StoreField: r1->field_7 = r0
    //     0x6fbcbc: stur            w0, [x1, #7]
    // 0x6fbcc0: ldur            x2, [fp, #-0x28]
    // 0x6fbcc4: StoreField: r1->field_b = r2
    //     0x6fbcc4: stur            w2, [x1, #0xb]
    // 0x6fbcc8: r0 = Text()
    //     0x6fbcc8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fbccc: mov             x3, x0
    // 0x6fbcd0: r0 = "İptal"
    //     0x6fbcd0: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x6fbcd4: ldr             x0, [x0, #0x4e0]
    // 0x6fbcd8: stur            x3, [fp, #-0x30]
    // 0x6fbcdc: StoreField: r3->field_b = r0
    //     0x6fbcdc: stur            w0, [x3, #0xb]
    // 0x6fbce0: ldur            x0, [fp, #-0x18]
    // 0x6fbce4: StoreField: r3->field_13 = r0
    //     0x6fbce4: stur            w0, [x3, #0x13]
    // 0x6fbce8: ldur            x2, [fp, #-0x10]
    // 0x6fbcec: r1 = Function '<anonymous closure>':.
    //     0x6fbcec: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7d8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6fbcf0: ldr             x1, [x1, #0x7d8]
    // 0x6fbcf4: r0 = AllocateClosure()
    //     0x6fbcf4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fbcf8: stur            x0, [fp, #-0x18]
    // 0x6fbcfc: r0 = IconButton()
    //     0x6fbcfc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6fbd00: mov             x1, x0
    // 0x6fbd04: ldur            x0, [fp, #-0x18]
    // 0x6fbd08: stur            x1, [fp, #-0x38]
    // 0x6fbd0c: StoreField: r1->field_3b = r0
    //     0x6fbd0c: stur            w0, [x1, #0x3b]
    // 0x6fbd10: r0 = false
    //     0x6fbd10: add             x0, NULL, #0x30  ; false
    // 0x6fbd14: StoreField: r1->field_4f = r0
    //     0x6fbd14: stur            w0, [x1, #0x4f]
    // 0x6fbd18: ldur            x2, [fp, #-0x30]
    // 0x6fbd1c: StoreField: r1->field_1f = r2
    //     0x6fbd1c: stur            w2, [x1, #0x1f]
    // 0x6fbd20: r2 = Instance__IconButtonVariant
    //     0x6fbd20: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6fbd24: ldr             x2, [x2, #0x1b8]
    // 0x6fbd28: StoreField: r1->field_6f = r2
    //     0x6fbd28: stur            w2, [x1, #0x6f]
    // 0x6fbd2c: r0 = TextStyle()
    //     0x6fbd2c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6fbd30: mov             x1, x0
    // 0x6fbd34: r0 = true
    //     0x6fbd34: add             x0, NULL, #0x20  ; true
    // 0x6fbd38: stur            x1, [fp, #-0x18]
    // 0x6fbd3c: StoreField: r1->field_7 = r0
    //     0x6fbd3c: stur            w0, [x1, #7]
    // 0x6fbd40: ldur            x0, [fp, #-0x28]
    // 0x6fbd44: StoreField: r1->field_b = r0
    //     0x6fbd44: stur            w0, [x1, #0xb]
    // 0x6fbd48: r0 = Text()
    //     0x6fbd48: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fbd4c: mov             x1, x0
    // 0x6fbd50: r0 = "Kaydet"
    //     0x6fbd50: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x6fbd54: ldr             x0, [x0, #0xb50]
    // 0x6fbd58: stur            x1, [fp, #-0x28]
    // 0x6fbd5c: StoreField: r1->field_b = r0
    //     0x6fbd5c: stur            w0, [x1, #0xb]
    // 0x6fbd60: ldur            x0, [fp, #-0x18]
    // 0x6fbd64: StoreField: r1->field_13 = r0
    //     0x6fbd64: stur            w0, [x1, #0x13]
    // 0x6fbd68: r0 = IconButton()
    //     0x6fbd68: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6fbd6c: mov             x3, x0
    // 0x6fbd70: r0 = 50.000000
    //     0x6fbd70: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6fbd74: ldr             x0, [x0, #0xa48]
    // 0x6fbd78: stur            x3, [fp, #-0x18]
    // 0x6fbd7c: StoreField: r3->field_b = r0
    //     0x6fbd7c: stur            w0, [x3, #0xb]
    // 0x6fbd80: ldur            x2, [fp, #-0x10]
    // 0x6fbd84: r1 = Function '<anonymous closure>':.
    //     0x6fbd84: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7e0] AnonymousClosure: (0x6fbe38), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::zikirDuzenle (0x6fb678)
    //     0x6fbd88: ldr             x1, [x1, #0x7e0]
    // 0x6fbd8c: r0 = AllocateClosure()
    //     0x6fbd8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fbd90: mov             x1, x0
    // 0x6fbd94: ldur            x0, [fp, #-0x18]
    // 0x6fbd98: StoreField: r0->field_3b = r1
    //     0x6fbd98: stur            w1, [x0, #0x3b]
    // 0x6fbd9c: r3 = false
    //     0x6fbd9c: add             x3, NULL, #0x30  ; false
    // 0x6fbda0: StoreField: r0->field_4f = r3
    //     0x6fbda0: stur            w3, [x0, #0x4f]
    // 0x6fbda4: ldur            x1, [fp, #-0x28]
    // 0x6fbda8: StoreField: r0->field_1f = r1
    //     0x6fbda8: stur            w1, [x0, #0x1f]
    // 0x6fbdac: r1 = Instance__IconButtonVariant
    //     0x6fbdac: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6fbdb0: ldr             x1, [x1, #0x1b8]
    // 0x6fbdb4: StoreField: r0->field_6f = r1
    //     0x6fbdb4: stur            w1, [x0, #0x6f]
    // 0x6fbdb8: r1 = Null
    //     0x6fbdb8: mov             x1, NULL
    // 0x6fbdbc: r2 = 4
    //     0x6fbdbc: mov             x2, #4
    // 0x6fbdc0: r0 = AllocateArray()
    //     0x6fbdc0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fbdc4: mov             x2, x0
    // 0x6fbdc8: ldur            x0, [fp, #-0x38]
    // 0x6fbdcc: stur            x2, [fp, #-0x10]
    // 0x6fbdd0: StoreField: r2->field_f = r0
    //     0x6fbdd0: stur            w0, [x2, #0xf]
    // 0x6fbdd4: ldur            x0, [fp, #-0x18]
    // 0x6fbdd8: StoreField: r2->field_13 = r0
    //     0x6fbdd8: stur            w0, [x2, #0x13]
    // 0x6fbddc: r1 = <Widget>
    //     0x6fbddc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fbde0: r0 = AllocateGrowableArray()
    //     0x6fbde0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fbde4: mov             x1, x0
    // 0x6fbde8: ldur            x0, [fp, #-0x10]
    // 0x6fbdec: stur            x1, [fp, #-0x18]
    // 0x6fbdf0: StoreField: r1->field_f = r0
    //     0x6fbdf0: stur            w0, [x1, #0xf]
    // 0x6fbdf4: r0 = 4
    //     0x6fbdf4: mov             x0, #4
    // 0x6fbdf8: StoreField: r1->field_b = r0
    //     0x6fbdf8: stur            w0, [x1, #0xb]
    // 0x6fbdfc: r0 = AlertDialog()
    //     0x6fbdfc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6fbe00: ldur            x1, [fp, #-0x20]
    // 0x6fbe04: StoreField: r0->field_f = r1
    //     0x6fbe04: stur            w1, [x0, #0xf]
    // 0x6fbe08: ldur            x1, [fp, #-8]
    // 0x6fbe0c: StoreField: r0->field_1b = r1
    //     0x6fbe0c: stur            w1, [x0, #0x1b]
    // 0x6fbe10: ldur            x1, [fp, #-0x18]
    // 0x6fbe14: StoreField: r0->field_27 = r1
    //     0x6fbe14: stur            w1, [x0, #0x27]
    // 0x6fbe18: r1 = false
    //     0x6fbe18: add             x1, NULL, #0x30  ; false
    // 0x6fbe1c: StoreField: r0->field_6b = r1
    //     0x6fbe1c: stur            w1, [x0, #0x6b]
    // 0x6fbe20: LeaveFrame
    //     0x6fbe20: mov             SP, fp
    //     0x6fbe24: ldp             fp, lr, [SP], #0x10
    // 0x6fbe28: ret
    //     0x6fbe28: ret             
    // 0x6fbe2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fbe2c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fbe30: b               #0x6fb83c
    // 0x6fbe34: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fbe34: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6fbe38, size: 0x230
    // 0x6fbe38: EnterFrame
    //     0x6fbe38: stp             fp, lr, [SP, #-0x10]!
    //     0x6fbe3c: mov             fp, SP
    // 0x6fbe40: AllocStack(0x48)
    //     0x6fbe40: sub             SP, SP, #0x48
    // 0x6fbe44: SetupParameters(_ZikirlerimState this /* r1 */)
    //     0x6fbe44: stur            NULL, [fp, #-8]
    //     0x6fbe48: mov             x0, #0
    //     0x6fbe4c: add             x1, fp, w0, sxtw #2
    //     0x6fbe50: ldr             x1, [x1, #0x10]
    //     0x6fbe54: ldur            w2, [x1, #0x17]
    //     0x6fbe58: add             x2, x2, HEAP, lsl #32
    //     0x6fbe5c: stur            x2, [fp, #-0x10]
    // 0x6fbe60: CheckStackOverflow
    //     0x6fbe60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fbe64: cmp             SP, x16
    //     0x6fbe68: b.ls            #0x6fc060
    // 0x6fbe6c: InitAsync() -> Future<void?>
    //     0x6fbe6c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fbe70: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fbe74: r1 = 1
    //     0x6fbe74: mov             x1, #1
    // 0x6fbe78: r0 = AllocateContext()
    //     0x6fbe78: bl              #0x927010  ; AllocateContextStub
    // 0x6fbe7c: mov             x1, x0
    // 0x6fbe80: ldur            x0, [fp, #-0x10]
    // 0x6fbe84: stur            x1, [fp, #-0x20]
    // 0x6fbe88: StoreField: r1->field_b = r0
    //     0x6fbe88: stur            w0, [x1, #0xb]
    // 0x6fbe8c: LoadField: r2 = r0->field_b
    //     0x6fbe8c: ldur            w2, [x0, #0xb]
    // 0x6fbe90: DecompressPointer r2
    //     0x6fbe90: add             x2, x2, HEAP, lsl #32
    // 0x6fbe94: stur            x2, [fp, #-0x18]
    // 0x6fbe98: LoadField: r3 = r2->field_f
    //     0x6fbe98: ldur            w3, [x2, #0xf]
    // 0x6fbe9c: DecompressPointer r3
    //     0x6fbe9c: add             x3, x3, HEAP, lsl #32
    // 0x6fbea0: LoadField: r4 = r3->field_13
    //     0x6fbea0: ldur            w4, [x3, #0x13]
    // 0x6fbea4: DecompressPointer r4
    //     0x6fbea4: add             x4, x4, HEAP, lsl #32
    // 0x6fbea8: LoadField: r5 = r4->field_27
    //     0x6fbea8: ldur            w5, [x4, #0x27]
    // 0x6fbeac: DecompressPointer r5
    //     0x6fbeac: add             x5, x5, HEAP, lsl #32
    // 0x6fbeb0: LoadField: r4 = r5->field_7
    //     0x6fbeb0: ldur            w4, [x5, #7]
    // 0x6fbeb4: DecompressPointer r4
    //     0x6fbeb4: add             x4, x4, HEAP, lsl #32
    // 0x6fbeb8: LoadField: r5 = r4->field_7
    //     0x6fbeb8: ldur            w5, [x4, #7]
    // 0x6fbebc: cbz             w5, #0x6fbee0
    // 0x6fbec0: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x6fbec0: ldur            w4, [x3, #0x17]
    // 0x6fbec4: DecompressPointer r4
    //     0x6fbec4: add             x4, x4, HEAP, lsl #32
    // 0x6fbec8: LoadField: r3 = r4->field_27
    //     0x6fbec8: ldur            w3, [x4, #0x27]
    // 0x6fbecc: DecompressPointer r3
    //     0x6fbecc: add             x3, x3, HEAP, lsl #32
    // 0x6fbed0: LoadField: r4 = r3->field_7
    //     0x6fbed0: ldur            w4, [x3, #7]
    // 0x6fbed4: DecompressPointer r4
    //     0x6fbed4: add             x4, x4, HEAP, lsl #32
    // 0x6fbed8: LoadField: r3 = r4->field_7
    //     0x6fbed8: ldur            w3, [x4, #7]
    // 0x6fbedc: cbnz            w3, #0x6fbf08
    // 0x6fbee0: r16 = Instance_Color
    //     0x6fbee0: ldr             x16, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6fbee4: r30 = Instance_Color
    //     0x6fbee4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6fbee8: stp             lr, x16, [SP]
    // 0x6fbeec: r1 = "Lütfen Boş Alan Bırakmayınız."
    //     0x6fbeec: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7e8] "Lütfen Boş Alan Bırakmayınız."
    //     0x6fbef0: ldr             x1, [x1, #0x7e8]
    // 0x6fbef4: r4 = const [0, 0x3, 0x2, 0x1, backgroundColor, 0x1, textColor, 0x2, null]
    //     0x6fbef4: add             x4, PP, #0x20, lsl #12  ; [pp+0x20888] List(9) [0, 0x3, 0x2, 0x1, "backgroundColor", 0x1, "textColor", 0x2, Null]
    //     0x6fbef8: ldr             x4, [x4, #0x888]
    // 0x6fbefc: r0 = showToast()
    //     0x6fbefc: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x6fbf00: r0 = Null
    //     0x6fbf00: mov             x0, NULL
    // 0x6fbf04: r0 = ReturnAsyncNotFuture()
    //     0x6fbf04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fbf08: r0 = DateTime()
    //     0x6fbf08: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6fbf0c: mov             x1, x0
    // 0x6fbf10: r0 = false
    //     0x6fbf10: add             x0, NULL, #0x30  ; false
    // 0x6fbf14: stur            x1, [fp, #-0x28]
    // 0x6fbf18: StoreField: r1->field_7 = r0
    //     0x6fbf18: stur            w0, [x1, #7]
    // 0x6fbf1c: r0 = _getCurrentMicros()
    //     0x6fbf1c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6fbf20: r1 = LoadInt32Instr(r0)
    //     0x6fbf20: sbfx            x1, x0, #1, #0x1f
    //     0x6fbf24: tbz             w0, #0, #0x6fbf2c
    //     0x6fbf28: ldur            x1, [x0, #7]
    // 0x6fbf2c: ldur            x0, [fp, #-0x28]
    // 0x6fbf30: StoreField: r0->field_b = r1
    //     0x6fbf30: stur            x1, [x0, #0xb]
    // 0x6fbf34: ldur            x3, [fp, #-0x20]
    // 0x6fbf38: StoreField: r3->field_f = r0
    //     0x6fbf38: stur            w0, [x3, #0xf]
    //     0x6fbf3c: ldurb           w16, [x3, #-1]
    //     0x6fbf40: ldurb           w17, [x0, #-1]
    //     0x6fbf44: and             x16, x17, x16, lsr #2
    //     0x6fbf48: tst             x16, HEAP, lsr #32
    //     0x6fbf4c: b.eq            #0x6fbf54
    //     0x6fbf50: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6fbf54: ldur            x0, [fp, #-0x18]
    // 0x6fbf58: LoadField: r4 = r0->field_f
    //     0x6fbf58: ldur            w4, [x0, #0xf]
    // 0x6fbf5c: DecompressPointer r4
    //     0x6fbf5c: add             x4, x4, HEAP, lsl #32
    // 0x6fbf60: mov             x2, x3
    // 0x6fbf64: stur            x4, [fp, #-0x28]
    // 0x6fbf68: r1 = Function '<anonymous closure>':.
    //     0x6fbf68: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7f0] AnonymousClosure: (0x6fc068), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::zikirDuzenle (0x6fb678)
    //     0x6fbf6c: ldr             x1, [x1, #0x7f0]
    // 0x6fbf70: r0 = AllocateClosure()
    //     0x6fbf70: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fbf74: ldur            x1, [fp, #-0x28]
    // 0x6fbf78: mov             x2, x0
    // 0x6fbf7c: r0 = setState()
    //     0x6fbf7c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fbf80: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fbf80: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fbf84: ldr             x0, [x0, #0x2070]
    //     0x6fbf88: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fbf8c: cmp             w0, w16
    //     0x6fbf90: b.ne            #0x6fbfa0
    //     0x6fbf94: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fbf98: ldr             x2, [x2, #0x770]
    //     0x6fbf9c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fbfa0: r1 = Function '<anonymous closure>':.
    //     0x6fbfa0: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c7f8] AnonymousClosure: (0x6fa718), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fbfa4: ldr             x1, [x1, #0x7f8]
    // 0x6fbfa8: r2 = Null
    //     0x6fbfa8: mov             x2, NULL
    // 0x6fbfac: stur            x0, [fp, #-0x28]
    // 0x6fbfb0: r0 = AllocateClosure()
    //     0x6fbfb0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fbfb4: r16 = <String>
    //     0x6fbfb4: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6fbfb8: ldur            lr, [fp, #-0x28]
    // 0x6fbfbc: stp             lr, x16, [SP, #8]
    // 0x6fbfc0: str             x0, [SP]
    // 0x6fbfc4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fbfc4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fbfc8: r0 = map()
    //     0x6fbfc8: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fbfcc: LoadField: r1 = r0->field_7
    //     0x6fbfcc: ldur            w1, [x0, #7]
    // 0x6fbfd0: DecompressPointer r1
    //     0x6fbfd0: add             x1, x1, HEAP, lsl #32
    // 0x6fbfd4: mov             x2, x0
    // 0x6fbfd8: r0 = _GrowableList.of()
    //     0x6fbfd8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fbfdc: mov             x1, x0
    // 0x6fbfe0: r0 = listToString()
    //     0x6fbfe0: bl              #0x6fa3d4  ; [dart:collection] ListBase::listToString
    // 0x6fbfe4: mov             x3, x0
    // 0x6fbfe8: ldur            x0, [fp, #-0x18]
    // 0x6fbfec: stur            x3, [fp, #-0x30]
    // 0x6fbff0: LoadField: r4 = r0->field_f
    //     0x6fbff0: ldur            w4, [x0, #0xf]
    // 0x6fbff4: DecompressPointer r4
    //     0x6fbff4: add             x4, x4, HEAP, lsl #32
    // 0x6fbff8: stur            x4, [fp, #-0x28]
    // 0x6fbffc: r1 = Function '<anonymous closure>':.
    //     0x6fbffc: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c800] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fc000: ldr             x1, [x1, #0x800]
    // 0x6fc004: r2 = Null
    //     0x6fc004: mov             x2, NULL
    // 0x6fc008: r0 = AllocateClosure()
    //     0x6fc008: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc00c: ldur            x1, [fp, #-0x28]
    // 0x6fc010: mov             x2, x0
    // 0x6fc014: r0 = setState()
    //     0x6fc014: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fc018: r0 = getInstance()
    //     0x6fc018: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6fc01c: mov             x1, x0
    // 0x6fc020: stur            x1, [fp, #-0x18]
    // 0x6fc024: r0 = Await()
    //     0x6fc024: bl              #0x3dd188  ; AwaitStub
    // 0x6fc028: mov             x1, x0
    // 0x6fc02c: ldur            x3, [fp, #-0x30]
    // 0x6fc030: r2 = "zikirlerim"
    //     0x6fc030: add             x2, PP, #0x20, lsl #12  ; [pp+0x207a0] "zikirlerim"
    //     0x6fc034: ldr             x2, [x2, #0x7a0]
    // 0x6fc038: r0 = setString()
    //     0x6fc038: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x6fc03c: ldur            x0, [fp, #-0x10]
    // 0x6fc040: LoadField: r1 = r0->field_f
    //     0x6fc040: ldur            w1, [x0, #0xf]
    // 0x6fc044: DecompressPointer r1
    //     0x6fc044: add             x1, x1, HEAP, lsl #32
    // 0x6fc048: r16 = <Object?>
    //     0x6fc048: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fc04c: stp             x1, x16, [SP]
    // 0x6fc050: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fc050: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fc054: r0 = pop()
    //     0x6fc054: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fc058: r0 = Null
    //     0x6fc058: mov             x0, NULL
    // 0x6fc05c: r0 = ReturnAsyncNotFuture()
    //     0x6fc05c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fc060: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fc060: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fc064: b               #0x6fbe6c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fc068, size: 0x17c
    // 0x6fc068: EnterFrame
    //     0x6fc068: stp             fp, lr, [SP, #-0x10]!
    //     0x6fc06c: mov             fp, SP
    // 0x6fc070: AllocStack(0x18)
    //     0x6fc070: sub             SP, SP, #0x18
    // 0x6fc074: SetupParameters([dynamic _ /* r0 */])
    //     0x6fc074: ldr             x0, [fp, #0x10]
    //     0x6fc078: ldur            w1, [x0, #0x17]
    //     0x6fc07c: add             x1, x1, HEAP, lsl #32
    //     0x6fc080: stur            x1, [fp, #-8]
    // 0x6fc084: CheckStackOverflow
    //     0x6fc084: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fc088: cmp             SP, x16
    //     0x6fc08c: b.ls            #0x6fc1d8
    // 0x6fc090: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fc090: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fc094: ldr             x0, [x0, #0x2070]
    //     0x6fc098: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fc09c: cmp             w0, w16
    //     0x6fc0a0: b.ne            #0x6fc0b0
    //     0x6fc0a4: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fc0a8: ldr             x2, [x2, #0x770]
    //     0x6fc0ac: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fc0b0: mov             x3, x0
    // 0x6fc0b4: ldur            x2, [fp, #-8]
    // 0x6fc0b8: LoadField: r0 = r2->field_b
    //     0x6fc0b8: ldur            w0, [x2, #0xb]
    // 0x6fc0bc: DecompressPointer r0
    //     0x6fc0bc: add             x0, x0, HEAP, lsl #32
    // 0x6fc0c0: LoadField: r4 = r0->field_b
    //     0x6fc0c0: ldur            w4, [x0, #0xb]
    // 0x6fc0c4: DecompressPointer r4
    //     0x6fc0c4: add             x4, x4, HEAP, lsl #32
    // 0x6fc0c8: LoadField: r0 = r4->field_13
    //     0x6fc0c8: ldur            w0, [x4, #0x13]
    // 0x6fc0cc: DecompressPointer r0
    //     0x6fc0cc: add             x0, x0, HEAP, lsl #32
    // 0x6fc0d0: LoadField: r1 = r3->field_b
    //     0x6fc0d0: ldur            w1, [x3, #0xb]
    // 0x6fc0d4: r5 = LoadInt32Instr(r0)
    //     0x6fc0d4: sbfx            x5, x0, #1, #0x1f
    //     0x6fc0d8: tbz             w0, #0, #0x6fc0e0
    //     0x6fc0dc: ldur            x5, [x0, #7]
    // 0x6fc0e0: r0 = LoadInt32Instr(r1)
    //     0x6fc0e0: sbfx            x0, x1, #1, #0x1f
    // 0x6fc0e4: mov             x1, x5
    // 0x6fc0e8: cmp             x1, x0
    // 0x6fc0ec: b.hs            #0x6fc1e0
    // 0x6fc0f0: LoadField: r0 = r3->field_f
    //     0x6fc0f0: ldur            w0, [x3, #0xf]
    // 0x6fc0f4: DecompressPointer r0
    //     0x6fc0f4: add             x0, x0, HEAP, lsl #32
    // 0x6fc0f8: ArrayLoad: r1 = r0[r5]  ; Unknown_4
    //     0x6fc0f8: add             x16, x0, x5, lsl #2
    //     0x6fc0fc: ldur            w1, [x16, #0xf]
    // 0x6fc100: DecompressPointer r1
    //     0x6fc100: add             x1, x1, HEAP, lsl #32
    // 0x6fc104: stur            x1, [fp, #-0x10]
    // 0x6fc108: LoadField: r3 = r4->field_f
    //     0x6fc108: ldur            w3, [x4, #0xf]
    // 0x6fc10c: DecompressPointer r3
    //     0x6fc10c: add             x3, x3, HEAP, lsl #32
    // 0x6fc110: LoadField: r0 = r3->field_13
    //     0x6fc110: ldur            w0, [x3, #0x13]
    // 0x6fc114: DecompressPointer r0
    //     0x6fc114: add             x0, x0, HEAP, lsl #32
    // 0x6fc118: LoadField: r4 = r0->field_27
    //     0x6fc118: ldur            w4, [x0, #0x27]
    // 0x6fc11c: DecompressPointer r4
    //     0x6fc11c: add             x4, x4, HEAP, lsl #32
    // 0x6fc120: LoadField: r0 = r4->field_7
    //     0x6fc120: ldur            w0, [x4, #7]
    // 0x6fc124: DecompressPointer r0
    //     0x6fc124: add             x0, x0, HEAP, lsl #32
    // 0x6fc128: StoreField: r1->field_7 = r0
    //     0x6fc128: stur            w0, [x1, #7]
    //     0x6fc12c: ldurb           w16, [x1, #-1]
    //     0x6fc130: ldurb           w17, [x0, #-1]
    //     0x6fc134: and             x16, x17, x16, lsr #2
    //     0x6fc138: tst             x16, HEAP, lsr #32
    //     0x6fc13c: b.eq            #0x6fc144
    //     0x6fc140: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6fc144: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x6fc144: ldur            w0, [x3, #0x17]
    // 0x6fc148: DecompressPointer r0
    //     0x6fc148: add             x0, x0, HEAP, lsl #32
    // 0x6fc14c: LoadField: r3 = r0->field_27
    //     0x6fc14c: ldur            w3, [x0, #0x27]
    // 0x6fc150: DecompressPointer r3
    //     0x6fc150: add             x3, x3, HEAP, lsl #32
    // 0x6fc154: LoadField: r0 = r3->field_7
    //     0x6fc154: ldur            w0, [x3, #7]
    // 0x6fc158: DecompressPointer r0
    //     0x6fc158: add             x0, x0, HEAP, lsl #32
    // 0x6fc15c: StoreField: r1->field_b = r0
    //     0x6fc15c: stur            w0, [x1, #0xb]
    //     0x6fc160: ldurb           w16, [x1, #-1]
    //     0x6fc164: ldurb           w17, [x0, #-1]
    //     0x6fc168: and             x16, x17, x16, lsr #2
    //     0x6fc16c: tst             x16, HEAP, lsr #32
    //     0x6fc170: b.eq            #0x6fc178
    //     0x6fc174: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6fc178: r0 = DateFormat()
    //     0x6fc178: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x6fc17c: mov             x1, x0
    // 0x6fc180: r2 = "yyyy-MM-dd - kk:mm"
    //     0x6fc180: add             x2, PP, #0x20, lsl #12  ; [pp+0x20788] "yyyy-MM-dd - kk:mm"
    //     0x6fc184: ldr             x2, [x2, #0x788]
    // 0x6fc188: stur            x0, [fp, #-0x18]
    // 0x6fc18c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fc18c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fc190: r0 = DateFormat()
    //     0x6fc190: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x6fc194: ldur            x0, [fp, #-8]
    // 0x6fc198: LoadField: r2 = r0->field_f
    //     0x6fc198: ldur            w2, [x0, #0xf]
    // 0x6fc19c: DecompressPointer r2
    //     0x6fc19c: add             x2, x2, HEAP, lsl #32
    // 0x6fc1a0: ldur            x1, [fp, #-0x18]
    // 0x6fc1a4: r0 = format()
    //     0x6fc1a4: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x6fc1a8: ldur            x1, [fp, #-0x10]
    // 0x6fc1ac: StoreField: r1->field_f = r0
    //     0x6fc1ac: stur            w0, [x1, #0xf]
    //     0x6fc1b0: ldurb           w16, [x1, #-1]
    //     0x6fc1b4: ldurb           w17, [x0, #-1]
    //     0x6fc1b8: and             x16, x17, x16, lsr #2
    //     0x6fc1bc: tst             x16, HEAP, lsr #32
    //     0x6fc1c0: b.eq            #0x6fc1c8
    //     0x6fc1c4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6fc1c8: r0 = Null
    //     0x6fc1c8: mov             x0, NULL
    // 0x6fc1cc: LeaveFrame
    //     0x6fc1cc: mov             SP, fp
    //     0x6fc1d0: ldp             fp, lr, [SP], #0x10
    // 0x6fc1d4: ret
    //     0x6fc1d4: ret             
    // 0x6fc1d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fc1d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fc1dc: b               #0x6fc090
    // 0x6fc1e0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fc1e0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6fc1e4, size: 0xd4
    // 0x6fc1e4: EnterFrame
    //     0x6fc1e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6fc1e8: mov             fp, SP
    // 0x6fc1ec: AllocStack(0x40)
    //     0x6fc1ec: sub             SP, SP, #0x40
    // 0x6fc1f0: SetupParameters(_ZikirlerimState this /* r1 */)
    //     0x6fc1f0: stur            NULL, [fp, #-8]
    //     0x6fc1f4: mov             x0, #0
    //     0x6fc1f8: add             x1, fp, w0, sxtw #2
    //     0x6fc1fc: ldr             x1, [x1, #0x10]
    //     0x6fc200: ldur            w2, [x1, #0x17]
    //     0x6fc204: add             x2, x2, HEAP, lsl #32
    //     0x6fc208: stur            x2, [fp, #-0x10]
    // 0x6fc20c: CheckStackOverflow
    //     0x6fc20c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fc210: cmp             SP, x16
    //     0x6fc214: b.ls            #0x6fc2b0
    // 0x6fc218: InitAsync() -> Future<void?>
    //     0x6fc218: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fc21c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fc220: ldur            x2, [fp, #-0x10]
    // 0x6fc224: LoadField: r0 = r2->field_f
    //     0x6fc224: ldur            w0, [x2, #0xf]
    // 0x6fc228: DecompressPointer r0
    //     0x6fc228: add             x0, x0, HEAP, lsl #32
    // 0x6fc22c: stur            x0, [fp, #-0x18]
    // 0x6fc230: r1 = Function '<anonymous closure>':.
    //     0x6fc230: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c808] AnonymousClosure: (0x6fc340), in [package:umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart] _ZikirlerimState::menuAc (0x6f9c00)
    //     0x6fc234: ldr             x1, [x1, #0x808]
    // 0x6fc238: r0 = AllocateClosure()
    //     0x6fc238: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc23c: r1 = Null
    //     0x6fc23c: mov             x1, NULL
    // 0x6fc240: stur            x0, [fp, #-0x10]
    // 0x6fc244: r0 = MaterialPageRoute()
    //     0x6fc244: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x6fc248: mov             x4, x0
    // 0x6fc24c: ldur            x0, [fp, #-0x10]
    // 0x6fc250: stur            x4, [fp, #-0x20]
    // 0x6fc254: StoreField: r4->field_a3 = r0
    //     0x6fc254: stur            w0, [x4, #0xa3]
    // 0x6fc258: r0 = true
    //     0x6fc258: add             x0, NULL, #0x20  ; true
    // 0x6fc25c: StoreField: r4->field_a7 = r0
    //     0x6fc25c: stur            w0, [x4, #0xa7]
    // 0x6fc260: r1 = false
    //     0x6fc260: add             x1, NULL, #0x30  ; false
    // 0x6fc264: StoreField: r4->field_97 = r1
    //     0x6fc264: stur            w1, [x4, #0x97]
    // 0x6fc268: StoreField: r4->field_9b = r0
    //     0x6fc268: stur            w0, [x4, #0x9b]
    // 0x6fc26c: StoreField: r4->field_9f = r1
    //     0x6fc26c: stur            w1, [x4, #0x9f]
    // 0x6fc270: mov             x1, x4
    // 0x6fc274: r2 = Null
    //     0x6fc274: mov             x2, NULL
    // 0x6fc278: r3 = Null
    //     0x6fc278: mov             x3, NULL
    // 0x6fc27c: r0 = ModalRoute()
    //     0x6fc27c: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x6fc280: r1 = Function '<anonymous closure>':.
    //     0x6fc280: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c810] Function: [dart:core] Object::_simpleInstanceOfFalse (0x924db0)
    //     0x6fc284: ldr             x1, [x1, #0x810]
    // 0x6fc288: r2 = Null
    //     0x6fc288: mov             x2, NULL
    // 0x6fc28c: r0 = AllocateClosure()
    //     0x6fc28c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc290: ldur            x16, [fp, #-0x18]
    // 0x6fc294: stp             x16, NULL, [SP, #0x10]
    // 0x6fc298: ldur            x16, [fp, #-0x20]
    // 0x6fc29c: stp             x0, x16, [SP]
    // 0x6fc2a0: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x6fc2a0: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x6fc2a4: r0 = pushAndRemoveUntil()
    //     0x6fc2a4: bl              #0x6fc2b8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushAndRemoveUntil
    // 0x6fc2a8: r0 = Null
    //     0x6fc2a8: mov             x0, NULL
    // 0x6fc2ac: r0 = ReturnAsyncNotFuture()
    //     0x6fc2ac: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fc2b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fc2b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fc2b4: b               #0x6fc218
  }
  [closure] ZikirCek <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6fc340, size: 0x114
    // 0x6fc340: EnterFrame
    //     0x6fc340: stp             fp, lr, [SP, #-0x10]!
    //     0x6fc344: mov             fp, SP
    // 0x6fc348: AllocStack(0x28)
    //     0x6fc348: sub             SP, SP, #0x28
    // 0x6fc34c: SetupParameters([dynamic _ /* r0 */])
    //     0x6fc34c: ldr             x0, [fp, #0x18]
    //     0x6fc350: ldur            w1, [x0, #0x17]
    //     0x6fc354: add             x1, x1, HEAP, lsl #32
    //     0x6fc358: stur            x1, [fp, #-8]
    // 0x6fc35c: CheckStackOverflow
    //     0x6fc35c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fc360: cmp             SP, x16
    //     0x6fc364: b.ls            #0x6fc448
    // 0x6fc368: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fc368: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fc36c: ldr             x0, [x0, #0x2070]
    //     0x6fc370: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fc374: cmp             w0, w16
    //     0x6fc378: b.ne            #0x6fc388
    //     0x6fc37c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fc380: ldr             x2, [x2, #0x770]
    //     0x6fc384: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fc388: mov             x2, x0
    // 0x6fc38c: ldur            x0, [fp, #-8]
    // 0x6fc390: LoadField: r1 = r0->field_b
    //     0x6fc390: ldur            w1, [x0, #0xb]
    // 0x6fc394: DecompressPointer r1
    //     0x6fc394: add             x1, x1, HEAP, lsl #32
    // 0x6fc398: LoadField: r0 = r1->field_13
    //     0x6fc398: ldur            w0, [x1, #0x13]
    // 0x6fc39c: DecompressPointer r0
    //     0x6fc39c: add             x0, x0, HEAP, lsl #32
    // 0x6fc3a0: LoadField: r1 = r2->field_b
    //     0x6fc3a0: ldur            w1, [x2, #0xb]
    // 0x6fc3a4: r3 = LoadInt32Instr(r0)
    //     0x6fc3a4: sbfx            x3, x0, #1, #0x1f
    //     0x6fc3a8: tbz             w0, #0, #0x6fc3b0
    //     0x6fc3ac: ldur            x3, [x0, #7]
    // 0x6fc3b0: r0 = LoadInt32Instr(r1)
    //     0x6fc3b0: sbfx            x0, x1, #1, #0x1f
    // 0x6fc3b4: mov             x1, x3
    // 0x6fc3b8: cmp             x1, x0
    // 0x6fc3bc: b.hs            #0x6fc450
    // 0x6fc3c0: LoadField: r0 = r2->field_f
    //     0x6fc3c0: ldur            w0, [x2, #0xf]
    // 0x6fc3c4: DecompressPointer r0
    //     0x6fc3c4: add             x0, x0, HEAP, lsl #32
    // 0x6fc3c8: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0x6fc3c8: add             x16, x0, x3, lsl #2
    //     0x6fc3cc: ldur            w1, [x16, #0xf]
    // 0x6fc3d0: DecompressPointer r1
    //     0x6fc3d0: add             x1, x1, HEAP, lsl #32
    // 0x6fc3d4: LoadField: r0 = r1->field_13
    //     0x6fc3d4: ldur            w0, [x1, #0x13]
    // 0x6fc3d8: DecompressPointer r0
    //     0x6fc3d8: add             x0, x0, HEAP, lsl #32
    // 0x6fc3dc: stur            x0, [fp, #-0x20]
    // 0x6fc3e0: LoadField: r2 = r1->field_7
    //     0x6fc3e0: ldur            w2, [x1, #7]
    // 0x6fc3e4: DecompressPointer r2
    //     0x6fc3e4: add             x2, x2, HEAP, lsl #32
    // 0x6fc3e8: stur            x2, [fp, #-0x18]
    // 0x6fc3ec: LoadField: r3 = r1->field_b
    //     0x6fc3ec: ldur            w3, [x1, #0xb]
    // 0x6fc3f0: DecompressPointer r3
    //     0x6fc3f0: add             x3, x3, HEAP, lsl #32
    // 0x6fc3f4: stur            x3, [fp, #-0x10]
    // 0x6fc3f8: LoadField: r4 = r1->field_f
    //     0x6fc3f8: ldur            w4, [x1, #0xf]
    // 0x6fc3fc: DecompressPointer r4
    //     0x6fc3fc: add             x4, x4, HEAP, lsl #32
    // 0x6fc400: stur            x4, [fp, #-8]
    // 0x6fc404: r0 = ModelZikirlerim()
    //     0x6fc404: bl              #0x5e669c  ; AllocateModelZikirlerimStub -> ModelZikirlerim (size=0x18)
    // 0x6fc408: mov             x1, x0
    // 0x6fc40c: ldur            x0, [fp, #-0x18]
    // 0x6fc410: stur            x1, [fp, #-0x28]
    // 0x6fc414: StoreField: r1->field_7 = r0
    //     0x6fc414: stur            w0, [x1, #7]
    // 0x6fc418: ldur            x0, [fp, #-0x10]
    // 0x6fc41c: StoreField: r1->field_b = r0
    //     0x6fc41c: stur            w0, [x1, #0xb]
    // 0x6fc420: ldur            x0, [fp, #-8]
    // 0x6fc424: StoreField: r1->field_f = r0
    //     0x6fc424: stur            w0, [x1, #0xf]
    // 0x6fc428: ldur            x0, [fp, #-0x20]
    // 0x6fc42c: StoreField: r1->field_13 = r0
    //     0x6fc42c: stur            w0, [x1, #0x13]
    // 0x6fc430: r0 = ZikirCek()
    //     0x6fc430: bl              #0x6fc454  ; AllocateZikirCekStub -> ZikirCek (size=0x10)
    // 0x6fc434: ldur            x1, [fp, #-0x28]
    // 0x6fc438: StoreField: r0->field_b = r1
    //     0x6fc438: stur            w1, [x0, #0xb]
    // 0x6fc43c: LeaveFrame
    //     0x6fc43c: mov             SP, fp
    //     0x6fc440: ldp             fp, lr, [SP], #0x10
    // 0x6fc444: ret
    //     0x6fc444: ret             
    // 0x6fc448: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fc448: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fc44c: b               #0x6fc368
    // 0x6fc450: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6fc450: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// class id: 3205, size: 0xc, field offset: 0xc
//   const constructor, 
class Zikirlerim extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd9d0, size: 0x48
    // 0x7bd9d0: EnterFrame
    //     0x7bd9d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd9d4: mov             fp, SP
    // 0x7bd9d8: AllocStack(0x8)
    //     0x7bd9d8: sub             SP, SP, #8
    // 0x7bd9dc: CheckStackOverflow
    //     0x7bd9dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd9e0: cmp             SP, x16
    //     0x7bd9e4: b.ls            #0x7bda10
    // 0x7bd9e8: r1 = <Zikirlerim>
    //     0x7bd9e8: add             x1, PP, #0x27, lsl #12  ; [pp+0x27290] TypeArguments: <Zikirlerim>
    //     0x7bd9ec: ldr             x1, [x1, #0x290]
    // 0x7bd9f0: r0 = _ZikirlerimState()
    //     0x7bd9f0: bl              #0x7bda18  ; Allocate_ZikirlerimStateStub -> _ZikirlerimState (size=0x1c)
    // 0x7bd9f4: mov             x1, x0
    // 0x7bd9f8: stur            x0, [fp, #-8]
    // 0x7bd9fc: r0 = _NotificationsPageState()
    //     0x7bd9fc: bl              #0x7bd460  ; [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::_NotificationsPageState
    // 0x7bda00: ldur            x0, [fp, #-8]
    // 0x7bda04: LeaveFrame
    //     0x7bda04: mov             SP, fp
    //     0x7bda08: ldp             fp, lr, [SP], #0x10
    // 0x7bda0c: ret
    //     0x7bda0c: ret             
    // 0x7bda10: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bda10: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bda14: b               #0x7bd9e8
  }
}

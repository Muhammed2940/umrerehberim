// lib: , url: package:umrem_demo/features/admin/screens/agencies_page.dart

// class id: 1049527, size: 0x8
class :: {
}

// class id: 2491, size: 0x14, field offset: 0x14
class _AgenciesPageState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5dfddc, size: 0x130
    // 0x5dfddc: EnterFrame
    //     0x5dfddc: stp             fp, lr, [SP, #-0x10]!
    //     0x5dfde0: mov             fp, SP
    // 0x5dfde4: AllocStack(0x18)
    //     0x5dfde4: sub             SP, SP, #0x18
    // 0x5dfde8: SetupParameters(_AgenciesPageState this /* r1 => r1, fp-0x8 */)
    //     0x5dfde8: stur            x1, [fp, #-8]
    // 0x5dfdec: CheckStackOverflow
    //     0x5dfdec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dfdf0: cmp             SP, x16
    //     0x5dfdf4: b.ls            #0x5dff00
    // 0x5dfdf8: r1 = 1
    //     0x5dfdf8: mov             x1, #1
    // 0x5dfdfc: r0 = AllocateContext()
    //     0x5dfdfc: bl              #0x927010  ; AllocateContextStub
    // 0x5dfe00: mov             x1, x0
    // 0x5dfe04: ldur            x0, [fp, #-8]
    // 0x5dfe08: StoreField: r1->field_f = r0
    //     0x5dfe08: stur            w0, [x1, #0xf]
    // 0x5dfe0c: r0 = LoadStaticField(0x834)
    //     0x5dfe0c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5dfe10: ldr             x0, [x0, #0x1068]
    // 0x5dfe14: cmp             w0, NULL
    // 0x5dfe18: b.eq            #0x5dff08
    // 0x5dfe1c: LoadField: r3 = r0->field_53
    //     0x5dfe1c: ldur            w3, [x0, #0x53]
    // 0x5dfe20: DecompressPointer r3
    //     0x5dfe20: add             x3, x3, HEAP, lsl #32
    // 0x5dfe24: stur            x3, [fp, #-0x10]
    // 0x5dfe28: LoadField: r0 = r3->field_7
    //     0x5dfe28: ldur            w0, [x3, #7]
    // 0x5dfe2c: DecompressPointer r0
    //     0x5dfe2c: add             x0, x0, HEAP, lsl #32
    // 0x5dfe30: mov             x2, x1
    // 0x5dfe34: stur            x0, [fp, #-8]
    // 0x5dfe38: r1 = Function '<anonymous closure>':.
    //     0x5dfe38: add             x1, PP, #0x19, lsl #12  ; [pp+0x19850] AnonymousClosure: (0x5dff2c), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::initState (0x5dfddc)
    //     0x5dfe3c: ldr             x1, [x1, #0x850]
    // 0x5dfe40: r0 = AllocateClosure()
    //     0x5dfe40: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5dfe44: ldur            x2, [fp, #-8]
    // 0x5dfe48: mov             x3, x0
    // 0x5dfe4c: r1 = Null
    //     0x5dfe4c: mov             x1, NULL
    // 0x5dfe50: stur            x3, [fp, #-8]
    // 0x5dfe54: cmp             w2, NULL
    // 0x5dfe58: b.eq            #0x5dfe78
    // 0x5dfe5c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5dfe5c: ldur            w4, [x2, #0x17]
    // 0x5dfe60: DecompressPointer r4
    //     0x5dfe60: add             x4, x4, HEAP, lsl #32
    // 0x5dfe64: r8 = X0
    //     0x5dfe64: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5dfe68: LoadField: r9 = r4->field_7
    //     0x5dfe68: ldur            x9, [x4, #7]
    // 0x5dfe6c: r3 = Null
    //     0x5dfe6c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19858] Null
    //     0x5dfe70: ldr             x3, [x3, #0x858]
    // 0x5dfe74: blr             x9
    // 0x5dfe78: ldur            x0, [fp, #-0x10]
    // 0x5dfe7c: LoadField: r1 = r0->field_b
    //     0x5dfe7c: ldur            w1, [x0, #0xb]
    // 0x5dfe80: LoadField: r2 = r0->field_f
    //     0x5dfe80: ldur            w2, [x0, #0xf]
    // 0x5dfe84: DecompressPointer r2
    //     0x5dfe84: add             x2, x2, HEAP, lsl #32
    // 0x5dfe88: LoadField: r3 = r2->field_b
    //     0x5dfe88: ldur            w3, [x2, #0xb]
    // 0x5dfe8c: r2 = LoadInt32Instr(r1)
    //     0x5dfe8c: sbfx            x2, x1, #1, #0x1f
    // 0x5dfe90: stur            x2, [fp, #-0x18]
    // 0x5dfe94: r1 = LoadInt32Instr(r3)
    //     0x5dfe94: sbfx            x1, x3, #1, #0x1f
    // 0x5dfe98: cmp             x2, x1
    // 0x5dfe9c: b.ne            #0x5dfea8
    // 0x5dfea0: mov             x1, x0
    // 0x5dfea4: r0 = _growToNextCapacity()
    //     0x5dfea4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5dfea8: ldur            x2, [fp, #-0x10]
    // 0x5dfeac: ldur            x3, [fp, #-0x18]
    // 0x5dfeb0: add             x4, x3, #1
    // 0x5dfeb4: lsl             x5, x4, #1
    // 0x5dfeb8: StoreField: r2->field_b = r5
    //     0x5dfeb8: stur            w5, [x2, #0xb]
    // 0x5dfebc: LoadField: r1 = r2->field_f
    //     0x5dfebc: ldur            w1, [x2, #0xf]
    // 0x5dfec0: DecompressPointer r1
    //     0x5dfec0: add             x1, x1, HEAP, lsl #32
    // 0x5dfec4: ldur            x0, [fp, #-8]
    // 0x5dfec8: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5dfec8: add             x25, x1, x3, lsl #2
    //     0x5dfecc: add             x25, x25, #0xf
    //     0x5dfed0: str             w0, [x25]
    //     0x5dfed4: tbz             w0, #0, #0x5dfef0
    //     0x5dfed8: ldurb           w16, [x1, #-1]
    //     0x5dfedc: ldurb           w17, [x0, #-1]
    //     0x5dfee0: and             x16, x17, x16, lsr #2
    //     0x5dfee4: tst             x16, HEAP, lsr #32
    //     0x5dfee8: b.eq            #0x5dfef0
    //     0x5dfeec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5dfef0: r0 = Null
    //     0x5dfef0: mov             x0, NULL
    // 0x5dfef4: LeaveFrame
    //     0x5dfef4: mov             SP, fp
    //     0x5dfef8: ldp             fp, lr, [SP], #0x10
    // 0x5dfefc: ret
    //     0x5dfefc: ret             
    // 0x5dff00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dff00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dff04: b               #0x5dfdf8
    // 0x5dff08: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5dff08: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5dff2c, size: 0x74
    // 0x5dff2c: EnterFrame
    //     0x5dff2c: stp             fp, lr, [SP, #-0x10]!
    //     0x5dff30: mov             fp, SP
    // 0x5dff34: AllocStack(0x10)
    //     0x5dff34: sub             SP, SP, #0x10
    // 0x5dff38: SetupParameters([dynamic _ /* r0 */])
    //     0x5dff38: ldr             x0, [fp, #0x18]
    //     0x5dff3c: ldur            w1, [x0, #0x17]
    //     0x5dff40: add             x1, x1, HEAP, lsl #32
    // 0x5dff44: CheckStackOverflow
    //     0x5dff44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dff48: cmp             SP, x16
    //     0x5dff4c: b.ls            #0x5dff94
    // 0x5dff50: LoadField: r0 = r1->field_f
    //     0x5dff50: ldur            w0, [x1, #0xf]
    // 0x5dff54: DecompressPointer r0
    //     0x5dff54: add             x0, x0, HEAP, lsl #32
    // 0x5dff58: LoadField: r1 = r0->field_f
    //     0x5dff58: ldur            w1, [x0, #0xf]
    // 0x5dff5c: DecompressPointer r1
    //     0x5dff5c: add             x1, x1, HEAP, lsl #32
    // 0x5dff60: cmp             w1, NULL
    // 0x5dff64: b.eq            #0x5dff9c
    // 0x5dff68: r16 = <AgencyProvider>
    //     0x5dff68: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x5dff6c: ldr             x16, [x16, #0xb60]
    // 0x5dff70: stp             x1, x16, [SP]
    // 0x5dff74: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5dff74: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5dff78: r0 = ReadContext.read()
    //     0x5dff78: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5dff7c: mov             x1, x0
    // 0x5dff80: r0 = loadAgencies()
    //     0x5dff80: bl              #0x5dffa0  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::loadAgencies
    // 0x5dff84: r0 = Null
    //     0x5dff84: mov             x0, NULL
    // 0x5dff88: LeaveFrame
    //     0x5dff88: mov             SP, fp
    //     0x5dff8c: ldp             fp, lr, [SP], #0x10
    // 0x5dff90: ret
    //     0x5dff90: ret             
    // 0x5dff94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dff94: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dff98: b               #0x5dff50
    // 0x5dff9c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5dff9c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6d502c, size: 0x17c
    // 0x6d502c: EnterFrame
    //     0x6d502c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d5030: mov             fp, SP
    // 0x6d5034: AllocStack(0x30)
    //     0x6d5034: sub             SP, SP, #0x30
    // 0x6d5038: SetupParameters(_AgenciesPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6d5038: stur            x1, [fp, #-8]
    //     0x6d503c: stur            x2, [fp, #-0x10]
    // 0x6d5040: CheckStackOverflow
    //     0x6d5040: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d5044: cmp             SP, x16
    //     0x6d5048: b.ls            #0x6d51a0
    // 0x6d504c: r1 = 2
    //     0x6d504c: mov             x1, #2
    // 0x6d5050: r0 = AllocateContext()
    //     0x6d5050: bl              #0x927010  ; AllocateContextStub
    // 0x6d5054: mov             x1, x0
    // 0x6d5058: ldur            x0, [fp, #-8]
    // 0x6d505c: stur            x1, [fp, #-0x18]
    // 0x6d5060: StoreField: r1->field_f = r0
    //     0x6d5060: stur            w0, [x1, #0xf]
    // 0x6d5064: ldur            x0, [fp, #-0x10]
    // 0x6d5068: StoreField: r1->field_13 = r0
    //     0x6d5068: stur            w0, [x1, #0x13]
    // 0x6d506c: r0 = AppBar()
    //     0x6d506c: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6d5070: stur            x0, [fp, #-8]
    // 0x6d5074: r16 = Instance_Color
    //     0x6d5074: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d5078: r30 = 0.000000
    //     0x6d5078: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6d507c: stp             lr, x16, [SP]
    // 0x6d5080: mov             x1, x0
    // 0x6d5084: r2 = Instance_Text
    //     0x6d5084: add             x2, PP, #0x19, lsl #12  ; [pp+0x196d8] Obj!Text@a1b271
    //     0x6d5088: ldr             x2, [x2, #0x6d8]
    // 0x6d508c: r4 = const [0, 0x4, 0x2, 0x2, backgroundColor, 0x2, elevation, 0x3, null]
    //     0x6d508c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15930] List(9) [0, 0x4, 0x2, 0x2, "backgroundColor", 0x2, "elevation", 0x3, Null]
    //     0x6d5090: ldr             x4, [x4, #0x930]
    // 0x6d5094: r0 = AppBar()
    //     0x6d5094: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6d5098: r0 = FloatingActionButton()
    //     0x6d5098: bl              #0x6d51a8  ; AllocateFloatingActionButtonStub -> FloatingActionButton (size=0x78)
    // 0x6d509c: mov             x3, x0
    // 0x6d50a0: r0 = Instance_Icon
    //     0x6d50a0: add             x0, PP, #0x19, lsl #12  ; [pp+0x19128] Obj!Icon@a1e271
    //     0x6d50a4: ldr             x0, [x0, #0x128]
    // 0x6d50a8: stur            x3, [fp, #-0x10]
    // 0x6d50ac: StoreField: r3->field_b = r0
    //     0x6d50ac: stur            w0, [x3, #0xb]
    // 0x6d50b0: r0 = Instance_Color
    //     0x6d50b0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d50b4: ldr             x0, [x0, #0xb78]
    // 0x6d50b8: ArrayStore: r3[0] = r0  ; List_4
    //     0x6d50b8: stur            w0, [x3, #0x17]
    // 0x6d50bc: r0 = Instance__DefaultHeroTag
    //     0x6d50bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b8] Obj!_DefaultHeroTag@a0f381
    //     0x6d50c0: ldr             x0, [x0, #0x5b8]
    // 0x6d50c4: StoreField: r3->field_27 = r0
    //     0x6d50c4: stur            w0, [x3, #0x27]
    // 0x6d50c8: ldur            x2, [fp, #-0x18]
    // 0x6d50cc: r1 = Function '<anonymous closure>':.
    //     0x6d50cc: add             x1, PP, #0x19, lsl #12  ; [pp+0x196e0] AnonymousClosure: (0x6d97e0), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d50d0: ldr             x1, [x1, #0x6e0]
    // 0x6d50d4: r0 = AllocateClosure()
    //     0x6d50d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d50d8: mov             x1, x0
    // 0x6d50dc: ldur            x0, [fp, #-0x10]
    // 0x6d50e0: StoreField: r0->field_2b = r1
    //     0x6d50e0: stur            w1, [x0, #0x2b]
    // 0x6d50e4: r1 = Instance_Clip
    //     0x6d50e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d50e8: ldr             x1, [x1, #0x348]
    // 0x6d50ec: StoreField: r0->field_4b = r1
    //     0x6d50ec: stur            w1, [x0, #0x4b]
    // 0x6d50f0: r3 = false
    //     0x6d50f0: add             x3, NULL, #0x30  ; false
    // 0x6d50f4: StoreField: r0->field_57 = r3
    //     0x6d50f4: stur            w3, [x0, #0x57]
    // 0x6d50f8: StoreField: r0->field_4f = r3
    //     0x6d50f8: stur            w3, [x0, #0x4f]
    // 0x6d50fc: r1 = Instance__FloatingActionButtonType
    //     0x6d50fc: add             x1, PP, #0x12, lsl #12  ; [pp+0x125c8] Obj!_FloatingActionButtonType@a2ba91
    //     0x6d5100: ldr             x1, [x1, #0x5c8]
    // 0x6d5104: StoreField: r0->field_6f = r1
    //     0x6d5104: stur            w1, [x0, #0x6f]
    // 0x6d5108: ldur            x2, [fp, #-0x18]
    // 0x6d510c: r1 = Function '<anonymous closure>':.
    //     0x6d510c: add             x1, PP, #0x19, lsl #12  ; [pp+0x196e8] AnonymousClosure: (0x6d51b4), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d5110: ldr             x1, [x1, #0x6e8]
    // 0x6d5114: r0 = AllocateClosure()
    //     0x6d5114: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d5118: r1 = <AgencyProvider>
    //     0x6d5118: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6d511c: ldr             x1, [x1, #0xb60]
    // 0x6d5120: stur            x0, [fp, #-0x18]
    // 0x6d5124: r0 = Consumer()
    //     0x6d5124: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6d5128: mov             x1, x0
    // 0x6d512c: ldur            x0, [fp, #-0x18]
    // 0x6d5130: stur            x1, [fp, #-0x20]
    // 0x6d5134: StoreField: r1->field_13 = r0
    //     0x6d5134: stur            w0, [x1, #0x13]
    // 0x6d5138: r0 = Scaffold()
    //     0x6d5138: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6d513c: ldur            x1, [fp, #-8]
    // 0x6d5140: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d5140: stur            w1, [x0, #0x17]
    // 0x6d5144: ldur            x1, [fp, #-0x20]
    // 0x6d5148: StoreField: r0->field_1b = r1
    //     0x6d5148: stur            w1, [x0, #0x1b]
    // 0x6d514c: ldur            x1, [fp, #-0x10]
    // 0x6d5150: StoreField: r0->field_1f = r1
    //     0x6d5150: stur            w1, [x0, #0x1f]
    // 0x6d5154: r1 = Instance_AlignmentDirectional
    //     0x6d5154: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6d5158: ldr             x1, [x1, #0x350]
    // 0x6d515c: StoreField: r0->field_2f = r1
    //     0x6d515c: stur            w1, [x0, #0x2f]
    // 0x6d5160: r1 = true
    //     0x6d5160: add             x1, NULL, #0x20  ; true
    // 0x6d5164: StoreField: r0->field_5f = r1
    //     0x6d5164: stur            w1, [x0, #0x5f]
    // 0x6d5168: r2 = Instance_DragStartBehavior
    //     0x6d5168: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d516c: StoreField: r0->field_63 = r2
    //     0x6d516c: stur            w2, [x0, #0x63]
    // 0x6d5170: r2 = false
    //     0x6d5170: add             x2, NULL, #0x30  ; false
    // 0x6d5174: StoreField: r0->field_b = r2
    //     0x6d5174: stur            w2, [x0, #0xb]
    // 0x6d5178: StoreField: r0->field_f = r1
    //     0x6d5178: stur            w1, [x0, #0xf]
    // 0x6d517c: StoreField: r0->field_13 = r2
    //     0x6d517c: stur            w2, [x0, #0x13]
    // 0x6d5180: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6d5180: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6d5184: ldr             x2, [x2, #0x358]
    // 0x6d5188: StoreField: r0->field_4b = r2
    //     0x6d5188: stur            w2, [x0, #0x4b]
    // 0x6d518c: StoreField: r0->field_6b = r1
    //     0x6d518c: stur            w1, [x0, #0x6b]
    // 0x6d5190: StoreField: r0->field_6f = r1
    //     0x6d5190: stur            w1, [x0, #0x6f]
    // 0x6d5194: LeaveFrame
    //     0x6d5194: mov             SP, fp
    //     0x6d5198: ldp             fp, lr, [SP], #0x10
    // 0x6d519c: ret
    //     0x6d519c: ret             
    // 0x6d51a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d51a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d51a4: b               #0x6d504c
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6d51b4, size: 0x1c4
    // 0x6d51b4: EnterFrame
    //     0x6d51b4: stp             fp, lr, [SP, #-0x10]!
    //     0x6d51b8: mov             fp, SP
    // 0x6d51bc: AllocStack(0x30)
    //     0x6d51bc: sub             SP, SP, #0x30
    // 0x6d51c0: SetupParameters([dynamic _ /* r0 */])
    //     0x6d51c0: ldr             x0, [fp, #0x28]
    //     0x6d51c4: ldur            w1, [x0, #0x17]
    //     0x6d51c8: add             x1, x1, HEAP, lsl #32
    //     0x6d51cc: stur            x1, [fp, #-8]
    // 0x6d51d0: CheckStackOverflow
    //     0x6d51d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d51d4: cmp             SP, x16
    //     0x6d51d8: b.ls            #0x6d5370
    // 0x6d51dc: r1 = 2
    //     0x6d51dc: mov             x1, #2
    // 0x6d51e0: r0 = AllocateContext()
    //     0x6d51e0: bl              #0x927010  ; AllocateContextStub
    // 0x6d51e4: mov             x2, x0
    // 0x6d51e8: ldur            x0, [fp, #-8]
    // 0x6d51ec: stur            x2, [fp, #-0x10]
    // 0x6d51f0: StoreField: r2->field_b = r0
    //     0x6d51f0: stur            w0, [x2, #0xb]
    // 0x6d51f4: ldr             x0, [fp, #0x20]
    // 0x6d51f8: StoreField: r2->field_f = r0
    //     0x6d51f8: stur            w0, [x2, #0xf]
    // 0x6d51fc: ldr             x0, [fp, #0x18]
    // 0x6d5200: StoreField: r2->field_13 = r0
    //     0x6d5200: stur            w0, [x2, #0x13]
    // 0x6d5204: LoadField: r1 = r0->field_27
    //     0x6d5204: ldur            w1, [x0, #0x27]
    // 0x6d5208: DecompressPointer r1
    //     0x6d5208: add             x1, x1, HEAP, lsl #32
    // 0x6d520c: tbnz            w1, #4, #0x6d5224
    // 0x6d5210: r0 = Instance_Center
    //     0x6d5210: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x6d5214: ldr             x0, [x0, #0x710]
    // 0x6d5218: LeaveFrame
    //     0x6d5218: mov             SP, fp
    //     0x6d521c: ldp             fp, lr, [SP], #0x10
    // 0x6d5220: ret
    //     0x6d5220: ret             
    // 0x6d5224: LoadField: r1 = r0->field_2f
    //     0x6d5224: ldur            w1, [x0, #0x2f]
    // 0x6d5228: DecompressPointer r1
    //     0x6d5228: add             x1, x1, HEAP, lsl #32
    // 0x6d522c: r0 = LoadClassIdInstr(r1)
    //     0x6d522c: ldur            x0, [x1, #-1]
    //     0x6d5230: ubfx            x0, x0, #0xc, #0x14
    // 0x6d5234: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6d5234: mov             x17, #0xcda7
    //     0x6d5238: add             lr, x0, x17
    //     0x6d523c: ldr             lr, [x21, lr, lsl #3]
    //     0x6d5240: blr             lr
    // 0x6d5244: tbnz            w0, #4, #0x6d52e8
    // 0x6d5248: r16 = Instance_Color
    //     0x6d5248: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d524c: ldr             x16, [x16, #0xb78]
    // 0x6d5250: r30 = Instance_Color
    //     0x6d5250: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d5254: stp             lr, x16, [SP]
    // 0x6d5258: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6d5258: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6d525c: ldr             x4, [x4, #0x1a8]
    // 0x6d5260: r0 = styleFrom()
    //     0x6d5260: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6d5264: ldur            x2, [fp, #-0x10]
    // 0x6d5268: r1 = Function '<anonymous closure>':.
    //     0x6d5268: add             x1, PP, #0x19, lsl #12  ; [pp+0x196f0] AnonymousClosure: (0x6d9780), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d526c: ldr             x1, [x1, #0x6f0]
    // 0x6d5270: stur            x0, [fp, #-8]
    // 0x6d5274: r0 = AllocateClosure()
    //     0x6d5274: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d5278: stur            x0, [fp, #-0x18]
    // 0x6d527c: r0 = _ElevatedButtonWithIcon()
    //     0x6d527c: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x6d5280: mov             x1, x0
    // 0x6d5284: ldur            x5, [fp, #-0x18]
    // 0x6d5288: ldur            x6, [fp, #-8]
    // 0x6d528c: r2 = Instance_Icon
    //     0x6d528c: add             x2, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x6d5290: ldr             x2, [x2, #0x5b0]
    // 0x6d5294: r3 = Instance_Text
    //     0x6d5294: add             x3, PP, #0x19, lsl #12  ; [pp+0x196f8] Obj!Text@a1b221
    //     0x6d5298: ldr             x3, [x3, #0x6f8]
    // 0x6d529c: stur            x0, [fp, #-8]
    // 0x6d52a0: r0 = _ElevatedButtonWithIcon()
    //     0x6d52a0: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x6d52a4: r0 = EmptyStateWidget()
    //     0x6d52a4: bl              #0x6d5414  ; AllocateEmptyStateWidgetStub -> EmptyStateWidget (size=0x28)
    // 0x6d52a8: mov             x1, x0
    // 0x6d52ac: r0 = Instance_IconData
    //     0x6d52ac: add             x0, PP, #0x19, lsl #12  ; [pp+0x19700] Obj!IconData@a09ec1
    //     0x6d52b0: ldr             x0, [x0, #0x700]
    // 0x6d52b4: StoreField: r1->field_b = r0
    //     0x6d52b4: stur            w0, [x1, #0xb]
    // 0x6d52b8: r0 = "Henüz acenta eklenmemiş"
    //     0x6d52b8: add             x0, PP, #0x19, lsl #12  ; [pp+0x19708] "Henüz acenta eklenmemiş"
    //     0x6d52bc: ldr             x0, [x0, #0x708]
    // 0x6d52c0: StoreField: r1->field_f = r0
    //     0x6d52c0: stur            w0, [x1, #0xf]
    // 0x6d52c4: ldur            x0, [fp, #-8]
    // 0x6d52c8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6d52c8: stur            w0, [x1, #0x17]
    // 0x6d52cc: d0 = 64.000000
    //     0x6d52cc: add             x17, PP, #0x10, lsl #12  ; [pp+0x10e90] IMM: double(64) from 0x4050000000000000
    //     0x6d52d0: ldr             d0, [x17, #0xe90]
    // 0x6d52d4: StoreField: r1->field_1f = d0
    //     0x6d52d4: stur            d0, [x1, #0x1f]
    // 0x6d52d8: mov             x0, x1
    // 0x6d52dc: LeaveFrame
    //     0x6d52dc: mov             SP, fp
    //     0x6d52e0: ldp             fp, lr, [SP], #0x10
    // 0x6d52e4: ret
    //     0x6d52e4: ret             
    // 0x6d52e8: ldur            x2, [fp, #-0x10]
    // 0x6d52ec: LoadField: r0 = r2->field_13
    //     0x6d52ec: ldur            w0, [x2, #0x13]
    // 0x6d52f0: DecompressPointer r0
    //     0x6d52f0: add             x0, x0, HEAP, lsl #32
    // 0x6d52f4: LoadField: r1 = r0->field_2f
    //     0x6d52f4: ldur            w1, [x0, #0x2f]
    // 0x6d52f8: DecompressPointer r1
    //     0x6d52f8: add             x1, x1, HEAP, lsl #32
    // 0x6d52fc: r0 = LoadClassIdInstr(r1)
    //     0x6d52fc: ldur            x0, [x1, #-1]
    //     0x6d5300: ubfx            x0, x0, #0xc, #0x14
    // 0x6d5304: str             x1, [SP]
    // 0x6d5308: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6d5308: mov             x17, #0x879f
    //     0x6d530c: add             lr, x0, x17
    //     0x6d5310: ldr             lr, [x21, lr, lsl #3]
    //     0x6d5314: blr             lr
    // 0x6d5318: r3 = LoadInt32Instr(r0)
    //     0x6d5318: sbfx            x3, x0, #1, #0x1f
    // 0x6d531c: ldur            x2, [fp, #-0x10]
    // 0x6d5320: stur            x3, [fp, #-0x20]
    // 0x6d5324: r1 = Function '<anonymous closure>':.
    //     0x6d5324: add             x1, PP, #0x19, lsl #12  ; [pp+0x19710] AnonymousClosure: (0x6d6230), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d5328: ldr             x1, [x1, #0x710]
    // 0x6d532c: r0 = AllocateClosure()
    //     0x6d532c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d5330: stur            x0, [fp, #-8]
    // 0x6d5334: r0 = ListView()
    //     0x6d5334: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6d5338: stur            x0, [fp, #-0x10]
    // 0x6d533c: r16 = Instance_EdgeInsets
    //     0x6d533c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6d5340: ldr             x16, [x16, #0x240]
    // 0x6d5344: str             x16, [SP]
    // 0x6d5348: mov             x1, x0
    // 0x6d534c: ldur            x2, [fp, #-8]
    // 0x6d5350: ldur            x3, [fp, #-0x20]
    // 0x6d5354: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x6d5354: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x6d5358: ldr             x4, [x4, #0xe60]
    // 0x6d535c: r0 = ListView.builder()
    //     0x6d535c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6d5360: ldur            x0, [fp, #-0x10]
    // 0x6d5364: LeaveFrame
    //     0x6d5364: mov             SP, fp
    //     0x6d5368: ldp             fp, lr, [SP], #0x10
    // 0x6d536c: ret
    //     0x6d536c: ret             
    // 0x6d5370: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d5370: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d5374: b               #0x6d51dc
  }
  [closure] AgencyCard <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6d6230, size: 0x100
    // 0x6d6230: EnterFrame
    //     0x6d6230: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6234: mov             fp, SP
    // 0x6d6238: AllocStack(0x28)
    //     0x6d6238: sub             SP, SP, #0x28
    // 0x6d623c: SetupParameters([dynamic _ /* r0 */])
    //     0x6d623c: ldr             x0, [fp, #0x20]
    //     0x6d6240: ldur            w1, [x0, #0x17]
    //     0x6d6244: add             x1, x1, HEAP, lsl #32
    //     0x6d6248: stur            x1, [fp, #-8]
    // 0x6d624c: CheckStackOverflow
    //     0x6d624c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6250: cmp             SP, x16
    //     0x6d6254: b.ls            #0x6d6328
    // 0x6d6258: r1 = 2
    //     0x6d6258: mov             x1, #2
    // 0x6d625c: r0 = AllocateContext()
    //     0x6d625c: bl              #0x927010  ; AllocateContextStub
    // 0x6d6260: mov             x1, x0
    // 0x6d6264: ldur            x0, [fp, #-8]
    // 0x6d6268: stur            x1, [fp, #-0x10]
    // 0x6d626c: StoreField: r1->field_b = r0
    //     0x6d626c: stur            w0, [x1, #0xb]
    // 0x6d6270: ldr             x2, [fp, #0x18]
    // 0x6d6274: StoreField: r1->field_f = r2
    //     0x6d6274: stur            w2, [x1, #0xf]
    // 0x6d6278: LoadField: r2 = r0->field_13
    //     0x6d6278: ldur            w2, [x0, #0x13]
    // 0x6d627c: DecompressPointer r2
    //     0x6d627c: add             x2, x2, HEAP, lsl #32
    // 0x6d6280: LoadField: r0 = r2->field_2f
    //     0x6d6280: ldur            w0, [x2, #0x2f]
    // 0x6d6284: DecompressPointer r0
    //     0x6d6284: add             x0, x0, HEAP, lsl #32
    // 0x6d6288: r2 = LoadClassIdInstr(r0)
    //     0x6d6288: ldur            x2, [x0, #-1]
    //     0x6d628c: ubfx            x2, x2, #0xc, #0x14
    // 0x6d6290: ldr             x16, [fp, #0x10]
    // 0x6d6294: stp             x16, x0, [SP]
    // 0x6d6298: mov             x0, x2
    // 0x6d629c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6d629c: sub             lr, x0, #0xdfc
    //     0x6d62a0: ldr             lr, [x21, lr, lsl #3]
    //     0x6d62a4: blr             lr
    // 0x6d62a8: mov             x1, x0
    // 0x6d62ac: ldur            x2, [fp, #-0x10]
    // 0x6d62b0: stur            x1, [fp, #-8]
    // 0x6d62b4: StoreField: r2->field_13 = r0
    //     0x6d62b4: stur            w0, [x2, #0x13]
    //     0x6d62b8: ldurb           w16, [x2, #-1]
    //     0x6d62bc: ldurb           w17, [x0, #-1]
    //     0x6d62c0: and             x16, x17, x16, lsr #2
    //     0x6d62c4: tst             x16, HEAP, lsr #32
    //     0x6d62c8: b.eq            #0x6d62d0
    //     0x6d62cc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d62d0: r0 = AgencyCard()
    //     0x6d62d0: bl              #0x6d6330  ; AllocateAgencyCardStub -> AgencyCard (size=0x1c)
    // 0x6d62d4: mov             x3, x0
    // 0x6d62d8: ldur            x0, [fp, #-8]
    // 0x6d62dc: stur            x3, [fp, #-0x18]
    // 0x6d62e0: StoreField: r3->field_b = r0
    //     0x6d62e0: stur            w0, [x3, #0xb]
    // 0x6d62e4: ldur            x2, [fp, #-0x10]
    // 0x6d62e8: r1 = Function '<anonymous closure>':.
    //     0x6d62e8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19718] AnonymousClosure: (0x6d7ac8), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d62ec: ldr             x1, [x1, #0x718]
    // 0x6d62f0: r0 = AllocateClosure()
    //     0x6d62f0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d62f4: mov             x1, x0
    // 0x6d62f8: ldur            x0, [fp, #-0x18]
    // 0x6d62fc: StoreField: r0->field_f = r1
    //     0x6d62fc: stur            w1, [x0, #0xf]
    // 0x6d6300: ldur            x2, [fp, #-0x10]
    // 0x6d6304: r1 = Function '<anonymous closure>':.
    //     0x6d6304: add             x1, PP, #0x19, lsl #12  ; [pp+0x19720] AnonymousClosure: (0x6d633c), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::build (0x6d502c)
    //     0x6d6308: ldr             x1, [x1, #0x720]
    // 0x6d630c: r0 = AllocateClosure()
    //     0x6d630c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d6310: mov             x1, x0
    // 0x6d6314: ldur            x0, [fp, #-0x18]
    // 0x6d6318: StoreField: r0->field_13 = r1
    //     0x6d6318: stur            w1, [x0, #0x13]
    // 0x6d631c: LeaveFrame
    //     0x6d631c: mov             SP, fp
    //     0x6d6320: ldp             fp, lr, [SP], #0x10
    // 0x6d6324: ret
    //     0x6d6324: ret             
    // 0x6d6328: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d6328: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d632c: b               #0x6d6258
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d633c, size: 0x68
    // 0x6d633c: EnterFrame
    //     0x6d633c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6340: mov             fp, SP
    // 0x6d6344: ldr             x0, [fp, #0x10]
    // 0x6d6348: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d6348: ldur            w1, [x0, #0x17]
    // 0x6d634c: DecompressPointer r1
    //     0x6d634c: add             x1, x1, HEAP, lsl #32
    // 0x6d6350: CheckStackOverflow
    //     0x6d6350: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6354: cmp             SP, x16
    //     0x6d6358: b.ls            #0x6d639c
    // 0x6d635c: LoadField: r0 = r1->field_b
    //     0x6d635c: ldur            w0, [x1, #0xb]
    // 0x6d6360: DecompressPointer r0
    //     0x6d6360: add             x0, x0, HEAP, lsl #32
    // 0x6d6364: LoadField: r2 = r0->field_b
    //     0x6d6364: ldur            w2, [x0, #0xb]
    // 0x6d6368: DecompressPointer r2
    //     0x6d6368: add             x2, x2, HEAP, lsl #32
    // 0x6d636c: LoadField: r0 = r2->field_f
    //     0x6d636c: ldur            w0, [x2, #0xf]
    // 0x6d6370: DecompressPointer r0
    //     0x6d6370: add             x0, x0, HEAP, lsl #32
    // 0x6d6374: LoadField: r2 = r1->field_f
    //     0x6d6374: ldur            w2, [x1, #0xf]
    // 0x6d6378: DecompressPointer r2
    //     0x6d6378: add             x2, x2, HEAP, lsl #32
    // 0x6d637c: LoadField: r3 = r1->field_13
    //     0x6d637c: ldur            w3, [x1, #0x13]
    // 0x6d6380: DecompressPointer r3
    //     0x6d6380: add             x3, x3, HEAP, lsl #32
    // 0x6d6384: mov             x1, x0
    // 0x6d6388: r0 = _confirmDelete()
    //     0x6d6388: bl              #0x6d63a4  ; [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_confirmDelete
    // 0x6d638c: r0 = Null
    //     0x6d638c: mov             x0, NULL
    // 0x6d6390: LeaveFrame
    //     0x6d6390: mov             SP, fp
    //     0x6d6394: ldp             fp, lr, [SP], #0x10
    // 0x6d6398: ret
    //     0x6d6398: ret             
    // 0x6d639c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d639c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d63a0: b               #0x6d635c
  }
  _ _confirmDelete(/* No info */) {
    // ** addr: 0x6d63a4, size: 0x70
    // 0x6d63a4: EnterFrame
    //     0x6d63a4: stp             fp, lr, [SP, #-0x10]!
    //     0x6d63a8: mov             fp, SP
    // 0x6d63ac: AllocStack(0x28)
    //     0x6d63ac: sub             SP, SP, #0x28
    // 0x6d63b0: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x6d63b0: stur            x2, [fp, #-8]
    //     0x6d63b4: stur            x3, [fp, #-0x10]
    // 0x6d63b8: CheckStackOverflow
    //     0x6d63b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d63bc: cmp             SP, x16
    //     0x6d63c0: b.ls            #0x6d640c
    // 0x6d63c4: r1 = 1
    //     0x6d63c4: mov             x1, #1
    // 0x6d63c8: r0 = AllocateContext()
    //     0x6d63c8: bl              #0x927010  ; AllocateContextStub
    // 0x6d63cc: mov             x1, x0
    // 0x6d63d0: ldur            x0, [fp, #-0x10]
    // 0x6d63d4: StoreField: r1->field_f = r0
    //     0x6d63d4: stur            w0, [x1, #0xf]
    // 0x6d63d8: mov             x2, x1
    // 0x6d63dc: r1 = Function '<anonymous closure>':.
    //     0x6d63dc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19728] AnonymousClosure: (0x6d6414), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_confirmDelete (0x6d63a4)
    //     0x6d63e0: ldr             x1, [x1, #0x728]
    // 0x6d63e4: r0 = AllocateClosure()
    //     0x6d63e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d63e8: stp             x0, NULL, [SP, #8]
    // 0x6d63ec: ldur            x16, [fp, #-8]
    // 0x6d63f0: str             x16, [SP]
    // 0x6d63f4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d63f4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d63f8: r0 = showDialog()
    //     0x6d63f8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6d63fc: r0 = Null
    //     0x6d63fc: mov             x0, NULL
    // 0x6d6400: LeaveFrame
    //     0x6d6400: mov             SP, fp
    //     0x6d6404: ldp             fp, lr, [SP], #0x10
    // 0x6d6408: ret
    //     0x6d6408: ret             
    // 0x6d640c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d640c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d6410: b               #0x6d63c4
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6d6414, size: 0x198
    // 0x6d6414: EnterFrame
    //     0x6d6414: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6418: mov             fp, SP
    // 0x6d641c: AllocStack(0x28)
    //     0x6d641c: sub             SP, SP, #0x28
    // 0x6d6420: SetupParameters([dynamic _ /* r0 */])
    //     0x6d6420: ldr             x0, [fp, #0x18]
    //     0x6d6424: ldur            w1, [x0, #0x17]
    //     0x6d6428: add             x1, x1, HEAP, lsl #32
    //     0x6d642c: stur            x1, [fp, #-8]
    // 0x6d6430: CheckStackOverflow
    //     0x6d6430: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6434: cmp             SP, x16
    //     0x6d6438: b.ls            #0x6d65a4
    // 0x6d643c: r1 = 1
    //     0x6d643c: mov             x1, #1
    // 0x6d6440: r0 = AllocateContext()
    //     0x6d6440: bl              #0x927010  ; AllocateContextStub
    // 0x6d6444: mov             x3, x0
    // 0x6d6448: ldur            x0, [fp, #-8]
    // 0x6d644c: stur            x3, [fp, #-0x10]
    // 0x6d6450: StoreField: r3->field_b = r0
    //     0x6d6450: stur            w0, [x3, #0xb]
    // 0x6d6454: ldr             x1, [fp, #0x10]
    // 0x6d6458: StoreField: r3->field_f = r1
    //     0x6d6458: stur            w1, [x3, #0xf]
    // 0x6d645c: r1 = Null
    //     0x6d645c: mov             x1, NULL
    // 0x6d6460: r2 = 6
    //     0x6d6460: mov             x2, #6
    // 0x6d6464: r0 = AllocateArray()
    //     0x6d6464: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d6468: r16 = "\""
    //     0x6d6468: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x6d646c: ldr             x16, [x16, #0x40]
    // 0x6d6470: StoreField: r0->field_f = r16
    //     0x6d6470: stur            w16, [x0, #0xf]
    // 0x6d6474: ldur            x1, [fp, #-8]
    // 0x6d6478: LoadField: r2 = r1->field_f
    //     0x6d6478: ldur            w2, [x1, #0xf]
    // 0x6d647c: DecompressPointer r2
    //     0x6d647c: add             x2, x2, HEAP, lsl #32
    // 0x6d6480: LoadField: r1 = r2->field_b
    //     0x6d6480: ldur            w1, [x2, #0xb]
    // 0x6d6484: DecompressPointer r1
    //     0x6d6484: add             x1, x1, HEAP, lsl #32
    // 0x6d6488: StoreField: r0->field_13 = r1
    //     0x6d6488: stur            w1, [x0, #0x13]
    // 0x6d648c: r16 = "\" acentasını silmek istediğinize emin misiniz\?\n\nBu işlem geri alınamaz ve acentaya bağlı veriler etkilenebilir."
    //     0x6d648c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19730] "\" acentasını silmek istediğinize emin misiniz\?\n\nBu işlem geri alınamaz ve acentaya bağlı veriler etkilenebilir."
    //     0x6d6490: ldr             x16, [x16, #0x730]
    // 0x6d6494: ArrayStore: r0[0] = r16  ; List_4
    //     0x6d6494: stur            w16, [x0, #0x17]
    // 0x6d6498: str             x0, [SP]
    // 0x6d649c: r0 = _interpolate()
    //     0x6d649c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6d64a0: stur            x0, [fp, #-8]
    // 0x6d64a4: r0 = Text()
    //     0x6d64a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d64a8: mov             x3, x0
    // 0x6d64ac: ldur            x0, [fp, #-8]
    // 0x6d64b0: stur            x3, [fp, #-0x18]
    // 0x6d64b4: StoreField: r3->field_b = r0
    //     0x6d64b4: stur            w0, [x3, #0xb]
    // 0x6d64b8: ldur            x2, [fp, #-0x10]
    // 0x6d64bc: r1 = Function '<anonymous closure>':.
    //     0x6d64bc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19738] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6d64c0: ldr             x1, [x1, #0x738]
    // 0x6d64c4: r0 = AllocateClosure()
    //     0x6d64c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d64c8: stur            x0, [fp, #-8]
    // 0x6d64cc: r0 = TextButton()
    //     0x6d64cc: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6d64d0: mov             x3, x0
    // 0x6d64d4: ldur            x0, [fp, #-8]
    // 0x6d64d8: stur            x3, [fp, #-0x20]
    // 0x6d64dc: StoreField: r3->field_b = r0
    //     0x6d64dc: stur            w0, [x3, #0xb]
    // 0x6d64e0: r0 = false
    //     0x6d64e0: add             x0, NULL, #0x30  ; false
    // 0x6d64e4: StoreField: r3->field_27 = r0
    //     0x6d64e4: stur            w0, [x3, #0x27]
    // 0x6d64e8: r1 = true
    //     0x6d64e8: add             x1, NULL, #0x20  ; true
    // 0x6d64ec: StoreField: r3->field_2f = r1
    //     0x6d64ec: stur            w1, [x3, #0x2f]
    // 0x6d64f0: r1 = Instance_Text
    //     0x6d64f0: add             x1, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x6d64f4: ldr             x1, [x1, #0x7d0]
    // 0x6d64f8: StoreField: r3->field_37 = r1
    //     0x6d64f8: stur            w1, [x3, #0x37]
    // 0x6d64fc: ldur            x2, [fp, #-0x10]
    // 0x6d6500: r1 = Function '<anonymous closure>':.
    //     0x6d6500: add             x1, PP, #0x19, lsl #12  ; [pp+0x19740] AnonymousClosure: (0x6d65ac), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_confirmDelete (0x6d63a4)
    //     0x6d6504: ldr             x1, [x1, #0x740]
    // 0x6d6508: r0 = AllocateClosure()
    //     0x6d6508: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d650c: r1 = <AgencyProvider>
    //     0x6d650c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6d6510: ldr             x1, [x1, #0xb60]
    // 0x6d6514: stur            x0, [fp, #-8]
    // 0x6d6518: r0 = Consumer()
    //     0x6d6518: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6d651c: mov             x3, x0
    // 0x6d6520: ldur            x0, [fp, #-8]
    // 0x6d6524: stur            x3, [fp, #-0x10]
    // 0x6d6528: StoreField: r3->field_13 = r0
    //     0x6d6528: stur            w0, [x3, #0x13]
    // 0x6d652c: r1 = Null
    //     0x6d652c: mov             x1, NULL
    // 0x6d6530: r2 = 4
    //     0x6d6530: mov             x2, #4
    // 0x6d6534: r0 = AllocateArray()
    //     0x6d6534: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d6538: mov             x2, x0
    // 0x6d653c: ldur            x0, [fp, #-0x20]
    // 0x6d6540: stur            x2, [fp, #-8]
    // 0x6d6544: StoreField: r2->field_f = r0
    //     0x6d6544: stur            w0, [x2, #0xf]
    // 0x6d6548: ldur            x0, [fp, #-0x10]
    // 0x6d654c: StoreField: r2->field_13 = r0
    //     0x6d654c: stur            w0, [x2, #0x13]
    // 0x6d6550: r1 = <Widget>
    //     0x6d6550: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d6554: r0 = AllocateGrowableArray()
    //     0x6d6554: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d6558: mov             x1, x0
    // 0x6d655c: ldur            x0, [fp, #-8]
    // 0x6d6560: stur            x1, [fp, #-0x10]
    // 0x6d6564: StoreField: r1->field_f = r0
    //     0x6d6564: stur            w0, [x1, #0xf]
    // 0x6d6568: r0 = 4
    //     0x6d6568: mov             x0, #4
    // 0x6d656c: StoreField: r1->field_b = r0
    //     0x6d656c: stur            w0, [x1, #0xb]
    // 0x6d6570: r0 = AlertDialog()
    //     0x6d6570: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6d6574: r1 = Instance_Text
    //     0x6d6574: add             x1, PP, #0x19, lsl #12  ; [pp+0x19748] Obj!Text@a1b181
    //     0x6d6578: ldr             x1, [x1, #0x748]
    // 0x6d657c: StoreField: r0->field_f = r1
    //     0x6d657c: stur            w1, [x0, #0xf]
    // 0x6d6580: ldur            x1, [fp, #-0x18]
    // 0x6d6584: StoreField: r0->field_1b = r1
    //     0x6d6584: stur            w1, [x0, #0x1b]
    // 0x6d6588: ldur            x1, [fp, #-0x10]
    // 0x6d658c: StoreField: r0->field_27 = r1
    //     0x6d658c: stur            w1, [x0, #0x27]
    // 0x6d6590: r1 = false
    //     0x6d6590: add             x1, NULL, #0x30  ; false
    // 0x6d6594: StoreField: r0->field_6b = r1
    //     0x6d6594: stur            w1, [x0, #0x6b]
    // 0x6d6598: LeaveFrame
    //     0x6d6598: mov             SP, fp
    //     0x6d659c: ldp             fp, lr, [SP], #0x10
    // 0x6d65a0: ret
    //     0x6d65a0: ret             
    // 0x6d65a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d65a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d65a8: b               #0x6d643c
  }
  [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6d65ac, size: 0x114
    // 0x6d65ac: EnterFrame
    //     0x6d65ac: stp             fp, lr, [SP, #-0x10]!
    //     0x6d65b0: mov             fp, SP
    // 0x6d65b4: AllocStack(0x28)
    //     0x6d65b4: sub             SP, SP, #0x28
    // 0x6d65b8: SetupParameters([dynamic _ /* r0 */])
    //     0x6d65b8: ldr             x0, [fp, #0x28]
    //     0x6d65bc: ldur            w1, [x0, #0x17]
    //     0x6d65c0: add             x1, x1, HEAP, lsl #32
    //     0x6d65c4: stur            x1, [fp, #-8]
    // 0x6d65c8: CheckStackOverflow
    //     0x6d65c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d65cc: cmp             SP, x16
    //     0x6d65d0: b.ls            #0x6d66b8
    // 0x6d65d4: r1 = 1
    //     0x6d65d4: mov             x1, #1
    // 0x6d65d8: r0 = AllocateContext()
    //     0x6d65d8: bl              #0x927010  ; AllocateContextStub
    // 0x6d65dc: mov             x3, x0
    // 0x6d65e0: ldur            x0, [fp, #-8]
    // 0x6d65e4: stur            x3, [fp, #-0x10]
    // 0x6d65e8: StoreField: r3->field_b = r0
    //     0x6d65e8: stur            w0, [x3, #0xb]
    // 0x6d65ec: ldr             x0, [fp, #0x18]
    // 0x6d65f0: StoreField: r3->field_f = r0
    //     0x6d65f0: stur            w0, [x3, #0xf]
    // 0x6d65f4: LoadField: r1 = r0->field_2b
    //     0x6d65f4: ldur            w1, [x0, #0x2b]
    // 0x6d65f8: DecompressPointer r1
    //     0x6d65f8: add             x1, x1, HEAP, lsl #32
    // 0x6d65fc: tbnz            w1, #4, #0x6d660c
    // 0x6d6600: mov             x0, x3
    // 0x6d6604: r1 = Null
    //     0x6d6604: mov             x1, NULL
    // 0x6d6608: b               #0x6d6624
    // 0x6d660c: mov             x2, x3
    // 0x6d6610: r1 = Function '<anonymous closure>':.
    //     0x6d6610: add             x1, PP, #0x19, lsl #12  ; [pp+0x19750] AnonymousClosure: (0x6d66c0), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_confirmDelete (0x6d63a4)
    //     0x6d6614: ldr             x1, [x1, #0x750]
    // 0x6d6618: r0 = AllocateClosure()
    //     0x6d6618: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d661c: mov             x1, x0
    // 0x6d6620: ldur            x0, [fp, #-0x10]
    // 0x6d6624: stur            x1, [fp, #-8]
    // 0x6d6628: r16 = Instance_MaterialColor
    //     0x6d6628: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x6d662c: ldr             x16, [x16, #0xb90]
    // 0x6d6630: r30 = Instance_Color
    //     0x6d6630: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d6634: stp             lr, x16, [SP]
    // 0x6d6638: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6d6638: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6d663c: ldr             x4, [x4, #0x1a8]
    // 0x6d6640: r0 = styleFrom()
    //     0x6d6640: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6d6644: mov             x1, x0
    // 0x6d6648: ldur            x0, [fp, #-0x10]
    // 0x6d664c: stur            x1, [fp, #-0x18]
    // 0x6d6650: LoadField: r2 = r0->field_f
    //     0x6d6650: ldur            w2, [x0, #0xf]
    // 0x6d6654: DecompressPointer r2
    //     0x6d6654: add             x2, x2, HEAP, lsl #32
    // 0x6d6658: LoadField: r0 = r2->field_2b
    //     0x6d6658: ldur            w0, [x2, #0x2b]
    // 0x6d665c: DecompressPointer r0
    //     0x6d665c: add             x0, x0, HEAP, lsl #32
    // 0x6d6660: tbnz            w0, #4, #0x6d6670
    // 0x6d6664: r2 = Instance_SizedBox
    //     0x6d6664: add             x2, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6d6668: ldr             x2, [x2, #0x1b0]
    // 0x6d666c: b               #0x6d6678
    // 0x6d6670: r2 = Instance_Text
    //     0x6d6670: add             x2, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x6d6674: ldr             x2, [x2, #0x7e0]
    // 0x6d6678: ldur            x0, [fp, #-8]
    // 0x6d667c: stur            x2, [fp, #-0x10]
    // 0x6d6680: r0 = ElevatedButton()
    //     0x6d6680: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6d6684: ldur            x1, [fp, #-8]
    // 0x6d6688: StoreField: r0->field_b = r1
    //     0x6d6688: stur            w1, [x0, #0xb]
    // 0x6d668c: ldur            x1, [fp, #-0x18]
    // 0x6d6690: StoreField: r0->field_1b = r1
    //     0x6d6690: stur            w1, [x0, #0x1b]
    // 0x6d6694: r1 = false
    //     0x6d6694: add             x1, NULL, #0x30  ; false
    // 0x6d6698: StoreField: r0->field_27 = r1
    //     0x6d6698: stur            w1, [x0, #0x27]
    // 0x6d669c: r1 = true
    //     0x6d669c: add             x1, NULL, #0x20  ; true
    // 0x6d66a0: StoreField: r0->field_2f = r1
    //     0x6d66a0: stur            w1, [x0, #0x2f]
    // 0x6d66a4: ldur            x1, [fp, #-0x10]
    // 0x6d66a8: StoreField: r0->field_37 = r1
    //     0x6d66a8: stur            w1, [x0, #0x37]
    // 0x6d66ac: LeaveFrame
    //     0x6d66ac: mov             SP, fp
    //     0x6d66b0: ldp             fp, lr, [SP], #0x10
    // 0x6d66b4: ret
    //     0x6d66b4: ret             
    // 0x6d66b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d66b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d66bc: b               #0x6d65d4
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6d66c0, size: 0xc4
    // 0x6d66c0: EnterFrame
    //     0x6d66c0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d66c4: mov             fp, SP
    // 0x6d66c8: AllocStack(0x30)
    //     0x6d66c8: sub             SP, SP, #0x30
    // 0x6d66cc: SetupParameters(_AgenciesPageState this /* r1 */)
    //     0x6d66cc: stur            NULL, [fp, #-8]
    //     0x6d66d0: mov             x0, #0
    //     0x6d66d4: add             x1, fp, w0, sxtw #2
    //     0x6d66d8: ldr             x1, [x1, #0x10]
    //     0x6d66dc: ldur            w2, [x1, #0x17]
    //     0x6d66e0: add             x2, x2, HEAP, lsl #32
    //     0x6d66e4: stur            x2, [fp, #-0x10]
    // 0x6d66e8: CheckStackOverflow
    //     0x6d66e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d66ec: cmp             SP, x16
    //     0x6d66f0: b.ls            #0x6d677c
    // 0x6d66f4: InitAsync() -> Future<void?>
    //     0x6d66f4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d66f8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d66fc: ldur            x0, [fp, #-0x10]
    // 0x6d6700: LoadField: r1 = r0->field_f
    //     0x6d6700: ldur            w1, [x0, #0xf]
    // 0x6d6704: DecompressPointer r1
    //     0x6d6704: add             x1, x1, HEAP, lsl #32
    // 0x6d6708: LoadField: r3 = r0->field_b
    //     0x6d6708: ldur            w3, [x0, #0xb]
    // 0x6d670c: DecompressPointer r3
    //     0x6d670c: add             x3, x3, HEAP, lsl #32
    // 0x6d6710: stur            x3, [fp, #-0x18]
    // 0x6d6714: LoadField: r2 = r3->field_b
    //     0x6d6714: ldur            w2, [x3, #0xb]
    // 0x6d6718: DecompressPointer r2
    //     0x6d6718: add             x2, x2, HEAP, lsl #32
    // 0x6d671c: LoadField: r4 = r2->field_f
    //     0x6d671c: ldur            w4, [x2, #0xf]
    // 0x6d6720: DecompressPointer r4
    //     0x6d6720: add             x4, x4, HEAP, lsl #32
    // 0x6d6724: LoadField: r2 = r4->field_7
    //     0x6d6724: ldur            w2, [x4, #7]
    // 0x6d6728: DecompressPointer r2
    //     0x6d6728: add             x2, x2, HEAP, lsl #32
    // 0x6d672c: r0 = deleteAgency()
    //     0x6d672c: bl              #0x6d6784  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::deleteAgency
    // 0x6d6730: mov             x1, x0
    // 0x6d6734: stur            x1, [fp, #-0x20]
    // 0x6d6738: r0 = Await()
    //     0x6d6738: bl              #0x3dd188  ; AwaitStub
    // 0x6d673c: r16 = true
    //     0x6d673c: add             x16, NULL, #0x20  ; true
    // 0x6d6740: cmp             w0, w16
    // 0x6d6744: b.ne            #0x6d6774
    // 0x6d6748: ldur            x0, [fp, #-0x18]
    // 0x6d674c: LoadField: r1 = r0->field_f
    //     0x6d674c: ldur            w1, [x0, #0xf]
    // 0x6d6750: DecompressPointer r1
    //     0x6d6750: add             x1, x1, HEAP, lsl #32
    // 0x6d6754: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6d6754: ldur            w0, [x1, #0x17]
    // 0x6d6758: DecompressPointer r0
    //     0x6d6758: add             x0, x0, HEAP, lsl #32
    // 0x6d675c: cmp             w0, NULL
    // 0x6d6760: b.eq            #0x6d6774
    // 0x6d6764: r16 = <Object?>
    //     0x6d6764: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6d6768: stp             x1, x16, [SP]
    // 0x6d676c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d676c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d6770: r0 = pop()
    //     0x6d6770: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6d6774: r0 = Null
    //     0x6d6774: mov             x0, NULL
    // 0x6d6778: r0 = ReturnAsyncNotFuture()
    //     0x6d6778: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d677c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d677c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d6780: b               #0x6d66f4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d7ac8, size: 0x78
    // 0x6d7ac8: EnterFrame
    //     0x6d7ac8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d7acc: mov             fp, SP
    // 0x6d7ad0: AllocStack(0x8)
    //     0x6d7ad0: sub             SP, SP, #8
    // 0x6d7ad4: SetupParameters([dynamic _ /* r0 */])
    //     0x6d7ad4: ldr             x0, [fp, #0x10]
    //     0x6d7ad8: ldur            w1, [x0, #0x17]
    //     0x6d7adc: add             x1, x1, HEAP, lsl #32
    // 0x6d7ae0: CheckStackOverflow
    //     0x6d7ae0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d7ae4: cmp             SP, x16
    //     0x6d7ae8: b.ls            #0x6d7b38
    // 0x6d7aec: LoadField: r0 = r1->field_b
    //     0x6d7aec: ldur            w0, [x1, #0xb]
    // 0x6d7af0: DecompressPointer r0
    //     0x6d7af0: add             x0, x0, HEAP, lsl #32
    // 0x6d7af4: LoadField: r2 = r0->field_b
    //     0x6d7af4: ldur            w2, [x0, #0xb]
    // 0x6d7af8: DecompressPointer r2
    //     0x6d7af8: add             x2, x2, HEAP, lsl #32
    // 0x6d7afc: LoadField: r0 = r2->field_f
    //     0x6d7afc: ldur            w0, [x2, #0xf]
    // 0x6d7b00: DecompressPointer r0
    //     0x6d7b00: add             x0, x0, HEAP, lsl #32
    // 0x6d7b04: LoadField: r2 = r1->field_f
    //     0x6d7b04: ldur            w2, [x1, #0xf]
    // 0x6d7b08: DecompressPointer r2
    //     0x6d7b08: add             x2, x2, HEAP, lsl #32
    // 0x6d7b0c: LoadField: r3 = r1->field_13
    //     0x6d7b0c: ldur            w3, [x1, #0x13]
    // 0x6d7b10: DecompressPointer r3
    //     0x6d7b10: add             x3, x3, HEAP, lsl #32
    // 0x6d7b14: str             x3, [SP]
    // 0x6d7b18: mov             x1, x0
    // 0x6d7b1c: r4 = const [0, 0x3, 0x1, 0x2, agency, 0x2, null]
    //     0x6d7b1c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19778] List(7) [0, 0x3, 0x1, 0x2, "agency", 0x2, Null]
    //     0x6d7b20: ldr             x4, [x4, #0x778]
    // 0x6d7b24: r0 = _showAgencyDialog()
    //     0x6d7b24: bl              #0x6d7b40  ; [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog
    // 0x6d7b28: r0 = Null
    //     0x6d7b28: mov             x0, NULL
    // 0x6d7b2c: LeaveFrame
    //     0x6d7b2c: mov             SP, fp
    //     0x6d7b30: ldp             fp, lr, [SP], #0x10
    // 0x6d7b34: ret
    //     0x6d7b34: ret             
    // 0x6d7b38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7b38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7b3c: b               #0x6d7aec
  }
  _ _showAgencyDialog(/* No info */) {
    // ** addr: 0x6d7b40, size: 0x34c
    // 0x6d7b40: EnterFrame
    //     0x6d7b40: stp             fp, lr, [SP, #-0x10]!
    //     0x6d7b44: mov             fp, SP
    // 0x6d7b48: AllocStack(0x38)
    //     0x6d7b48: sub             SP, SP, #0x38
    // 0x6d7b4c: SetupParameters(dynamic _ /* r2 => r2, fp-0x10 */, {dynamic agency = Null /* r0, fp-0x8 */})
    //     0x6d7b4c: stur            x2, [fp, #-0x10]
    //     0x6d7b50: ldur            w0, [x4, #0x13]
    //     0x6d7b54: ldur            w1, [x4, #0x1f]
    //     0x6d7b58: add             x1, x1, HEAP, lsl #32
    //     0x6d7b5c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19780] "agency"
    //     0x6d7b60: ldr             x16, [x16, #0x780]
    //     0x6d7b64: cmp             w1, w16
    //     0x6d7b68: b.ne            #0x6d7b84
    //     0x6d7b6c: ldur            w1, [x4, #0x23]
    //     0x6d7b70: add             x1, x1, HEAP, lsl #32
    //     0x6d7b74: sub             w3, w0, w1
    //     0x6d7b78: add             x0, fp, w3, sxtw #2
    //     0x6d7b7c: ldr             x0, [x0, #8]
    //     0x6d7b80: b               #0x6d7b88
    //     0x6d7b84: mov             x0, NULL
    //     0x6d7b88: stur            x0, [fp, #-8]
    // 0x6d7b8c: CheckStackOverflow
    //     0x6d7b8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d7b90: cmp             SP, x16
    //     0x6d7b94: b.ls            #0x6d7e84
    // 0x6d7b98: r1 = 8
    //     0x6d7b98: mov             x1, #8
    // 0x6d7b9c: r0 = AllocateContext()
    //     0x6d7b9c: bl              #0x927010  ; AllocateContextStub
    // 0x6d7ba0: mov             x2, x0
    // 0x6d7ba4: ldur            x0, [fp, #-8]
    // 0x6d7ba8: stur            x2, [fp, #-0x18]
    // 0x6d7bac: StoreField: r2->field_f = r0
    //     0x6d7bac: stur            w0, [x2, #0xf]
    // 0x6d7bb0: cmp             w0, NULL
    // 0x6d7bb4: r16 = true
    //     0x6d7bb4: add             x16, NULL, #0x20  ; true
    // 0x6d7bb8: r17 = false
    //     0x6d7bb8: add             x17, NULL, #0x30  ; false
    // 0x6d7bbc: csel            x1, x16, x17, ne
    // 0x6d7bc0: StoreField: r2->field_13 = r1
    //     0x6d7bc0: stur            w1, [x2, #0x13]
    // 0x6d7bc4: cmp             w0, NULL
    // 0x6d7bc8: b.ne            #0x6d7bd4
    // 0x6d7bcc: r0 = Null
    //     0x6d7bcc: mov             x0, NULL
    // 0x6d7bd0: b               #0x6d7be0
    // 0x6d7bd4: LoadField: r1 = r0->field_b
    //     0x6d7bd4: ldur            w1, [x0, #0xb]
    // 0x6d7bd8: DecompressPointer r1
    //     0x6d7bd8: add             x1, x1, HEAP, lsl #32
    // 0x6d7bdc: mov             x0, x1
    // 0x6d7be0: cmp             w0, NULL
    // 0x6d7be4: b.ne            #0x6d7bec
    // 0x6d7be8: r0 = ""
    //     0x6d7be8: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d7bec: stur            x0, [fp, #-8]
    // 0x6d7bf0: r1 = <TextEditingValue>
    //     0x6d7bf0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d7bf4: r0 = TextEditingController()
    //     0x6d7bf4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d7bf8: stur            x0, [fp, #-0x20]
    // 0x6d7bfc: ldur            x16, [fp, #-8]
    // 0x6d7c00: str             x16, [SP]
    // 0x6d7c04: mov             x1, x0
    // 0x6d7c08: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d7c08: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d7c0c: ldr             x4, [x4, #0xa20]
    // 0x6d7c10: r0 = TextEditingController()
    //     0x6d7c10: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d7c14: ldur            x0, [fp, #-0x20]
    // 0x6d7c18: ldur            x2, [fp, #-0x18]
    // 0x6d7c1c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d7c1c: stur            w0, [x2, #0x17]
    //     0x6d7c20: ldurb           w16, [x2, #-1]
    //     0x6d7c24: ldurb           w17, [x0, #-1]
    //     0x6d7c28: and             x16, x17, x16, lsr #2
    //     0x6d7c2c: tst             x16, HEAP, lsr #32
    //     0x6d7c30: b.eq            #0x6d7c38
    //     0x6d7c34: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7c38: LoadField: r0 = r2->field_f
    //     0x6d7c38: ldur            w0, [x2, #0xf]
    // 0x6d7c3c: DecompressPointer r0
    //     0x6d7c3c: add             x0, x0, HEAP, lsl #32
    // 0x6d7c40: cmp             w0, NULL
    // 0x6d7c44: b.ne            #0x6d7c50
    // 0x6d7c48: r0 = Null
    //     0x6d7c48: mov             x0, NULL
    // 0x6d7c4c: b               #0x6d7c5c
    // 0x6d7c50: LoadField: r1 = r0->field_f
    //     0x6d7c50: ldur            w1, [x0, #0xf]
    // 0x6d7c54: DecompressPointer r1
    //     0x6d7c54: add             x1, x1, HEAP, lsl #32
    // 0x6d7c58: mov             x0, x1
    // 0x6d7c5c: cmp             w0, NULL
    // 0x6d7c60: b.ne            #0x6d7c68
    // 0x6d7c64: r0 = ""
    //     0x6d7c64: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d7c68: stur            x0, [fp, #-8]
    // 0x6d7c6c: r1 = <TextEditingValue>
    //     0x6d7c6c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d7c70: r0 = TextEditingController()
    //     0x6d7c70: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d7c74: stur            x0, [fp, #-0x20]
    // 0x6d7c78: ldur            x16, [fp, #-8]
    // 0x6d7c7c: str             x16, [SP]
    // 0x6d7c80: mov             x1, x0
    // 0x6d7c84: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d7c84: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d7c88: ldr             x4, [x4, #0xa20]
    // 0x6d7c8c: r0 = TextEditingController()
    //     0x6d7c8c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d7c90: ldur            x0, [fp, #-0x20]
    // 0x6d7c94: ldur            x2, [fp, #-0x18]
    // 0x6d7c98: StoreField: r2->field_1b = r0
    //     0x6d7c98: stur            w0, [x2, #0x1b]
    //     0x6d7c9c: ldurb           w16, [x2, #-1]
    //     0x6d7ca0: ldurb           w17, [x0, #-1]
    //     0x6d7ca4: and             x16, x17, x16, lsr #2
    //     0x6d7ca8: tst             x16, HEAP, lsr #32
    //     0x6d7cac: b.eq            #0x6d7cb4
    //     0x6d7cb0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7cb4: LoadField: r0 = r2->field_f
    //     0x6d7cb4: ldur            w0, [x2, #0xf]
    // 0x6d7cb8: DecompressPointer r0
    //     0x6d7cb8: add             x0, x0, HEAP, lsl #32
    // 0x6d7cbc: cmp             w0, NULL
    // 0x6d7cc0: b.ne            #0x6d7ccc
    // 0x6d7cc4: r0 = Null
    //     0x6d7cc4: mov             x0, NULL
    // 0x6d7cc8: b               #0x6d7cd8
    // 0x6d7ccc: LoadField: r1 = r0->field_13
    //     0x6d7ccc: ldur            w1, [x0, #0x13]
    // 0x6d7cd0: DecompressPointer r1
    //     0x6d7cd0: add             x1, x1, HEAP, lsl #32
    // 0x6d7cd4: mov             x0, x1
    // 0x6d7cd8: cmp             w0, NULL
    // 0x6d7cdc: b.ne            #0x6d7ce4
    // 0x6d7ce0: r0 = ""
    //     0x6d7ce0: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d7ce4: stur            x0, [fp, #-8]
    // 0x6d7ce8: r1 = <TextEditingValue>
    //     0x6d7ce8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d7cec: r0 = TextEditingController()
    //     0x6d7cec: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d7cf0: stur            x0, [fp, #-0x20]
    // 0x6d7cf4: ldur            x16, [fp, #-8]
    // 0x6d7cf8: str             x16, [SP]
    // 0x6d7cfc: mov             x1, x0
    // 0x6d7d00: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d7d00: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d7d04: ldr             x4, [x4, #0xa20]
    // 0x6d7d08: r0 = TextEditingController()
    //     0x6d7d08: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d7d0c: ldur            x0, [fp, #-0x20]
    // 0x6d7d10: ldur            x2, [fp, #-0x18]
    // 0x6d7d14: StoreField: r2->field_1f = r0
    //     0x6d7d14: stur            w0, [x2, #0x1f]
    //     0x6d7d18: ldurb           w16, [x2, #-1]
    //     0x6d7d1c: ldurb           w17, [x0, #-1]
    //     0x6d7d20: and             x16, x17, x16, lsr #2
    //     0x6d7d24: tst             x16, HEAP, lsr #32
    //     0x6d7d28: b.eq            #0x6d7d30
    //     0x6d7d2c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7d30: LoadField: r0 = r2->field_f
    //     0x6d7d30: ldur            w0, [x2, #0xf]
    // 0x6d7d34: DecompressPointer r0
    //     0x6d7d34: add             x0, x0, HEAP, lsl #32
    // 0x6d7d38: cmp             w0, NULL
    // 0x6d7d3c: b.ne            #0x6d7d48
    // 0x6d7d40: r0 = Null
    //     0x6d7d40: mov             x0, NULL
    // 0x6d7d44: b               #0x6d7d54
    // 0x6d7d48: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d7d48: ldur            w1, [x0, #0x17]
    // 0x6d7d4c: DecompressPointer r1
    //     0x6d7d4c: add             x1, x1, HEAP, lsl #32
    // 0x6d7d50: mov             x0, x1
    // 0x6d7d54: cmp             w0, NULL
    // 0x6d7d58: b.ne            #0x6d7d60
    // 0x6d7d5c: r0 = ""
    //     0x6d7d5c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d7d60: stur            x0, [fp, #-8]
    // 0x6d7d64: r1 = <TextEditingValue>
    //     0x6d7d64: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d7d68: r0 = TextEditingController()
    //     0x6d7d68: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d7d6c: stur            x0, [fp, #-0x20]
    // 0x6d7d70: ldur            x16, [fp, #-8]
    // 0x6d7d74: str             x16, [SP]
    // 0x6d7d78: mov             x1, x0
    // 0x6d7d7c: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d7d7c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d7d80: ldr             x4, [x4, #0xa20]
    // 0x6d7d84: r0 = TextEditingController()
    //     0x6d7d84: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d7d88: ldur            x0, [fp, #-0x20]
    // 0x6d7d8c: ldur            x2, [fp, #-0x18]
    // 0x6d7d90: StoreField: r2->field_23 = r0
    //     0x6d7d90: stur            w0, [x2, #0x23]
    //     0x6d7d94: ldurb           w16, [x2, #-1]
    //     0x6d7d98: ldurb           w17, [x0, #-1]
    //     0x6d7d9c: and             x16, x17, x16, lsr #2
    //     0x6d7da0: tst             x16, HEAP, lsr #32
    //     0x6d7da4: b.eq            #0x6d7dac
    //     0x6d7da8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7dac: LoadField: r0 = r2->field_f
    //     0x6d7dac: ldur            w0, [x2, #0xf]
    // 0x6d7db0: DecompressPointer r0
    //     0x6d7db0: add             x0, x0, HEAP, lsl #32
    // 0x6d7db4: cmp             w0, NULL
    // 0x6d7db8: b.ne            #0x6d7dc4
    // 0x6d7dbc: r0 = Null
    //     0x6d7dbc: mov             x0, NULL
    // 0x6d7dc0: b               #0x6d7dd0
    // 0x6d7dc4: LoadField: r1 = r0->field_1b
    //     0x6d7dc4: ldur            w1, [x0, #0x1b]
    // 0x6d7dc8: DecompressPointer r1
    //     0x6d7dc8: add             x1, x1, HEAP, lsl #32
    // 0x6d7dcc: mov             x0, x1
    // 0x6d7dd0: cmp             w0, NULL
    // 0x6d7dd4: b.ne            #0x6d7ddc
    // 0x6d7dd8: r0 = ""
    //     0x6d7dd8: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d7ddc: stur            x0, [fp, #-8]
    // 0x6d7de0: r1 = <TextEditingValue>
    //     0x6d7de0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d7de4: r0 = TextEditingController()
    //     0x6d7de4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d7de8: stur            x0, [fp, #-0x20]
    // 0x6d7dec: ldur            x16, [fp, #-8]
    // 0x6d7df0: str             x16, [SP]
    // 0x6d7df4: mov             x1, x0
    // 0x6d7df8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d7df8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d7dfc: ldr             x4, [x4, #0xa20]
    // 0x6d7e00: r0 = TextEditingController()
    //     0x6d7e00: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d7e04: ldur            x0, [fp, #-0x20]
    // 0x6d7e08: ldur            x2, [fp, #-0x18]
    // 0x6d7e0c: StoreField: r2->field_27 = r0
    //     0x6d7e0c: stur            w0, [x2, #0x27]
    //     0x6d7e10: ldurb           w16, [x2, #-1]
    //     0x6d7e14: ldurb           w17, [x0, #-1]
    //     0x6d7e18: and             x16, x17, x16, lsr #2
    //     0x6d7e1c: tst             x16, HEAP, lsr #32
    //     0x6d7e20: b.eq            #0x6d7e28
    //     0x6d7e24: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7e28: r1 = <FormState>
    //     0x6d7e28: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x6d7e2c: ldr             x1, [x1, #0x590]
    // 0x6d7e30: r0 = LabeledGlobalKey()
    //     0x6d7e30: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x6d7e34: ldur            x2, [fp, #-0x18]
    // 0x6d7e38: StoreField: r2->field_2b = r0
    //     0x6d7e38: stur            w0, [x2, #0x2b]
    //     0x6d7e3c: ldurb           w16, [x2, #-1]
    //     0x6d7e40: ldurb           w17, [x0, #-1]
    //     0x6d7e44: and             x16, x17, x16, lsr #2
    //     0x6d7e48: tst             x16, HEAP, lsr #32
    //     0x6d7e4c: b.eq            #0x6d7e54
    //     0x6d7e50: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d7e54: r1 = Function '<anonymous closure>':.
    //     0x6d7e54: add             x1, PP, #0x19, lsl #12  ; [pp+0x19788] AnonymousClosure: (0x6d7e8c), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog (0x6d7b40)
    //     0x6d7e58: ldr             x1, [x1, #0x788]
    // 0x6d7e5c: r0 = AllocateClosure()
    //     0x6d7e5c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d7e60: stp             x0, NULL, [SP, #8]
    // 0x6d7e64: ldur            x16, [fp, #-0x10]
    // 0x6d7e68: str             x16, [SP]
    // 0x6d7e6c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d7e6c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d7e70: r0 = showDialog()
    //     0x6d7e70: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6d7e74: r0 = Null
    //     0x6d7e74: mov             x0, NULL
    // 0x6d7e78: LeaveFrame
    //     0x6d7e78: mov             SP, fp
    //     0x6d7e7c: ldp             fp, lr, [SP], #0x10
    // 0x6d7e80: ret
    //     0x6d7e80: ret             
    // 0x6d7e84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7e84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7e88: b               #0x6d7b98
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6d7e8c, size: 0x4c4
    // 0x6d7e8c: EnterFrame
    //     0x6d7e8c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d7e90: mov             fp, SP
    // 0x6d7e94: AllocStack(0x38)
    //     0x6d7e94: sub             SP, SP, #0x38
    // 0x6d7e98: SetupParameters([dynamic _ /* r0 */])
    //     0x6d7e98: ldr             x0, [fp, #0x18]
    //     0x6d7e9c: ldur            w1, [x0, #0x17]
    //     0x6d7ea0: add             x1, x1, HEAP, lsl #32
    //     0x6d7ea4: stur            x1, [fp, #-8]
    // 0x6d7ea8: CheckStackOverflow
    //     0x6d7ea8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d7eac: cmp             SP, x16
    //     0x6d7eb0: b.ls            #0x6d8348
    // 0x6d7eb4: r1 = 1
    //     0x6d7eb4: mov             x1, #1
    // 0x6d7eb8: r0 = AllocateContext()
    //     0x6d7eb8: bl              #0x927010  ; AllocateContextStub
    // 0x6d7ebc: mov             x1, x0
    // 0x6d7ec0: ldur            x0, [fp, #-8]
    // 0x6d7ec4: stur            x1, [fp, #-0x18]
    // 0x6d7ec8: StoreField: r1->field_b = r0
    //     0x6d7ec8: stur            w0, [x1, #0xb]
    // 0x6d7ecc: ldr             x2, [fp, #0x10]
    // 0x6d7ed0: StoreField: r1->field_f = r2
    //     0x6d7ed0: stur            w2, [x1, #0xf]
    // 0x6d7ed4: LoadField: r2 = r0->field_13
    //     0x6d7ed4: ldur            w2, [x0, #0x13]
    // 0x6d7ed8: DecompressPointer r2
    //     0x6d7ed8: add             x2, x2, HEAP, lsl #32
    // 0x6d7edc: tbnz            w2, #4, #0x6d7eec
    // 0x6d7ee0: r2 = "Acenta Düzenle"
    //     0x6d7ee0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19790] "Acenta Düzenle"
    //     0x6d7ee4: ldr             x2, [x2, #0x790]
    // 0x6d7ee8: b               #0x6d7ef4
    // 0x6d7eec: r2 = "Yeni Acenta"
    //     0x6d7eec: add             x2, PP, #0x19, lsl #12  ; [pp+0x19798] "Yeni Acenta"
    //     0x6d7ef0: ldr             x2, [x2, #0x798]
    // 0x6d7ef4: stur            x2, [fp, #-0x10]
    // 0x6d7ef8: r0 = Text()
    //     0x6d7ef8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d7efc: mov             x2, x0
    // 0x6d7f00: ldur            x0, [fp, #-0x10]
    // 0x6d7f04: stur            x2, [fp, #-0x20]
    // 0x6d7f08: StoreField: r2->field_b = r0
    //     0x6d7f08: stur            w0, [x2, #0xb]
    // 0x6d7f0c: ldur            x0, [fp, #-8]
    // 0x6d7f10: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6d7f10: ldur            w3, [x0, #0x17]
    // 0x6d7f14: DecompressPointer r3
    //     0x6d7f14: add             x3, x3, HEAP, lsl #32
    // 0x6d7f18: stur            x3, [fp, #-0x10]
    // 0x6d7f1c: r1 = <String>
    //     0x6d7f1c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6d7f20: r0 = TextFormField()
    //     0x6d7f20: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6d7f24: r1 = Function '<anonymous closure>':.
    //     0x6d7f24: add             x1, PP, #0x19, lsl #12  ; [pp+0x197a0] AnonymousClosure: (0x6d9730), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog (0x6d7b40)
    //     0x6d7f28: ldr             x1, [x1, #0x7a0]
    // 0x6d7f2c: r2 = Null
    //     0x6d7f2c: mov             x2, NULL
    // 0x6d7f30: stur            x0, [fp, #-0x28]
    // 0x6d7f34: r0 = AllocateClosure()
    //     0x6d7f34: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d7f38: str             x0, [SP]
    // 0x6d7f3c: ldur            x1, [fp, #-0x28]
    // 0x6d7f40: ldur            x2, [fp, #-0x10]
    // 0x6d7f44: r3 = Instance_InputDecoration
    //     0x6d7f44: add             x3, PP, #0x19, lsl #12  ; [pp+0x197a8] Obj!InputDecoration@a0db21
    //     0x6d7f48: ldr             x3, [x3, #0x7a8]
    // 0x6d7f4c: r4 = const [0, 0x4, 0x1, 0x3, validator, 0x3, null]
    //     0x6d7f4c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a88] List(7) [0, 0x4, 0x1, 0x3, "validator", 0x3, Null]
    //     0x6d7f50: ldr             x4, [x4, #0xa88]
    // 0x6d7f54: r0 = TextFormField()
    //     0x6d7f54: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6d7f58: r1 = <Widget>
    //     0x6d7f58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d7f5c: r2 = 18
    //     0x6d7f5c: mov             x2, #0x12
    // 0x6d7f60: r0 = AllocateArray()
    //     0x6d7f60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d7f64: mov             x2, x0
    // 0x6d7f68: ldur            x0, [fp, #-0x28]
    // 0x6d7f6c: stur            x2, [fp, #-0x30]
    // 0x6d7f70: StoreField: r2->field_f = r0
    //     0x6d7f70: stur            w0, [x2, #0xf]
    // 0x6d7f74: r16 = Instance_SizedBox
    //     0x6d7f74: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d7f78: ldr             x16, [x16, #0x220]
    // 0x6d7f7c: StoreField: r2->field_13 = r16
    //     0x6d7f7c: stur            w16, [x2, #0x13]
    // 0x6d7f80: ldur            x0, [fp, #-8]
    // 0x6d7f84: LoadField: r3 = r0->field_1b
    //     0x6d7f84: ldur            w3, [x0, #0x1b]
    // 0x6d7f88: DecompressPointer r3
    //     0x6d7f88: add             x3, x3, HEAP, lsl #32
    // 0x6d7f8c: stur            x3, [fp, #-0x10]
    // 0x6d7f90: r1 = <String>
    //     0x6d7f90: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6d7f94: r0 = TextFormField()
    //     0x6d7f94: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6d7f98: stur            x0, [fp, #-0x28]
    // 0x6d7f9c: r16 = 4
    //     0x6d7f9c: mov             x16, #4
    // 0x6d7fa0: str             x16, [SP]
    // 0x6d7fa4: mov             x1, x0
    // 0x6d7fa8: ldur            x2, [fp, #-0x10]
    // 0x6d7fac: r3 = Instance_InputDecoration
    //     0x6d7fac: add             x3, PP, #0x19, lsl #12  ; [pp+0x197b0] Obj!InputDecoration@a0d761
    //     0x6d7fb0: ldr             x3, [x3, #0x7b0]
    // 0x6d7fb4: r4 = const [0, 0x4, 0x1, 0x3, maxLines, 0x3, null]
    //     0x6d7fb4: add             x4, PP, #0x13, lsl #12  ; [pp+0x13ad0] List(7) [0, 0x4, 0x1, 0x3, "maxLines", 0x3, Null]
    //     0x6d7fb8: ldr             x4, [x4, #0xad0]
    // 0x6d7fbc: r0 = TextFormField()
    //     0x6d7fbc: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6d7fc0: ldur            x1, [fp, #-0x30]
    // 0x6d7fc4: ldur            x0, [fp, #-0x28]
    // 0x6d7fc8: ArrayStore: r1[2] = r0  ; List_4
    //     0x6d7fc8: add             x25, x1, #0x17
    //     0x6d7fcc: str             w0, [x25]
    //     0x6d7fd0: tbz             w0, #0, #0x6d7fec
    //     0x6d7fd4: ldurb           w16, [x1, #-1]
    //     0x6d7fd8: ldurb           w17, [x0, #-1]
    //     0x6d7fdc: and             x16, x17, x16, lsr #2
    //     0x6d7fe0: tst             x16, HEAP, lsr #32
    //     0x6d7fe4: b.eq            #0x6d7fec
    //     0x6d7fe8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d7fec: ldur            x0, [fp, #-0x30]
    // 0x6d7ff0: r16 = Instance_SizedBox
    //     0x6d7ff0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d7ff4: ldr             x16, [x16, #0x220]
    // 0x6d7ff8: StoreField: r0->field_1b = r16
    //     0x6d7ff8: stur            w16, [x0, #0x1b]
    // 0x6d7ffc: ldur            x2, [fp, #-8]
    // 0x6d8000: LoadField: r3 = r2->field_1f
    //     0x6d8000: ldur            w3, [x2, #0x1f]
    // 0x6d8004: DecompressPointer r3
    //     0x6d8004: add             x3, x3, HEAP, lsl #32
    // 0x6d8008: stur            x3, [fp, #-0x10]
    // 0x6d800c: r1 = <String>
    //     0x6d800c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6d8010: r0 = TextFormField()
    //     0x6d8010: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6d8014: stur            x0, [fp, #-0x28]
    // 0x6d8018: r16 = Instance_TextInputType
    //     0x6d8018: add             x16, PP, #0x18, lsl #12  ; [pp+0x18788] Obj!TextInputType@a0ad41
    //     0x6d801c: ldr             x16, [x16, #0x788]
    // 0x6d8020: str             x16, [SP]
    // 0x6d8024: mov             x1, x0
    // 0x6d8028: ldur            x2, [fp, #-0x10]
    // 0x6d802c: r3 = Instance_InputDecoration
    //     0x6d802c: add             x3, PP, #0x19, lsl #12  ; [pp+0x197b8] Obj!InputDecoration@a0da31
    //     0x6d8030: ldr             x3, [x3, #0x7b8]
    // 0x6d8034: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6d8034: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6d8038: ldr             x4, [x4, #0x958]
    // 0x6d803c: r0 = TextFormField()
    //     0x6d803c: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6d8040: ldur            x1, [fp, #-0x30]
    // 0x6d8044: ldur            x0, [fp, #-0x28]
    // 0x6d8048: ArrayStore: r1[4] = r0  ; List_4
    //     0x6d8048: add             x25, x1, #0x1f
    //     0x6d804c: str             w0, [x25]
    //     0x6d8050: tbz             w0, #0, #0x6d806c
    //     0x6d8054: ldurb           w16, [x1, #-1]
    //     0x6d8058: ldurb           w17, [x0, #-1]
    //     0x6d805c: and             x16, x17, x16, lsr #2
    //     0x6d8060: tst             x16, HEAP, lsr #32
    //     0x6d8064: b.eq            #0x6d806c
    //     0x6d8068: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d806c: ldur            x0, [fp, #-0x30]
    // 0x6d8070: r16 = Instance_SizedBox
    //     0x6d8070: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d8074: ldr             x16, [x16, #0x220]
    // 0x6d8078: StoreField: r0->field_23 = r16
    //     0x6d8078: stur            w16, [x0, #0x23]
    // 0x6d807c: ldur            x2, [fp, #-8]
    // 0x6d8080: LoadField: r3 = r2->field_23
    //     0x6d8080: ldur            w3, [x2, #0x23]
    // 0x6d8084: DecompressPointer r3
    //     0x6d8084: add             x3, x3, HEAP, lsl #32
    // 0x6d8088: stur            x3, [fp, #-0x10]
    // 0x6d808c: r1 = <String>
    //     0x6d808c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6d8090: r0 = TextFormField()
    //     0x6d8090: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6d8094: stur            x0, [fp, #-0x28]
    // 0x6d8098: r16 = Instance_TextInputType
    //     0x6d8098: add             x16, PP, #0x19, lsl #12  ; [pp+0x197c0] Obj!TextInputType@a0ad21
    //     0x6d809c: ldr             x16, [x16, #0x7c0]
    // 0x6d80a0: str             x16, [SP]
    // 0x6d80a4: mov             x1, x0
    // 0x6d80a8: ldur            x2, [fp, #-0x10]
    // 0x6d80ac: r3 = Instance_InputDecoration
    //     0x6d80ac: add             x3, PP, #0x19, lsl #12  ; [pp+0x197c8] Obj!InputDecoration@a0d941
    //     0x6d80b0: ldr             x3, [x3, #0x7c8]
    // 0x6d80b4: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6d80b4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6d80b8: ldr             x4, [x4, #0x958]
    // 0x6d80bc: r0 = TextFormField()
    //     0x6d80bc: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6d80c0: ldur            x1, [fp, #-0x30]
    // 0x6d80c4: ldur            x0, [fp, #-0x28]
    // 0x6d80c8: ArrayStore: r1[6] = r0  ; List_4
    //     0x6d80c8: add             x25, x1, #0x27
    //     0x6d80cc: str             w0, [x25]
    //     0x6d80d0: tbz             w0, #0, #0x6d80ec
    //     0x6d80d4: ldurb           w16, [x1, #-1]
    //     0x6d80d8: ldurb           w17, [x0, #-1]
    //     0x6d80dc: and             x16, x17, x16, lsr #2
    //     0x6d80e0: tst             x16, HEAP, lsr #32
    //     0x6d80e4: b.eq            #0x6d80ec
    //     0x6d80e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d80ec: ldur            x0, [fp, #-0x30]
    // 0x6d80f0: r16 = Instance_SizedBox
    //     0x6d80f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d80f4: ldr             x16, [x16, #0x220]
    // 0x6d80f8: StoreField: r0->field_2b = r16
    //     0x6d80f8: stur            w16, [x0, #0x2b]
    // 0x6d80fc: ldur            x2, [fp, #-8]
    // 0x6d8100: LoadField: r3 = r2->field_27
    //     0x6d8100: ldur            w3, [x2, #0x27]
    // 0x6d8104: DecompressPointer r3
    //     0x6d8104: add             x3, x3, HEAP, lsl #32
    // 0x6d8108: stur            x3, [fp, #-0x10]
    // 0x6d810c: r1 = <String>
    //     0x6d810c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6d8110: r0 = TextFormField()
    //     0x6d8110: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6d8114: stur            x0, [fp, #-0x28]
    // 0x6d8118: r16 = 4
    //     0x6d8118: mov             x16, #4
    // 0x6d811c: str             x16, [SP]
    // 0x6d8120: mov             x1, x0
    // 0x6d8124: ldur            x2, [fp, #-0x10]
    // 0x6d8128: r3 = Instance_InputDecoration
    //     0x6d8128: add             x3, PP, #0x19, lsl #12  ; [pp+0x197d0] Obj!InputDecoration@a0d851
    //     0x6d812c: ldr             x3, [x3, #0x7d0]
    // 0x6d8130: r4 = const [0, 0x4, 0x1, 0x3, maxLines, 0x3, null]
    //     0x6d8130: add             x4, PP, #0x13, lsl #12  ; [pp+0x13ad0] List(7) [0, 0x4, 0x1, 0x3, "maxLines", 0x3, Null]
    //     0x6d8134: ldr             x4, [x4, #0xad0]
    // 0x6d8138: r0 = TextFormField()
    //     0x6d8138: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6d813c: ldur            x1, [fp, #-0x30]
    // 0x6d8140: ldur            x0, [fp, #-0x28]
    // 0x6d8144: ArrayStore: r1[8] = r0  ; List_4
    //     0x6d8144: add             x25, x1, #0x2f
    //     0x6d8148: str             w0, [x25]
    //     0x6d814c: tbz             w0, #0, #0x6d8168
    //     0x6d8150: ldurb           w16, [x1, #-1]
    //     0x6d8154: ldurb           w17, [x0, #-1]
    //     0x6d8158: and             x16, x17, x16, lsr #2
    //     0x6d815c: tst             x16, HEAP, lsr #32
    //     0x6d8160: b.eq            #0x6d8168
    //     0x6d8164: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d8168: r1 = <Widget>
    //     0x6d8168: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d816c: r0 = AllocateGrowableArray()
    //     0x6d816c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d8170: mov             x1, x0
    // 0x6d8174: ldur            x0, [fp, #-0x30]
    // 0x6d8178: stur            x1, [fp, #-0x10]
    // 0x6d817c: StoreField: r1->field_f = r0
    //     0x6d817c: stur            w0, [x1, #0xf]
    // 0x6d8180: r0 = 18
    //     0x6d8180: mov             x0, #0x12
    // 0x6d8184: StoreField: r1->field_b = r0
    //     0x6d8184: stur            w0, [x1, #0xb]
    // 0x6d8188: r0 = Column()
    //     0x6d8188: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6d818c: mov             x1, x0
    // 0x6d8190: r0 = Instance_Axis
    //     0x6d8190: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d8194: stur            x1, [fp, #-0x28]
    // 0x6d8198: StoreField: r1->field_f = r0
    //     0x6d8198: stur            w0, [x1, #0xf]
    // 0x6d819c: r2 = Instance_MainAxisAlignment
    //     0x6d819c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d81a0: ldr             x2, [x2, #0x230]
    // 0x6d81a4: StoreField: r1->field_13 = r2
    //     0x6d81a4: stur            w2, [x1, #0x13]
    // 0x6d81a8: r2 = Instance_MainAxisSize
    //     0x6d81a8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6d81ac: ldr             x2, [x2, #0xb60]
    // 0x6d81b0: ArrayStore: r1[0] = r2  ; List_4
    //     0x6d81b0: stur            w2, [x1, #0x17]
    // 0x6d81b4: r2 = Instance_CrossAxisAlignment
    //     0x6d81b4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d81b8: ldr             x2, [x2, #0x338]
    // 0x6d81bc: StoreField: r1->field_1b = r2
    //     0x6d81bc: stur            w2, [x1, #0x1b]
    // 0x6d81c0: r2 = Instance_VerticalDirection
    //     0x6d81c0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d81c4: ldr             x2, [x2, #0x340]
    // 0x6d81c8: StoreField: r1->field_23 = r2
    //     0x6d81c8: stur            w2, [x1, #0x23]
    // 0x6d81cc: r2 = Instance_Clip
    //     0x6d81cc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d81d0: ldr             x2, [x2, #0x348]
    // 0x6d81d4: StoreField: r1->field_2b = r2
    //     0x6d81d4: stur            w2, [x1, #0x2b]
    // 0x6d81d8: StoreField: r1->field_2f = rZR
    //     0x6d81d8: stur            xzr, [x1, #0x2f]
    // 0x6d81dc: ldur            x2, [fp, #-0x10]
    // 0x6d81e0: StoreField: r1->field_b = r2
    //     0x6d81e0: stur            w2, [x1, #0xb]
    // 0x6d81e4: ldur            x2, [fp, #-8]
    // 0x6d81e8: LoadField: r3 = r2->field_2b
    //     0x6d81e8: ldur            w3, [x2, #0x2b]
    // 0x6d81ec: DecompressPointer r3
    //     0x6d81ec: add             x3, x3, HEAP, lsl #32
    // 0x6d81f0: stur            x3, [fp, #-0x10]
    // 0x6d81f4: r0 = Form()
    //     0x6d81f4: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6d81f8: mov             x1, x0
    // 0x6d81fc: ldur            x0, [fp, #-0x28]
    // 0x6d8200: stur            x1, [fp, #-8]
    // 0x6d8204: StoreField: r1->field_b = r0
    //     0x6d8204: stur            w0, [x1, #0xb]
    // 0x6d8208: r0 = Instance_AutovalidateMode
    //     0x6d8208: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6d820c: ldr             x0, [x0, #0xb68]
    // 0x6d8210: StoreField: r1->field_23 = r0
    //     0x6d8210: stur            w0, [x1, #0x23]
    // 0x6d8214: ldur            x0, [fp, #-0x10]
    // 0x6d8218: StoreField: r1->field_7 = r0
    //     0x6d8218: stur            w0, [x1, #7]
    // 0x6d821c: r0 = SingleChildScrollView()
    //     0x6d821c: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6d8220: mov             x3, x0
    // 0x6d8224: r0 = Instance_Axis
    //     0x6d8224: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d8228: stur            x3, [fp, #-0x10]
    // 0x6d822c: StoreField: r3->field_b = r0
    //     0x6d822c: stur            w0, [x3, #0xb]
    // 0x6d8230: r0 = false
    //     0x6d8230: add             x0, NULL, #0x30  ; false
    // 0x6d8234: StoreField: r3->field_f = r0
    //     0x6d8234: stur            w0, [x3, #0xf]
    // 0x6d8238: ldur            x1, [fp, #-8]
    // 0x6d823c: StoreField: r3->field_23 = r1
    //     0x6d823c: stur            w1, [x3, #0x23]
    // 0x6d8240: r1 = Instance_DragStartBehavior
    //     0x6d8240: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d8244: StoreField: r3->field_27 = r1
    //     0x6d8244: stur            w1, [x3, #0x27]
    // 0x6d8248: r1 = Instance_Clip
    //     0x6d8248: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d824c: ldr             x1, [x1, #0x2d8]
    // 0x6d8250: StoreField: r3->field_2b = r1
    //     0x6d8250: stur            w1, [x3, #0x2b]
    // 0x6d8254: r1 = Instance_HitTestBehavior
    //     0x6d8254: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6d8258: ldr             x1, [x1, #0xe20]
    // 0x6d825c: StoreField: r3->field_2f = r1
    //     0x6d825c: stur            w1, [x3, #0x2f]
    // 0x6d8260: ldur            x2, [fp, #-0x18]
    // 0x6d8264: r1 = Function '<anonymous closure>':.
    //     0x6d8264: add             x1, PP, #0x19, lsl #12  ; [pp+0x197d8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6d8268: ldr             x1, [x1, #0x7d8]
    // 0x6d826c: r0 = AllocateClosure()
    //     0x6d826c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d8270: stur            x0, [fp, #-8]
    // 0x6d8274: r0 = TextButton()
    //     0x6d8274: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6d8278: mov             x3, x0
    // 0x6d827c: ldur            x0, [fp, #-8]
    // 0x6d8280: stur            x3, [fp, #-0x28]
    // 0x6d8284: StoreField: r3->field_b = r0
    //     0x6d8284: stur            w0, [x3, #0xb]
    // 0x6d8288: r0 = false
    //     0x6d8288: add             x0, NULL, #0x30  ; false
    // 0x6d828c: StoreField: r3->field_27 = r0
    //     0x6d828c: stur            w0, [x3, #0x27]
    // 0x6d8290: r1 = true
    //     0x6d8290: add             x1, NULL, #0x20  ; true
    // 0x6d8294: StoreField: r3->field_2f = r1
    //     0x6d8294: stur            w1, [x3, #0x2f]
    // 0x6d8298: r1 = Instance_Text
    //     0x6d8298: add             x1, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x6d829c: ldr             x1, [x1, #0x7d0]
    // 0x6d82a0: StoreField: r3->field_37 = r1
    //     0x6d82a0: stur            w1, [x3, #0x37]
    // 0x6d82a4: ldur            x2, [fp, #-0x18]
    // 0x6d82a8: r1 = Function '<anonymous closure>':.
    //     0x6d82a8: add             x1, PP, #0x19, lsl #12  ; [pp+0x197e0] AnonymousClosure: (0x6d8350), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog (0x6d7b40)
    //     0x6d82ac: ldr             x1, [x1, #0x7e0]
    // 0x6d82b0: r0 = AllocateClosure()
    //     0x6d82b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d82b4: r1 = <AgencyProvider>
    //     0x6d82b4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x6d82b8: ldr             x1, [x1, #0xb60]
    // 0x6d82bc: stur            x0, [fp, #-8]
    // 0x6d82c0: r0 = Consumer()
    //     0x6d82c0: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6d82c4: mov             x3, x0
    // 0x6d82c8: ldur            x0, [fp, #-8]
    // 0x6d82cc: stur            x3, [fp, #-0x18]
    // 0x6d82d0: StoreField: r3->field_13 = r0
    //     0x6d82d0: stur            w0, [x3, #0x13]
    // 0x6d82d4: r1 = Null
    //     0x6d82d4: mov             x1, NULL
    // 0x6d82d8: r2 = 4
    //     0x6d82d8: mov             x2, #4
    // 0x6d82dc: r0 = AllocateArray()
    //     0x6d82dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d82e0: mov             x2, x0
    // 0x6d82e4: ldur            x0, [fp, #-0x28]
    // 0x6d82e8: stur            x2, [fp, #-8]
    // 0x6d82ec: StoreField: r2->field_f = r0
    //     0x6d82ec: stur            w0, [x2, #0xf]
    // 0x6d82f0: ldur            x0, [fp, #-0x18]
    // 0x6d82f4: StoreField: r2->field_13 = r0
    //     0x6d82f4: stur            w0, [x2, #0x13]
    // 0x6d82f8: r1 = <Widget>
    //     0x6d82f8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d82fc: r0 = AllocateGrowableArray()
    //     0x6d82fc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d8300: mov             x1, x0
    // 0x6d8304: ldur            x0, [fp, #-8]
    // 0x6d8308: stur            x1, [fp, #-0x18]
    // 0x6d830c: StoreField: r1->field_f = r0
    //     0x6d830c: stur            w0, [x1, #0xf]
    // 0x6d8310: r0 = 4
    //     0x6d8310: mov             x0, #4
    // 0x6d8314: StoreField: r1->field_b = r0
    //     0x6d8314: stur            w0, [x1, #0xb]
    // 0x6d8318: r0 = AlertDialog()
    //     0x6d8318: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6d831c: ldur            x1, [fp, #-0x20]
    // 0x6d8320: StoreField: r0->field_f = r1
    //     0x6d8320: stur            w1, [x0, #0xf]
    // 0x6d8324: ldur            x1, [fp, #-0x10]
    // 0x6d8328: StoreField: r0->field_1b = r1
    //     0x6d8328: stur            w1, [x0, #0x1b]
    // 0x6d832c: ldur            x1, [fp, #-0x18]
    // 0x6d8330: StoreField: r0->field_27 = r1
    //     0x6d8330: stur            w1, [x0, #0x27]
    // 0x6d8334: r1 = false
    //     0x6d8334: add             x1, NULL, #0x30  ; false
    // 0x6d8338: StoreField: r0->field_6b = r1
    //     0x6d8338: stur            w1, [x0, #0x6b]
    // 0x6d833c: LeaveFrame
    //     0x6d833c: mov             SP, fp
    //     0x6d8340: ldp             fp, lr, [SP], #0x10
    // 0x6d8344: ret
    //     0x6d8344: ret             
    // 0x6d8348: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d8348: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d834c: b               #0x6d7eb4
  }
  [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?) {
    // ** addr: 0x6d8350, size: 0x158
    // 0x6d8350: EnterFrame
    //     0x6d8350: stp             fp, lr, [SP, #-0x10]!
    //     0x6d8354: mov             fp, SP
    // 0x6d8358: AllocStack(0x30)
    //     0x6d8358: sub             SP, SP, #0x30
    // 0x6d835c: SetupParameters([dynamic _ /* r0 */])
    //     0x6d835c: ldr             x0, [fp, #0x28]
    //     0x6d8360: ldur            w1, [x0, #0x17]
    //     0x6d8364: add             x1, x1, HEAP, lsl #32
    //     0x6d8368: stur            x1, [fp, #-8]
    // 0x6d836c: CheckStackOverflow
    //     0x6d836c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d8370: cmp             SP, x16
    //     0x6d8374: b.ls            #0x6d84a0
    // 0x6d8378: r1 = 1
    //     0x6d8378: mov             x1, #1
    // 0x6d837c: r0 = AllocateContext()
    //     0x6d837c: bl              #0x927010  ; AllocateContextStub
    // 0x6d8380: mov             x3, x0
    // 0x6d8384: ldur            x0, [fp, #-8]
    // 0x6d8388: stur            x3, [fp, #-0x10]
    // 0x6d838c: StoreField: r3->field_b = r0
    //     0x6d838c: stur            w0, [x3, #0xb]
    // 0x6d8390: ldr             x1, [fp, #0x18]
    // 0x6d8394: StoreField: r3->field_f = r1
    //     0x6d8394: stur            w1, [x3, #0xf]
    // 0x6d8398: LoadField: r2 = r1->field_2b
    //     0x6d8398: ldur            w2, [x1, #0x2b]
    // 0x6d839c: DecompressPointer r2
    //     0x6d839c: add             x2, x2, HEAP, lsl #32
    // 0x6d83a0: tbnz            w2, #4, #0x6d83b0
    // 0x6d83a4: mov             x0, x3
    // 0x6d83a8: r1 = Null
    //     0x6d83a8: mov             x1, NULL
    // 0x6d83ac: b               #0x6d83c8
    // 0x6d83b0: mov             x2, x3
    // 0x6d83b4: r1 = Function '<anonymous closure>':.
    //     0x6d83b4: add             x1, PP, #0x19, lsl #12  ; [pp+0x197e8] AnonymousClosure: (0x6d84a8), in [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog (0x6d7b40)
    //     0x6d83b8: ldr             x1, [x1, #0x7e8]
    // 0x6d83bc: r0 = AllocateClosure()
    //     0x6d83bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d83c0: mov             x1, x0
    // 0x6d83c4: ldur            x0, [fp, #-0x10]
    // 0x6d83c8: stur            x1, [fp, #-0x18]
    // 0x6d83cc: r16 = Instance_Color
    //     0x6d83cc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d83d0: ldr             x16, [x16, #0xb78]
    // 0x6d83d4: r30 = Instance_Color
    //     0x6d83d4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d83d8: stp             lr, x16, [SP]
    // 0x6d83dc: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6d83dc: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6d83e0: ldr             x4, [x4, #0x1a8]
    // 0x6d83e4: r0 = styleFrom()
    //     0x6d83e4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6d83e8: mov             x1, x0
    // 0x6d83ec: ldur            x0, [fp, #-0x10]
    // 0x6d83f0: stur            x1, [fp, #-0x20]
    // 0x6d83f4: LoadField: r2 = r0->field_f
    //     0x6d83f4: ldur            w2, [x0, #0xf]
    // 0x6d83f8: DecompressPointer r2
    //     0x6d83f8: add             x2, x2, HEAP, lsl #32
    // 0x6d83fc: LoadField: r0 = r2->field_2b
    //     0x6d83fc: ldur            w0, [x2, #0x2b]
    // 0x6d8400: DecompressPointer r0
    //     0x6d8400: add             x0, x0, HEAP, lsl #32
    // 0x6d8404: tbnz            w0, #4, #0x6d8418
    // 0x6d8408: mov             x0, x1
    // 0x6d840c: r2 = Instance_SizedBox
    //     0x6d840c: add             x2, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6d8410: ldr             x2, [x2, #0x1b0]
    // 0x6d8414: b               #0x6d8460
    // 0x6d8418: ldur            x0, [fp, #-8]
    // 0x6d841c: LoadField: r2 = r0->field_b
    //     0x6d841c: ldur            w2, [x0, #0xb]
    // 0x6d8420: DecompressPointer r2
    //     0x6d8420: add             x2, x2, HEAP, lsl #32
    // 0x6d8424: LoadField: r0 = r2->field_13
    //     0x6d8424: ldur            w0, [x2, #0x13]
    // 0x6d8428: DecompressPointer r0
    //     0x6d8428: add             x0, x0, HEAP, lsl #32
    // 0x6d842c: tbnz            w0, #4, #0x6d843c
    // 0x6d8430: r0 = "Güncelle"
    //     0x6d8430: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6d8434: ldr             x0, [x0, #0xb48]
    // 0x6d8438: b               #0x6d8444
    // 0x6d843c: r0 = "Kaydet"
    //     0x6d843c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x6d8440: ldr             x0, [x0, #0xb50]
    // 0x6d8444: stur            x0, [fp, #-8]
    // 0x6d8448: r0 = Text()
    //     0x6d8448: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d844c: mov             x1, x0
    // 0x6d8450: ldur            x0, [fp, #-8]
    // 0x6d8454: StoreField: r1->field_b = r0
    //     0x6d8454: stur            w0, [x1, #0xb]
    // 0x6d8458: mov             x2, x1
    // 0x6d845c: ldur            x0, [fp, #-0x20]
    // 0x6d8460: ldur            x1, [fp, #-0x18]
    // 0x6d8464: stur            x2, [fp, #-8]
    // 0x6d8468: r0 = ElevatedButton()
    //     0x6d8468: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6d846c: ldur            x1, [fp, #-0x18]
    // 0x6d8470: StoreField: r0->field_b = r1
    //     0x6d8470: stur            w1, [x0, #0xb]
    // 0x6d8474: ldur            x1, [fp, #-0x20]
    // 0x6d8478: StoreField: r0->field_1b = r1
    //     0x6d8478: stur            w1, [x0, #0x1b]
    // 0x6d847c: r1 = false
    //     0x6d847c: add             x1, NULL, #0x30  ; false
    // 0x6d8480: StoreField: r0->field_27 = r1
    //     0x6d8480: stur            w1, [x0, #0x27]
    // 0x6d8484: r1 = true
    //     0x6d8484: add             x1, NULL, #0x20  ; true
    // 0x6d8488: StoreField: r0->field_2f = r1
    //     0x6d8488: stur            w1, [x0, #0x2f]
    // 0x6d848c: ldur            x1, [fp, #-8]
    // 0x6d8490: StoreField: r0->field_37 = r1
    //     0x6d8490: stur            w1, [x0, #0x37]
    // 0x6d8494: LeaveFrame
    //     0x6d8494: mov             SP, fp
    //     0x6d8498: ldp             fp, lr, [SP], #0x10
    // 0x6d849c: ret
    //     0x6d849c: ret             
    // 0x6d84a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d84a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d84a4: b               #0x6d8378
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6d84a8, size: 0x304
    // 0x6d84a8: EnterFrame
    //     0x6d84a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d84ac: mov             fp, SP
    // 0x6d84b0: AllocStack(0x78)
    //     0x6d84b0: sub             SP, SP, #0x78
    // 0x6d84b4: SetupParameters(_AgenciesPageState this /* r1 */)
    //     0x6d84b4: stur            NULL, [fp, #-8]
    //     0x6d84b8: mov             x0, #0
    //     0x6d84bc: add             x1, fp, w0, sxtw #2
    //     0x6d84c0: ldr             x1, [x1, #0x10]
    //     0x6d84c4: ldur            w2, [x1, #0x17]
    //     0x6d84c8: add             x2, x2, HEAP, lsl #32
    //     0x6d84cc: stur            x2, [fp, #-0x10]
    // 0x6d84d0: CheckStackOverflow
    //     0x6d84d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d84d4: cmp             SP, x16
    //     0x6d84d8: b.ls            #0x6d879c
    // 0x6d84dc: InitAsync() -> Future<void?>
    //     0x6d84dc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d84e0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d84e4: ldur            x0, [fp, #-0x10]
    // 0x6d84e8: LoadField: r2 = r0->field_b
    //     0x6d84e8: ldur            w2, [x0, #0xb]
    // 0x6d84ec: DecompressPointer r2
    //     0x6d84ec: add             x2, x2, HEAP, lsl #32
    // 0x6d84f0: stur            x2, [fp, #-0x20]
    // 0x6d84f4: LoadField: r3 = r2->field_b
    //     0x6d84f4: ldur            w3, [x2, #0xb]
    // 0x6d84f8: DecompressPointer r3
    //     0x6d84f8: add             x3, x3, HEAP, lsl #32
    // 0x6d84fc: stur            x3, [fp, #-0x18]
    // 0x6d8500: LoadField: r1 = r3->field_2b
    //     0x6d8500: ldur            w1, [x3, #0x2b]
    // 0x6d8504: DecompressPointer r1
    //     0x6d8504: add             x1, x1, HEAP, lsl #32
    // 0x6d8508: r0 = currentState()
    //     0x6d8508: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6d850c: cmp             w0, NULL
    // 0x6d8510: b.eq            #0x6d87a4
    // 0x6d8514: mov             x1, x0
    // 0x6d8518: r0 = validate()
    //     0x6d8518: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x6d851c: tbz             w0, #4, #0x6d8528
    // 0x6d8520: r0 = Null
    //     0x6d8520: mov             x0, NULL
    // 0x6d8524: r0 = ReturnAsyncNotFuture()
    //     0x6d8524: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d8528: ldur            x0, [fp, #-0x18]
    // 0x6d852c: LoadField: r1 = r0->field_13
    //     0x6d852c: ldur            w1, [x0, #0x13]
    // 0x6d8530: DecompressPointer r1
    //     0x6d8530: add             x1, x1, HEAP, lsl #32
    // 0x6d8534: tbnz            w1, #4, #0x6d866c
    // 0x6d8538: ldur            x2, [fp, #-0x10]
    // 0x6d853c: LoadField: r3 = r2->field_f
    //     0x6d853c: ldur            w3, [x2, #0xf]
    // 0x6d8540: DecompressPointer r3
    //     0x6d8540: add             x3, x3, HEAP, lsl #32
    // 0x6d8544: stur            x3, [fp, #-0x30]
    // 0x6d8548: LoadField: r1 = r0->field_f
    //     0x6d8548: ldur            w1, [x0, #0xf]
    // 0x6d854c: DecompressPointer r1
    //     0x6d854c: add             x1, x1, HEAP, lsl #32
    // 0x6d8550: cmp             w1, NULL
    // 0x6d8554: b.eq            #0x6d87a8
    // 0x6d8558: LoadField: r4 = r1->field_7
    //     0x6d8558: ldur            w4, [x1, #7]
    // 0x6d855c: DecompressPointer r4
    //     0x6d855c: add             x4, x4, HEAP, lsl #32
    // 0x6d8560: stur            x4, [fp, #-0x28]
    // 0x6d8564: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d8564: ldur            w1, [x0, #0x17]
    // 0x6d8568: DecompressPointer r1
    //     0x6d8568: add             x1, x1, HEAP, lsl #32
    // 0x6d856c: LoadField: r5 = r1->field_27
    //     0x6d856c: ldur            w5, [x1, #0x27]
    // 0x6d8570: DecompressPointer r5
    //     0x6d8570: add             x5, x5, HEAP, lsl #32
    // 0x6d8574: LoadField: r1 = r5->field_7
    //     0x6d8574: ldur            w1, [x5, #7]
    // 0x6d8578: DecompressPointer r1
    //     0x6d8578: add             x1, x1, HEAP, lsl #32
    // 0x6d857c: r0 = trim()
    //     0x6d857c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d8580: mov             x2, x0
    // 0x6d8584: ldur            x0, [fp, #-0x18]
    // 0x6d8588: stur            x2, [fp, #-0x38]
    // 0x6d858c: LoadField: r1 = r0->field_1b
    //     0x6d858c: ldur            w1, [x0, #0x1b]
    // 0x6d8590: DecompressPointer r1
    //     0x6d8590: add             x1, x1, HEAP, lsl #32
    // 0x6d8594: LoadField: r3 = r1->field_27
    //     0x6d8594: ldur            w3, [x1, #0x27]
    // 0x6d8598: DecompressPointer r3
    //     0x6d8598: add             x3, x3, HEAP, lsl #32
    // 0x6d859c: LoadField: r1 = r3->field_7
    //     0x6d859c: ldur            w1, [x3, #7]
    // 0x6d85a0: DecompressPointer r1
    //     0x6d85a0: add             x1, x1, HEAP, lsl #32
    // 0x6d85a4: r0 = trim()
    //     0x6d85a4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d85a8: mov             x2, x0
    // 0x6d85ac: ldur            x0, [fp, #-0x18]
    // 0x6d85b0: stur            x2, [fp, #-0x40]
    // 0x6d85b4: LoadField: r1 = r0->field_1f
    //     0x6d85b4: ldur            w1, [x0, #0x1f]
    // 0x6d85b8: DecompressPointer r1
    //     0x6d85b8: add             x1, x1, HEAP, lsl #32
    // 0x6d85bc: LoadField: r3 = r1->field_27
    //     0x6d85bc: ldur            w3, [x1, #0x27]
    // 0x6d85c0: DecompressPointer r3
    //     0x6d85c0: add             x3, x3, HEAP, lsl #32
    // 0x6d85c4: LoadField: r1 = r3->field_7
    //     0x6d85c4: ldur            w1, [x3, #7]
    // 0x6d85c8: DecompressPointer r1
    //     0x6d85c8: add             x1, x1, HEAP, lsl #32
    // 0x6d85cc: r0 = trim()
    //     0x6d85cc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d85d0: mov             x2, x0
    // 0x6d85d4: ldur            x0, [fp, #-0x18]
    // 0x6d85d8: stur            x2, [fp, #-0x48]
    // 0x6d85dc: LoadField: r1 = r0->field_23
    //     0x6d85dc: ldur            w1, [x0, #0x23]
    // 0x6d85e0: DecompressPointer r1
    //     0x6d85e0: add             x1, x1, HEAP, lsl #32
    // 0x6d85e4: LoadField: r3 = r1->field_27
    //     0x6d85e4: ldur            w3, [x1, #0x27]
    // 0x6d85e8: DecompressPointer r3
    //     0x6d85e8: add             x3, x3, HEAP, lsl #32
    // 0x6d85ec: LoadField: r1 = r3->field_7
    //     0x6d85ec: ldur            w1, [x3, #7]
    // 0x6d85f0: DecompressPointer r1
    //     0x6d85f0: add             x1, x1, HEAP, lsl #32
    // 0x6d85f4: r0 = trim()
    //     0x6d85f4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d85f8: mov             x2, x0
    // 0x6d85fc: ldur            x0, [fp, #-0x18]
    // 0x6d8600: stur            x2, [fp, #-0x50]
    // 0x6d8604: LoadField: r1 = r0->field_27
    //     0x6d8604: ldur            w1, [x0, #0x27]
    // 0x6d8608: DecompressPointer r1
    //     0x6d8608: add             x1, x1, HEAP, lsl #32
    // 0x6d860c: LoadField: r0 = r1->field_27
    //     0x6d860c: ldur            w0, [x1, #0x27]
    // 0x6d8610: DecompressPointer r0
    //     0x6d8610: add             x0, x0, HEAP, lsl #32
    // 0x6d8614: LoadField: r1 = r0->field_7
    //     0x6d8614: ldur            w1, [x0, #7]
    // 0x6d8618: DecompressPointer r1
    //     0x6d8618: add             x1, x1, HEAP, lsl #32
    // 0x6d861c: r0 = trim()
    //     0x6d861c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d8620: ldur            x16, [fp, #-0x38]
    // 0x6d8624: ldur            lr, [fp, #-0x40]
    // 0x6d8628: stp             lr, x16, [SP, #0x18]
    // 0x6d862c: ldur            x16, [fp, #-0x48]
    // 0x6d8630: ldur            lr, [fp, #-0x50]
    // 0x6d8634: stp             lr, x16, [SP, #8]
    // 0x6d8638: str             x0, [SP]
    // 0x6d863c: ldur            x1, [fp, #-0x30]
    // 0x6d8640: ldur            x2, [fp, #-0x28]
    // 0x6d8644: r4 = const [0, 0x7, 0x5, 0x2, address, 0x6, description, 0x3, email, 0x5, name, 0x2, phone, 0x4, null]
    //     0x6d8644: add             x4, PP, #0x19, lsl #12  ; [pp+0x197f0] List(15) [0, 0x7, 0x5, 0x2, "address", 0x6, "description", 0x3, "email", 0x5, "name", 0x2, "phone", 0x4, Null]
    //     0x6d8648: ldr             x4, [x4, #0x7f0]
    // 0x6d864c: r0 = updateAgency()
    //     0x6d864c: bl              #0x6d8fa0  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::updateAgency
    // 0x6d8650: mov             x1, x0
    // 0x6d8654: stur            x1, [fp, #-0x28]
    // 0x6d8658: r0 = Await()
    //     0x6d8658: bl              #0x3dd188  ; AwaitStub
    // 0x6d865c: r16 = true
    //     0x6d865c: add             x16, NULL, #0x20  ; true
    // 0x6d8660: cmp             w0, w16
    // 0x6d8664: b.ne            #0x6d8794
    // 0x6d8668: b               #0x6d8768
    // 0x6d866c: ldur            x2, [fp, #-0x10]
    // 0x6d8670: LoadField: r3 = r2->field_f
    //     0x6d8670: ldur            w3, [x2, #0xf]
    // 0x6d8674: DecompressPointer r3
    //     0x6d8674: add             x3, x3, HEAP, lsl #32
    // 0x6d8678: stur            x3, [fp, #-0x28]
    // 0x6d867c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d867c: ldur            w1, [x0, #0x17]
    // 0x6d8680: DecompressPointer r1
    //     0x6d8680: add             x1, x1, HEAP, lsl #32
    // 0x6d8684: LoadField: r4 = r1->field_27
    //     0x6d8684: ldur            w4, [x1, #0x27]
    // 0x6d8688: DecompressPointer r4
    //     0x6d8688: add             x4, x4, HEAP, lsl #32
    // 0x6d868c: LoadField: r1 = r4->field_7
    //     0x6d868c: ldur            w1, [x4, #7]
    // 0x6d8690: DecompressPointer r1
    //     0x6d8690: add             x1, x1, HEAP, lsl #32
    // 0x6d8694: r0 = trim()
    //     0x6d8694: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d8698: mov             x2, x0
    // 0x6d869c: ldur            x0, [fp, #-0x18]
    // 0x6d86a0: stur            x2, [fp, #-0x30]
    // 0x6d86a4: LoadField: r1 = r0->field_1b
    //     0x6d86a4: ldur            w1, [x0, #0x1b]
    // 0x6d86a8: DecompressPointer r1
    //     0x6d86a8: add             x1, x1, HEAP, lsl #32
    // 0x6d86ac: LoadField: r3 = r1->field_27
    //     0x6d86ac: ldur            w3, [x1, #0x27]
    // 0x6d86b0: DecompressPointer r3
    //     0x6d86b0: add             x3, x3, HEAP, lsl #32
    // 0x6d86b4: LoadField: r1 = r3->field_7
    //     0x6d86b4: ldur            w1, [x3, #7]
    // 0x6d86b8: DecompressPointer r1
    //     0x6d86b8: add             x1, x1, HEAP, lsl #32
    // 0x6d86bc: r0 = trim()
    //     0x6d86bc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d86c0: mov             x2, x0
    // 0x6d86c4: ldur            x0, [fp, #-0x18]
    // 0x6d86c8: stur            x2, [fp, #-0x38]
    // 0x6d86cc: LoadField: r1 = r0->field_1f
    //     0x6d86cc: ldur            w1, [x0, #0x1f]
    // 0x6d86d0: DecompressPointer r1
    //     0x6d86d0: add             x1, x1, HEAP, lsl #32
    // 0x6d86d4: LoadField: r3 = r1->field_27
    //     0x6d86d4: ldur            w3, [x1, #0x27]
    // 0x6d86d8: DecompressPointer r3
    //     0x6d86d8: add             x3, x3, HEAP, lsl #32
    // 0x6d86dc: LoadField: r1 = r3->field_7
    //     0x6d86dc: ldur            w1, [x3, #7]
    // 0x6d86e0: DecompressPointer r1
    //     0x6d86e0: add             x1, x1, HEAP, lsl #32
    // 0x6d86e4: r0 = trim()
    //     0x6d86e4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d86e8: mov             x2, x0
    // 0x6d86ec: ldur            x0, [fp, #-0x18]
    // 0x6d86f0: stur            x2, [fp, #-0x40]
    // 0x6d86f4: LoadField: r1 = r0->field_23
    //     0x6d86f4: ldur            w1, [x0, #0x23]
    // 0x6d86f8: DecompressPointer r1
    //     0x6d86f8: add             x1, x1, HEAP, lsl #32
    // 0x6d86fc: LoadField: r3 = r1->field_27
    //     0x6d86fc: ldur            w3, [x1, #0x27]
    // 0x6d8700: DecompressPointer r3
    //     0x6d8700: add             x3, x3, HEAP, lsl #32
    // 0x6d8704: LoadField: r1 = r3->field_7
    //     0x6d8704: ldur            w1, [x3, #7]
    // 0x6d8708: DecompressPointer r1
    //     0x6d8708: add             x1, x1, HEAP, lsl #32
    // 0x6d870c: r0 = trim()
    //     0x6d870c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d8710: mov             x2, x0
    // 0x6d8714: ldur            x0, [fp, #-0x18]
    // 0x6d8718: stur            x2, [fp, #-0x48]
    // 0x6d871c: LoadField: r1 = r0->field_27
    //     0x6d871c: ldur            w1, [x0, #0x27]
    // 0x6d8720: DecompressPointer r1
    //     0x6d8720: add             x1, x1, HEAP, lsl #32
    // 0x6d8724: LoadField: r0 = r1->field_27
    //     0x6d8724: ldur            w0, [x1, #0x27]
    // 0x6d8728: DecompressPointer r0
    //     0x6d8728: add             x0, x0, HEAP, lsl #32
    // 0x6d872c: LoadField: r1 = r0->field_7
    //     0x6d872c: ldur            w1, [x0, #7]
    // 0x6d8730: DecompressPointer r1
    //     0x6d8730: add             x1, x1, HEAP, lsl #32
    // 0x6d8734: r0 = trim()
    //     0x6d8734: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d8738: ldur            x1, [fp, #-0x28]
    // 0x6d873c: mov             x2, x0
    // 0x6d8740: ldur            x3, [fp, #-0x38]
    // 0x6d8744: ldur            x5, [fp, #-0x48]
    // 0x6d8748: ldur            x6, [fp, #-0x30]
    // 0x6d874c: ldur            x7, [fp, #-0x40]
    // 0x6d8750: r0 = createAgency()
    //     0x6d8750: bl              #0x6d87ac  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::createAgency
    // 0x6d8754: mov             x1, x0
    // 0x6d8758: stur            x1, [fp, #-0x18]
    // 0x6d875c: r0 = Await()
    //     0x6d875c: bl              #0x3dd188  ; AwaitStub
    // 0x6d8760: cmp             w0, NULL
    // 0x6d8764: b.eq            #0x6d8794
    // 0x6d8768: ldur            x0, [fp, #-0x20]
    // 0x6d876c: LoadField: r1 = r0->field_f
    //     0x6d876c: ldur            w1, [x0, #0xf]
    // 0x6d8770: DecompressPointer r1
    //     0x6d8770: add             x1, x1, HEAP, lsl #32
    // 0x6d8774: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6d8774: ldur            w0, [x1, #0x17]
    // 0x6d8778: DecompressPointer r0
    //     0x6d8778: add             x0, x0, HEAP, lsl #32
    // 0x6d877c: cmp             w0, NULL
    // 0x6d8780: b.eq            #0x6d8794
    // 0x6d8784: r16 = <Object?>
    //     0x6d8784: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6d8788: stp             x1, x16, [SP]
    // 0x6d878c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d878c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d8790: r0 = pop()
    //     0x6d8790: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6d8794: r0 = Null
    //     0x6d8794: mov             x0, NULL
    // 0x6d8798: r0 = ReturnAsyncNotFuture()
    //     0x6d8798: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d879c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d879c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d87a0: b               #0x6d84dc
    // 0x6d87a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d87a4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d87a8: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6d87a8: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6d9730, size: 0x50
    // 0x6d9730: EnterFrame
    //     0x6d9730: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9734: mov             fp, SP
    // 0x6d9738: CheckStackOverflow
    //     0x6d9738: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d973c: cmp             SP, x16
    //     0x6d9740: b.ls            #0x6d9778
    // 0x6d9744: ldr             x1, [fp, #0x10]
    // 0x6d9748: cmp             w1, NULL
    // 0x6d974c: b.eq            #0x6d975c
    // 0x6d9750: r0 = trim()
    //     0x6d9750: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d9754: LoadField: r1 = r0->field_7
    //     0x6d9754: ldur            w1, [x0, #7]
    // 0x6d9758: cbnz            w1, #0x6d9768
    // 0x6d975c: r0 = "Acenta adı gerekli"
    //     0x6d975c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19848] "Acenta adı gerekli"
    //     0x6d9760: ldr             x0, [x0, #0x848]
    // 0x6d9764: b               #0x6d976c
    // 0x6d9768: r0 = Null
    //     0x6d9768: mov             x0, NULL
    // 0x6d976c: LeaveFrame
    //     0x6d976c: mov             SP, fp
    //     0x6d9770: ldp             fp, lr, [SP], #0x10
    // 0x6d9774: ret
    //     0x6d9774: ret             
    // 0x6d9778: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9778: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d977c: b               #0x6d9744
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d9780, size: 0x60
    // 0x6d9780: EnterFrame
    //     0x6d9780: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9784: mov             fp, SP
    // 0x6d9788: ldr             x0, [fp, #0x10]
    // 0x6d978c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d978c: ldur            w1, [x0, #0x17]
    // 0x6d9790: DecompressPointer r1
    //     0x6d9790: add             x1, x1, HEAP, lsl #32
    // 0x6d9794: CheckStackOverflow
    //     0x6d9794: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d9798: cmp             SP, x16
    //     0x6d979c: b.ls            #0x6d97d8
    // 0x6d97a0: LoadField: r0 = r1->field_b
    //     0x6d97a0: ldur            w0, [x1, #0xb]
    // 0x6d97a4: DecompressPointer r0
    //     0x6d97a4: add             x0, x0, HEAP, lsl #32
    // 0x6d97a8: LoadField: r2 = r0->field_f
    //     0x6d97a8: ldur            w2, [x0, #0xf]
    // 0x6d97ac: DecompressPointer r2
    //     0x6d97ac: add             x2, x2, HEAP, lsl #32
    // 0x6d97b0: LoadField: r0 = r1->field_f
    //     0x6d97b0: ldur            w0, [x1, #0xf]
    // 0x6d97b4: DecompressPointer r0
    //     0x6d97b4: add             x0, x0, HEAP, lsl #32
    // 0x6d97b8: mov             x1, x2
    // 0x6d97bc: mov             x2, x0
    // 0x6d97c0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d97c0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d97c4: r0 = _showAgencyDialog()
    //     0x6d97c4: bl              #0x6d7b40  ; [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog
    // 0x6d97c8: r0 = Null
    //     0x6d97c8: mov             x0, NULL
    // 0x6d97cc: LeaveFrame
    //     0x6d97cc: mov             SP, fp
    //     0x6d97d0: ldp             fp, lr, [SP], #0x10
    // 0x6d97d4: ret
    //     0x6d97d4: ret             
    // 0x6d97d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d97d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d97dc: b               #0x6d97a0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d97e0, size: 0x54
    // 0x6d97e0: EnterFrame
    //     0x6d97e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d97e4: mov             fp, SP
    // 0x6d97e8: ldr             x0, [fp, #0x10]
    // 0x6d97ec: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d97ec: ldur            w1, [x0, #0x17]
    // 0x6d97f0: DecompressPointer r1
    //     0x6d97f0: add             x1, x1, HEAP, lsl #32
    // 0x6d97f4: CheckStackOverflow
    //     0x6d97f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d97f8: cmp             SP, x16
    //     0x6d97fc: b.ls            #0x6d982c
    // 0x6d9800: LoadField: r0 = r1->field_f
    //     0x6d9800: ldur            w0, [x1, #0xf]
    // 0x6d9804: DecompressPointer r0
    //     0x6d9804: add             x0, x0, HEAP, lsl #32
    // 0x6d9808: LoadField: r2 = r1->field_13
    //     0x6d9808: ldur            w2, [x1, #0x13]
    // 0x6d980c: DecompressPointer r2
    //     0x6d980c: add             x2, x2, HEAP, lsl #32
    // 0x6d9810: mov             x1, x0
    // 0x6d9814: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d9814: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d9818: r0 = _showAgencyDialog()
    //     0x6d9818: bl              #0x6d7b40  ; [package:umrem_demo/features/admin/screens/agencies_page.dart] _AgenciesPageState::_showAgencyDialog
    // 0x6d981c: r0 = Null
    //     0x6d981c: mov             x0, NULL
    // 0x6d9820: LeaveFrame
    //     0x6d9820: mov             SP, fp
    //     0x6d9824: ldp             fp, lr, [SP], #0x10
    // 0x6d9828: ret
    //     0x6d9828: ret             
    // 0x6d982c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d982c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d9830: b               #0x6d9800
  }
}

// class id: 3217, size: 0xc, field offset: 0xc
//   const constructor, 
class AgenciesPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd3b8, size: 0x24
    // 0x7bd3b8: EnterFrame
    //     0x7bd3b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd3bc: mov             fp, SP
    // 0x7bd3c0: mov             x0, x1
    // 0x7bd3c4: r1 = <AgenciesPage>
    //     0x7bd3c4: add             x1, PP, #0x12, lsl #12  ; [pp+0x126f8] TypeArguments: <AgenciesPage>
    //     0x7bd3c8: ldr             x1, [x1, #0x6f8]
    // 0x7bd3cc: r0 = _AgenciesPageState()
    //     0x7bd3cc: bl              #0x7bd3dc  ; Allocate_AgenciesPageStateStub -> _AgenciesPageState (size=0x14)
    // 0x7bd3d0: LeaveFrame
    //     0x7bd3d0: mov             SP, fp
    //     0x7bd3d4: ldp             fp, lr, [SP], #0x10
    // 0x7bd3d8: ret
    //     0x7bd3d8: ret             
  }
}

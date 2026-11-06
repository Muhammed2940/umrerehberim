// lib: , url: package:umrem_demo/features/admin/screens/currency_page.dart

// class id: 1049529, size: 0x8
class :: {
}

// class id: 2490, size: 0x14, field offset: 0x14
class _CurrencyPageState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e009c, size: 0x130
    // 0x5e009c: EnterFrame
    //     0x5e009c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e00a0: mov             fp, SP
    // 0x5e00a4: AllocStack(0x18)
    //     0x5e00a4: sub             SP, SP, #0x18
    // 0x5e00a8: SetupParameters(_CurrencyPageState this /* r1 => r1, fp-0x8 */)
    //     0x5e00a8: stur            x1, [fp, #-8]
    // 0x5e00ac: CheckStackOverflow
    //     0x5e00ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e00b0: cmp             SP, x16
    //     0x5e00b4: b.ls            #0x5e01c0
    // 0x5e00b8: r1 = 1
    //     0x5e00b8: mov             x1, #1
    // 0x5e00bc: r0 = AllocateContext()
    //     0x5e00bc: bl              #0x927010  ; AllocateContextStub
    // 0x5e00c0: mov             x1, x0
    // 0x5e00c4: ldur            x0, [fp, #-8]
    // 0x5e00c8: StoreField: r1->field_f = r0
    //     0x5e00c8: stur            w0, [x1, #0xf]
    // 0x5e00cc: r0 = LoadStaticField(0x834)
    //     0x5e00cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e00d0: ldr             x0, [x0, #0x1068]
    // 0x5e00d4: cmp             w0, NULL
    // 0x5e00d8: b.eq            #0x5e01c8
    // 0x5e00dc: LoadField: r3 = r0->field_53
    //     0x5e00dc: ldur            w3, [x0, #0x53]
    // 0x5e00e0: DecompressPointer r3
    //     0x5e00e0: add             x3, x3, HEAP, lsl #32
    // 0x5e00e4: stur            x3, [fp, #-0x10]
    // 0x5e00e8: LoadField: r0 = r3->field_7
    //     0x5e00e8: ldur            w0, [x3, #7]
    // 0x5e00ec: DecompressPointer r0
    //     0x5e00ec: add             x0, x0, HEAP, lsl #32
    // 0x5e00f0: mov             x2, x1
    // 0x5e00f4: stur            x0, [fp, #-8]
    // 0x5e00f8: r1 = Function '<anonymous closure>':.
    //     0x5e00f8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18da0] AnonymousClosure: (0x5e01ec), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::initState (0x5e009c)
    //     0x5e00fc: ldr             x1, [x1, #0xda0]
    // 0x5e0100: r0 = AllocateClosure()
    //     0x5e0100: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e0104: ldur            x2, [fp, #-8]
    // 0x5e0108: mov             x3, x0
    // 0x5e010c: r1 = Null
    //     0x5e010c: mov             x1, NULL
    // 0x5e0110: stur            x3, [fp, #-8]
    // 0x5e0114: cmp             w2, NULL
    // 0x5e0118: b.eq            #0x5e0138
    // 0x5e011c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e011c: ldur            w4, [x2, #0x17]
    // 0x5e0120: DecompressPointer r4
    //     0x5e0120: add             x4, x4, HEAP, lsl #32
    // 0x5e0124: r8 = X0
    //     0x5e0124: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e0128: LoadField: r9 = r4->field_7
    //     0x5e0128: ldur            x9, [x4, #7]
    // 0x5e012c: r3 = Null
    //     0x5e012c: add             x3, PP, #0x18, lsl #12  ; [pp+0x18da8] Null
    //     0x5e0130: ldr             x3, [x3, #0xda8]
    // 0x5e0134: blr             x9
    // 0x5e0138: ldur            x0, [fp, #-0x10]
    // 0x5e013c: LoadField: r1 = r0->field_b
    //     0x5e013c: ldur            w1, [x0, #0xb]
    // 0x5e0140: LoadField: r2 = r0->field_f
    //     0x5e0140: ldur            w2, [x0, #0xf]
    // 0x5e0144: DecompressPointer r2
    //     0x5e0144: add             x2, x2, HEAP, lsl #32
    // 0x5e0148: LoadField: r3 = r2->field_b
    //     0x5e0148: ldur            w3, [x2, #0xb]
    // 0x5e014c: r2 = LoadInt32Instr(r1)
    //     0x5e014c: sbfx            x2, x1, #1, #0x1f
    // 0x5e0150: stur            x2, [fp, #-0x18]
    // 0x5e0154: r1 = LoadInt32Instr(r3)
    //     0x5e0154: sbfx            x1, x3, #1, #0x1f
    // 0x5e0158: cmp             x2, x1
    // 0x5e015c: b.ne            #0x5e0168
    // 0x5e0160: mov             x1, x0
    // 0x5e0164: r0 = _growToNextCapacity()
    //     0x5e0164: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e0168: ldur            x2, [fp, #-0x10]
    // 0x5e016c: ldur            x3, [fp, #-0x18]
    // 0x5e0170: add             x4, x3, #1
    // 0x5e0174: lsl             x5, x4, #1
    // 0x5e0178: StoreField: r2->field_b = r5
    //     0x5e0178: stur            w5, [x2, #0xb]
    // 0x5e017c: LoadField: r1 = r2->field_f
    //     0x5e017c: ldur            w1, [x2, #0xf]
    // 0x5e0180: DecompressPointer r1
    //     0x5e0180: add             x1, x1, HEAP, lsl #32
    // 0x5e0184: ldur            x0, [fp, #-8]
    // 0x5e0188: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e0188: add             x25, x1, x3, lsl #2
    //     0x5e018c: add             x25, x25, #0xf
    //     0x5e0190: str             w0, [x25]
    //     0x5e0194: tbz             w0, #0, #0x5e01b0
    //     0x5e0198: ldurb           w16, [x1, #-1]
    //     0x5e019c: ldurb           w17, [x0, #-1]
    //     0x5e01a0: and             x16, x17, x16, lsr #2
    //     0x5e01a4: tst             x16, HEAP, lsr #32
    //     0x5e01a8: b.eq            #0x5e01b0
    //     0x5e01ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e01b0: r0 = Null
    //     0x5e01b0: mov             x0, NULL
    // 0x5e01b4: LeaveFrame
    //     0x5e01b4: mov             SP, fp
    //     0x5e01b8: ldp             fp, lr, [SP], #0x10
    // 0x5e01bc: ret
    //     0x5e01bc: ret             
    // 0x5e01c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e01c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e01c4: b               #0x5e00b8
    // 0x5e01c8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e01c8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e01ec, size: 0xe0
    // 0x5e01ec: EnterFrame
    //     0x5e01ec: stp             fp, lr, [SP, #-0x10]!
    //     0x5e01f0: mov             fp, SP
    // 0x5e01f4: AllocStack(0x28)
    //     0x5e01f4: sub             SP, SP, #0x28
    // 0x5e01f8: SetupParameters([dynamic _ /* r0 */])
    //     0x5e01f8: ldr             x0, [fp, #0x18]
    //     0x5e01fc: ldur            w1, [x0, #0x17]
    //     0x5e0200: add             x1, x1, HEAP, lsl #32
    //     0x5e0204: stur            x1, [fp, #-8]
    // 0x5e0208: CheckStackOverflow
    //     0x5e0208: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e020c: cmp             SP, x16
    //     0x5e0210: b.ls            #0x5e02c0
    // 0x5e0214: r1 = 1
    //     0x5e0214: mov             x1, #1
    // 0x5e0218: r0 = AllocateContext()
    //     0x5e0218: bl              #0x927010  ; AllocateContextStub
    // 0x5e021c: mov             x1, x0
    // 0x5e0220: ldur            x0, [fp, #-8]
    // 0x5e0224: stur            x1, [fp, #-0x10]
    // 0x5e0228: StoreField: r1->field_b = r0
    //     0x5e0228: stur            w0, [x1, #0xb]
    // 0x5e022c: LoadField: r2 = r0->field_f
    //     0x5e022c: ldur            w2, [x0, #0xf]
    // 0x5e0230: DecompressPointer r2
    //     0x5e0230: add             x2, x2, HEAP, lsl #32
    // 0x5e0234: LoadField: r0 = r2->field_f
    //     0x5e0234: ldur            w0, [x2, #0xf]
    // 0x5e0238: DecompressPointer r0
    //     0x5e0238: add             x0, x0, HEAP, lsl #32
    // 0x5e023c: cmp             w0, NULL
    // 0x5e0240: b.eq            #0x5e02c8
    // 0x5e0244: r16 = <CurrencyProvider>
    //     0x5e0244: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b70] TypeArguments: <CurrencyProvider>
    //     0x5e0248: ldr             x16, [x16, #0xb70]
    // 0x5e024c: stp             x0, x16, [SP]
    // 0x5e0250: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e0250: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e0254: r0 = ReadContext.read()
    //     0x5e0254: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e0258: mov             x1, x0
    // 0x5e025c: ldur            x2, [fp, #-0x10]
    // 0x5e0260: StoreField: r2->field_f = r0
    //     0x5e0260: stur            w0, [x2, #0xf]
    //     0x5e0264: ldurb           w16, [x2, #-1]
    //     0x5e0268: ldurb           w17, [x0, #-1]
    //     0x5e026c: and             x16, x17, x16, lsr #2
    //     0x5e0270: tst             x16, HEAP, lsr #32
    //     0x5e0274: b.eq            #0x5e027c
    //     0x5e0278: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e027c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e027c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e0280: r0 = loadCurrencies()
    //     0x5e0280: bl              #0x5e02cc  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::loadCurrencies
    // 0x5e0284: ldur            x2, [fp, #-0x10]
    // 0x5e0288: r1 = Function '<anonymous closure>':.
    //     0x5e0288: add             x1, PP, #0x18, lsl #12  ; [pp+0x18db8] AnonymousClosure: (0x5e10f8), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::initState (0x5e009c)
    //     0x5e028c: ldr             x1, [x1, #0xdb8]
    // 0x5e0290: stur            x0, [fp, #-8]
    // 0x5e0294: r0 = AllocateClosure()
    //     0x5e0294: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e0298: r16 = <Null?>
    //     0x5e0298: ldr             x16, [PP, #0x12a8]  ; [pp+0x12a8] TypeArguments: <Null?>
    // 0x5e029c: ldur            lr, [fp, #-8]
    // 0x5e02a0: stp             lr, x16, [SP, #8]
    // 0x5e02a4: str             x0, [SP]
    // 0x5e02a8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5e02a8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5e02ac: r0 = then()
    //     0x5e02ac: bl              #0x8bebc4  ; [dart:async] _Future::then
    // 0x5e02b0: r0 = Null
    //     0x5e02b0: mov             x0, NULL
    // 0x5e02b4: LeaveFrame
    //     0x5e02b4: mov             SP, fp
    //     0x5e02b8: ldp             fp, lr, [SP], #0x10
    // 0x5e02bc: ret
    //     0x5e02bc: ret             
    // 0x5e02c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e02c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e02c4: b               #0x5e0214
    // 0x5e02c8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e02c8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Null <anonymous closure>(dynamic, void) {
    // ** addr: 0x5e10f8, size: 0x74
    // 0x5e10f8: EnterFrame
    //     0x5e10f8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e10fc: mov             fp, SP
    // 0x5e1100: AllocStack(0x8)
    //     0x5e1100: sub             SP, SP, #8
    // 0x5e1104: SetupParameters([dynamic _ /* r0 */])
    //     0x5e1104: ldr             x0, [fp, #0x18]
    //     0x5e1108: ldur            w1, [x0, #0x17]
    //     0x5e110c: add             x1, x1, HEAP, lsl #32
    // 0x5e1110: CheckStackOverflow
    //     0x5e1110: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1114: cmp             SP, x16
    //     0x5e1118: b.ls            #0x5e1164
    // 0x5e111c: LoadField: r2 = r1->field_f
    //     0x5e111c: ldur            w2, [x1, #0xf]
    // 0x5e1120: DecompressPointer r2
    //     0x5e1120: add             x2, x2, HEAP, lsl #32
    // 0x5e1124: stur            x2, [fp, #-8]
    // 0x5e1128: LoadField: r1 = r2->field_2b
    //     0x5e1128: ldur            w1, [x2, #0x2b]
    // 0x5e112c: DecompressPointer r1
    //     0x5e112c: add             x1, x1, HEAP, lsl #32
    // 0x5e1130: r0 = LoadClassIdInstr(r1)
    //     0x5e1130: ldur            x0, [x1, #-1]
    //     0x5e1134: ubfx            x0, x0, #0xc, #0x14
    // 0x5e1138: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x5e1138: mov             x17, #0xcda7
    //     0x5e113c: add             lr, x0, x17
    //     0x5e1140: ldr             lr, [x21, lr, lsl #3]
    //     0x5e1144: blr             lr
    // 0x5e1148: tbnz            w0, #4, #0x5e1154
    // 0x5e114c: ldur            x1, [fp, #-8]
    // 0x5e1150: r0 = initializeDefaultCurrencies()
    //     0x5e1150: bl              #0x5e116c  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::initializeDefaultCurrencies
    // 0x5e1154: r0 = Null
    //     0x5e1154: mov             x0, NULL
    // 0x5e1158: LeaveFrame
    //     0x5e1158: mov             SP, fp
    //     0x5e115c: ldp             fp, lr, [SP], #0x10
    // 0x5e1160: ret
    //     0x5e1160: ret             
    // 0x5e1164: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1164: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e1168: b               #0x5e111c
  }
  _ build(/* No info */) {
    // ** addr: 0x6d9834, size: 0x174
    // 0x6d9834: EnterFrame
    //     0x6d9834: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9838: mov             fp, SP
    // 0x6d983c: AllocStack(0x20)
    //     0x6d983c: sub             SP, SP, #0x20
    // 0x6d9840: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x6d9840: stur            x2, [fp, #-8]
    // 0x6d9844: CheckStackOverflow
    //     0x6d9844: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d9848: cmp             SP, x16
    //     0x6d984c: b.ls            #0x6d99a0
    // 0x6d9850: r1 = 1
    //     0x6d9850: mov             x1, #1
    // 0x6d9854: r0 = AllocateContext()
    //     0x6d9854: bl              #0x927010  ; AllocateContextStub
    // 0x6d9858: mov             x1, x0
    // 0x6d985c: ldur            x0, [fp, #-8]
    // 0x6d9860: StoreField: r1->field_f = r0
    //     0x6d9860: stur            w0, [x1, #0xf]
    // 0x6d9864: mov             x2, x1
    // 0x6d9868: r1 = Function '<anonymous closure>':.
    //     0x6d9868: add             x1, PP, #0x18, lsl #12  ; [pp+0x18cd0] AnonymousClosure: (0x6da1e0), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d986c: ldr             x1, [x1, #0xcd0]
    // 0x6d9870: r0 = AllocateClosure()
    //     0x6d9870: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9874: stur            x0, [fp, #-8]
    // 0x6d9878: r0 = IconButton()
    //     0x6d9878: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6d987c: mov             x3, x0
    // 0x6d9880: ldur            x0, [fp, #-8]
    // 0x6d9884: stur            x3, [fp, #-0x10]
    // 0x6d9888: StoreField: r3->field_3b = r0
    //     0x6d9888: stur            w0, [x3, #0x3b]
    // 0x6d988c: r0 = false
    //     0x6d988c: add             x0, NULL, #0x30  ; false
    // 0x6d9890: StoreField: r3->field_4f = r0
    //     0x6d9890: stur            w0, [x3, #0x4f]
    // 0x6d9894: r1 = Instance_Icon
    //     0x6d9894: add             x1, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x6d9898: ldr             x1, [x1, #0x5b0]
    // 0x6d989c: StoreField: r3->field_1f = r1
    //     0x6d989c: stur            w1, [x3, #0x1f]
    // 0x6d98a0: r1 = Instance__IconButtonVariant
    //     0x6d98a0: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6d98a4: ldr             x1, [x1, #0x1b8]
    // 0x6d98a8: StoreField: r3->field_6f = r1
    //     0x6d98a8: stur            w1, [x3, #0x6f]
    // 0x6d98ac: r1 = Null
    //     0x6d98ac: mov             x1, NULL
    // 0x6d98b0: r2 = 2
    //     0x6d98b0: mov             x2, #2
    // 0x6d98b4: r0 = AllocateArray()
    //     0x6d98b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d98b8: mov             x2, x0
    // 0x6d98bc: ldur            x0, [fp, #-0x10]
    // 0x6d98c0: stur            x2, [fp, #-8]
    // 0x6d98c4: StoreField: r2->field_f = r0
    //     0x6d98c4: stur            w0, [x2, #0xf]
    // 0x6d98c8: r1 = <Widget>
    //     0x6d98c8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d98cc: r0 = AllocateGrowableArray()
    //     0x6d98cc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d98d0: mov             x1, x0
    // 0x6d98d4: ldur            x0, [fp, #-8]
    // 0x6d98d8: stur            x1, [fp, #-0x10]
    // 0x6d98dc: StoreField: r1->field_f = r0
    //     0x6d98dc: stur            w0, [x1, #0xf]
    // 0x6d98e0: r0 = 2
    //     0x6d98e0: mov             x0, #2
    // 0x6d98e4: StoreField: r1->field_b = r0
    //     0x6d98e4: stur            w0, [x1, #0xb]
    // 0x6d98e8: r0 = AppBar()
    //     0x6d98e8: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6d98ec: stur            x0, [fp, #-8]
    // 0x6d98f0: ldur            x16, [fp, #-0x10]
    // 0x6d98f4: str             x16, [SP]
    // 0x6d98f8: mov             x1, x0
    // 0x6d98fc: r2 = Instance_Text
    //     0x6d98fc: add             x2, PP, #0x18, lsl #12  ; [pp+0x18cd8] Obj!Text@a1b311
    //     0x6d9900: ldr             x2, [x2, #0xcd8]
    // 0x6d9904: r4 = const [0, 0x3, 0x1, 0x2, actions, 0x2, null]
    //     0x6d9904: add             x4, PP, #0x18, lsl #12  ; [pp+0x18ce0] List(7) [0, 0x3, 0x1, 0x2, "actions", 0x2, Null]
    //     0x6d9908: ldr             x4, [x4, #0xce0]
    // 0x6d990c: r0 = AppBar()
    //     0x6d990c: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6d9910: r1 = Function '<anonymous closure>':.
    //     0x6d9910: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ce8] AnonymousClosure: (0x6d99a8), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d9914: ldr             x1, [x1, #0xce8]
    // 0x6d9918: r2 = Null
    //     0x6d9918: mov             x2, NULL
    // 0x6d991c: r0 = AllocateClosure()
    //     0x6d991c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9920: r1 = <CurrencyProvider>
    //     0x6d9920: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b70] TypeArguments: <CurrencyProvider>
    //     0x6d9924: ldr             x1, [x1, #0xb70]
    // 0x6d9928: stur            x0, [fp, #-0x10]
    // 0x6d992c: r0 = Consumer()
    //     0x6d992c: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6d9930: mov             x1, x0
    // 0x6d9934: ldur            x0, [fp, #-0x10]
    // 0x6d9938: stur            x1, [fp, #-0x18]
    // 0x6d993c: StoreField: r1->field_13 = r0
    //     0x6d993c: stur            w0, [x1, #0x13]
    // 0x6d9940: r0 = Scaffold()
    //     0x6d9940: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6d9944: ldur            x1, [fp, #-8]
    // 0x6d9948: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d9948: stur            w1, [x0, #0x17]
    // 0x6d994c: ldur            x1, [fp, #-0x18]
    // 0x6d9950: StoreField: r0->field_1b = r1
    //     0x6d9950: stur            w1, [x0, #0x1b]
    // 0x6d9954: r1 = Instance_AlignmentDirectional
    //     0x6d9954: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6d9958: ldr             x1, [x1, #0x350]
    // 0x6d995c: StoreField: r0->field_2f = r1
    //     0x6d995c: stur            w1, [x0, #0x2f]
    // 0x6d9960: r1 = true
    //     0x6d9960: add             x1, NULL, #0x20  ; true
    // 0x6d9964: StoreField: r0->field_5f = r1
    //     0x6d9964: stur            w1, [x0, #0x5f]
    // 0x6d9968: r2 = Instance_DragStartBehavior
    //     0x6d9968: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d996c: StoreField: r0->field_63 = r2
    //     0x6d996c: stur            w2, [x0, #0x63]
    // 0x6d9970: r2 = false
    //     0x6d9970: add             x2, NULL, #0x30  ; false
    // 0x6d9974: StoreField: r0->field_b = r2
    //     0x6d9974: stur            w2, [x0, #0xb]
    // 0x6d9978: StoreField: r0->field_f = r1
    //     0x6d9978: stur            w1, [x0, #0xf]
    // 0x6d997c: StoreField: r0->field_13 = r2
    //     0x6d997c: stur            w2, [x0, #0x13]
    // 0x6d9980: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6d9980: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6d9984: ldr             x2, [x2, #0x358]
    // 0x6d9988: StoreField: r0->field_4b = r2
    //     0x6d9988: stur            w2, [x0, #0x4b]
    // 0x6d998c: StoreField: r0->field_6b = r1
    //     0x6d998c: stur            w1, [x0, #0x6b]
    // 0x6d9990: StoreField: r0->field_6f = r1
    //     0x6d9990: stur            w1, [x0, #0x6f]
    // 0x6d9994: LeaveFrame
    //     0x6d9994: mov             SP, fp
    //     0x6d9998: ldp             fp, lr, [SP], #0x10
    // 0x6d999c: ret
    //     0x6d999c: ret             
    // 0x6d99a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d99a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d99a4: b               #0x6d9850
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, CurrencyProvider, Widget?) {
    // ** addr: 0x6d99a8, size: 0x130
    // 0x6d99a8: EnterFrame
    //     0x6d99a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d99ac: mov             fp, SP
    // 0x6d99b0: AllocStack(0x20)
    //     0x6d99b0: sub             SP, SP, #0x20
    // 0x6d99b4: SetupParameters([dynamic _ /* r0 */])
    //     0x6d99b4: ldr             x0, [fp, #0x28]
    //     0x6d99b8: ldur            w1, [x0, #0x17]
    //     0x6d99bc: add             x1, x1, HEAP, lsl #32
    //     0x6d99c0: stur            x1, [fp, #-8]
    // 0x6d99c4: CheckStackOverflow
    //     0x6d99c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d99c8: cmp             SP, x16
    //     0x6d99cc: b.ls            #0x6d9ad0
    // 0x6d99d0: r1 = 1
    //     0x6d99d0: mov             x1, #1
    // 0x6d99d4: r0 = AllocateContext()
    //     0x6d99d4: bl              #0x927010  ; AllocateContextStub
    // 0x6d99d8: mov             x2, x0
    // 0x6d99dc: ldur            x0, [fp, #-8]
    // 0x6d99e0: stur            x2, [fp, #-0x10]
    // 0x6d99e4: StoreField: r2->field_b = r0
    //     0x6d99e4: stur            w0, [x2, #0xb]
    // 0x6d99e8: ldr             x0, [fp, #0x18]
    // 0x6d99ec: StoreField: r2->field_f = r0
    //     0x6d99ec: stur            w0, [x2, #0xf]
    // 0x6d99f0: LoadField: r1 = r0->field_27
    //     0x6d99f0: ldur            w1, [x0, #0x27]
    // 0x6d99f4: DecompressPointer r1
    //     0x6d99f4: add             x1, x1, HEAP, lsl #32
    // 0x6d99f8: tbnz            w1, #4, #0x6d9a10
    // 0x6d99fc: r0 = Instance_Center
    //     0x6d99fc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x6d9a00: ldr             x0, [x0, #0x710]
    // 0x6d9a04: LeaveFrame
    //     0x6d9a04: mov             SP, fp
    //     0x6d9a08: ldp             fp, lr, [SP], #0x10
    // 0x6d9a0c: ret
    //     0x6d9a0c: ret             
    // 0x6d9a10: LoadField: r1 = r0->field_2b
    //     0x6d9a10: ldur            w1, [x0, #0x2b]
    // 0x6d9a14: DecompressPointer r1
    //     0x6d9a14: add             x1, x1, HEAP, lsl #32
    // 0x6d9a18: r0 = LoadClassIdInstr(r1)
    //     0x6d9a18: ldur            x0, [x1, #-1]
    //     0x6d9a1c: ubfx            x0, x0, #0xc, #0x14
    // 0x6d9a20: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6d9a20: mov             x17, #0xcda7
    //     0x6d9a24: add             lr, x0, x17
    //     0x6d9a28: ldr             lr, [x21, lr, lsl #3]
    //     0x6d9a2c: blr             lr
    // 0x6d9a30: tbnz            w0, #4, #0x6d9a48
    // 0x6d9a34: r0 = Instance_Center
    //     0x6d9a34: add             x0, PP, #0x18, lsl #12  ; [pp+0x18cf0] Obj!Center@a1fdd1
    //     0x6d9a38: ldr             x0, [x0, #0xcf0]
    // 0x6d9a3c: LeaveFrame
    //     0x6d9a3c: mov             SP, fp
    //     0x6d9a40: ldp             fp, lr, [SP], #0x10
    // 0x6d9a44: ret
    //     0x6d9a44: ret             
    // 0x6d9a48: ldur            x2, [fp, #-0x10]
    // 0x6d9a4c: LoadField: r0 = r2->field_f
    //     0x6d9a4c: ldur            w0, [x2, #0xf]
    // 0x6d9a50: DecompressPointer r0
    //     0x6d9a50: add             x0, x0, HEAP, lsl #32
    // 0x6d9a54: LoadField: r1 = r0->field_2b
    //     0x6d9a54: ldur            w1, [x0, #0x2b]
    // 0x6d9a58: DecompressPointer r1
    //     0x6d9a58: add             x1, x1, HEAP, lsl #32
    // 0x6d9a5c: r0 = LoadClassIdInstr(r1)
    //     0x6d9a5c: ldur            x0, [x1, #-1]
    //     0x6d9a60: ubfx            x0, x0, #0xc, #0x14
    // 0x6d9a64: str             x1, [SP]
    // 0x6d9a68: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6d9a68: mov             x17, #0x879f
    //     0x6d9a6c: add             lr, x0, x17
    //     0x6d9a70: ldr             lr, [x21, lr, lsl #3]
    //     0x6d9a74: blr             lr
    // 0x6d9a78: r3 = LoadInt32Instr(r0)
    //     0x6d9a78: sbfx            x3, x0, #1, #0x1f
    // 0x6d9a7c: ldur            x2, [fp, #-0x10]
    // 0x6d9a80: stur            x3, [fp, #-0x18]
    // 0x6d9a84: r1 = Function '<anonymous closure>':.
    //     0x6d9a84: add             x1, PP, #0x18, lsl #12  ; [pp+0x18cf8] AnonymousClosure: (0x6d9ad8), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d9a88: ldr             x1, [x1, #0xcf8]
    // 0x6d9a8c: r0 = AllocateClosure()
    //     0x6d9a8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9a90: stur            x0, [fp, #-8]
    // 0x6d9a94: r0 = ListView()
    //     0x6d9a94: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6d9a98: stur            x0, [fp, #-0x10]
    // 0x6d9a9c: r16 = Instance_EdgeInsets
    //     0x6d9a9c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6d9aa0: ldr             x16, [x16, #0x240]
    // 0x6d9aa4: str             x16, [SP]
    // 0x6d9aa8: mov             x1, x0
    // 0x6d9aac: ldur            x2, [fp, #-8]
    // 0x6d9ab0: ldur            x3, [fp, #-0x18]
    // 0x6d9ab4: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x6d9ab4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x6d9ab8: ldr             x4, [x4, #0xe60]
    // 0x6d9abc: r0 = ListView.builder()
    //     0x6d9abc: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6d9ac0: ldur            x0, [fp, #-0x10]
    // 0x6d9ac4: LeaveFrame
    //     0x6d9ac4: mov             SP, fp
    //     0x6d9ac8: ldp             fp, lr, [SP], #0x10
    // 0x6d9acc: ret
    //     0x6d9acc: ret             
    // 0x6d9ad0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9ad0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d9ad4: b               #0x6d99d0
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6d9ad8, size: 0x470
    // 0x6d9ad8: EnterFrame
    //     0x6d9ad8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9adc: mov             fp, SP
    // 0x6d9ae0: AllocStack(0x48)
    //     0x6d9ae0: sub             SP, SP, #0x48
    // 0x6d9ae4: SetupParameters([dynamic _ /* r0 */])
    //     0x6d9ae4: ldr             x0, [fp, #0x20]
    //     0x6d9ae8: ldur            w1, [x0, #0x17]
    //     0x6d9aec: add             x1, x1, HEAP, lsl #32
    //     0x6d9af0: stur            x1, [fp, #-8]
    // 0x6d9af4: CheckStackOverflow
    //     0x6d9af4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d9af8: cmp             SP, x16
    //     0x6d9afc: b.ls            #0x6d9f1c
    // 0x6d9b00: r1 = 2
    //     0x6d9b00: mov             x1, #2
    // 0x6d9b04: r0 = AllocateContext()
    //     0x6d9b04: bl              #0x927010  ; AllocateContextStub
    // 0x6d9b08: mov             x1, x0
    // 0x6d9b0c: ldur            x0, [fp, #-8]
    // 0x6d9b10: stur            x1, [fp, #-0x10]
    // 0x6d9b14: StoreField: r1->field_b = r0
    //     0x6d9b14: stur            w0, [x1, #0xb]
    // 0x6d9b18: ldr             x2, [fp, #0x18]
    // 0x6d9b1c: StoreField: r1->field_f = r2
    //     0x6d9b1c: stur            w2, [x1, #0xf]
    // 0x6d9b20: LoadField: r2 = r0->field_f
    //     0x6d9b20: ldur            w2, [x0, #0xf]
    // 0x6d9b24: DecompressPointer r2
    //     0x6d9b24: add             x2, x2, HEAP, lsl #32
    // 0x6d9b28: LoadField: r0 = r2->field_2b
    //     0x6d9b28: ldur            w0, [x2, #0x2b]
    // 0x6d9b2c: DecompressPointer r0
    //     0x6d9b2c: add             x0, x0, HEAP, lsl #32
    // 0x6d9b30: r2 = LoadClassIdInstr(r0)
    //     0x6d9b30: ldur            x2, [x0, #-1]
    //     0x6d9b34: ubfx            x2, x2, #0xc, #0x14
    // 0x6d9b38: ldr             x16, [fp, #0x10]
    // 0x6d9b3c: stp             x16, x0, [SP]
    // 0x6d9b40: mov             x0, x2
    // 0x6d9b44: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6d9b44: sub             lr, x0, #0xdfc
    //     0x6d9b48: ldr             lr, [x21, lr, lsl #3]
    //     0x6d9b4c: blr             lr
    // 0x6d9b50: mov             x1, x0
    // 0x6d9b54: ldur            x2, [fp, #-0x10]
    // 0x6d9b58: stur            x1, [fp, #-8]
    // 0x6d9b5c: StoreField: r2->field_13 = r0
    //     0x6d9b5c: stur            w0, [x2, #0x13]
    //     0x6d9b60: ldurb           w16, [x2, #-1]
    //     0x6d9b64: ldurb           w17, [x0, #-1]
    //     0x6d9b68: and             x16, x17, x16, lsr #2
    //     0x6d9b6c: tst             x16, HEAP, lsr #32
    //     0x6d9b70: b.eq            #0x6d9b78
    //     0x6d9b74: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d9b78: r0 = Radius()
    //     0x6d9b78: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6d9b7c: d0 = 12.000000
    //     0x6d9b7c: fmov            d0, #12.00000000
    // 0x6d9b80: stur            x0, [fp, #-0x18]
    // 0x6d9b84: StoreField: r0->field_7 = d0
    //     0x6d9b84: stur            d0, [x0, #7]
    // 0x6d9b88: StoreField: r0->field_f = d0
    //     0x6d9b88: stur            d0, [x0, #0xf]
    // 0x6d9b8c: r0 = BorderRadius()
    //     0x6d9b8c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6d9b90: mov             x3, x0
    // 0x6d9b94: ldur            x0, [fp, #-0x18]
    // 0x6d9b98: stur            x3, [fp, #-0x20]
    // 0x6d9b9c: StoreField: r3->field_7 = r0
    //     0x6d9b9c: stur            w0, [x3, #7]
    // 0x6d9ba0: StoreField: r3->field_b = r0
    //     0x6d9ba0: stur            w0, [x3, #0xb]
    // 0x6d9ba4: StoreField: r3->field_f = r0
    //     0x6d9ba4: stur            w0, [x3, #0xf]
    // 0x6d9ba8: StoreField: r3->field_13 = r0
    //     0x6d9ba8: stur            w0, [x3, #0x13]
    // 0x6d9bac: r1 = _ConstMap len:12
    //     0x6d9bac: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6d9bb0: r2 = 400
    //     0x6d9bb0: mov             x2, #0x190
    // 0x6d9bb4: r0 = []()
    //     0x6d9bb4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6d9bb8: stur            x0, [fp, #-0x18]
    // 0x6d9bbc: cmp             w0, NULL
    // 0x6d9bc0: b.eq            #0x6d9f24
    // 0x6d9bc4: r0 = BorderSide()
    //     0x6d9bc4: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6d9bc8: mov             x1, x0
    // 0x6d9bcc: ldur            x0, [fp, #-0x18]
    // 0x6d9bd0: stur            x1, [fp, #-0x28]
    // 0x6d9bd4: StoreField: r1->field_7 = r0
    //     0x6d9bd4: stur            w0, [x1, #7]
    // 0x6d9bd8: d0 = 1.000000
    //     0x6d9bd8: fmov            d0, #1.00000000
    // 0x6d9bdc: StoreField: r1->field_b = d0
    //     0x6d9bdc: stur            d0, [x1, #0xb]
    // 0x6d9be0: r0 = Instance_BorderStyle
    //     0x6d9be0: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6d9be4: ldr             x0, [x0, #0x738]
    // 0x6d9be8: StoreField: r1->field_13 = r0
    //     0x6d9be8: stur            w0, [x1, #0x13]
    // 0x6d9bec: d0 = -1.000000
    //     0x6d9bec: fmov            d0, #-1.00000000
    // 0x6d9bf0: ArrayStore: r1[0] = d0  ; List_8
    //     0x6d9bf0: stur            d0, [x1, #0x17]
    // 0x6d9bf4: r0 = RoundedRectangleBorder()
    //     0x6d9bf4: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6d9bf8: mov             x1, x0
    // 0x6d9bfc: ldur            x0, [fp, #-0x20]
    // 0x6d9c00: stur            x1, [fp, #-0x30]
    // 0x6d9c04: StoreField: r1->field_b = r0
    //     0x6d9c04: stur            w0, [x1, #0xb]
    // 0x6d9c08: ldur            x0, [fp, #-0x28]
    // 0x6d9c0c: StoreField: r1->field_7 = r0
    //     0x6d9c0c: stur            w0, [x1, #7]
    // 0x6d9c10: ldur            x0, [fp, #-8]
    // 0x6d9c14: LoadField: r2 = r0->field_b
    //     0x6d9c14: ldur            w2, [x0, #0xb]
    // 0x6d9c18: DecompressPointer r2
    //     0x6d9c18: add             x2, x2, HEAP, lsl #32
    // 0x6d9c1c: stur            x2, [fp, #-0x18]
    // 0x6d9c20: r0 = Text()
    //     0x6d9c20: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d9c24: mov             x3, x0
    // 0x6d9c28: ldur            x0, [fp, #-0x18]
    // 0x6d9c2c: stur            x3, [fp, #-0x20]
    // 0x6d9c30: StoreField: r3->field_b = r0
    //     0x6d9c30: stur            w0, [x3, #0xb]
    // 0x6d9c34: r0 = Instance_TextStyle
    //     0x6d9c34: add             x0, PP, #0x18, lsl #12  ; [pp+0x18d00] Obj!TextStyle@a176e1
    //     0x6d9c38: ldr             x0, [x0, #0xd00]
    // 0x6d9c3c: StoreField: r3->field_13 = r0
    //     0x6d9c3c: stur            w0, [x3, #0x13]
    // 0x6d9c40: ldur            x0, [fp, #-8]
    // 0x6d9c44: LoadField: r4 = r0->field_f
    //     0x6d9c44: ldur            w4, [x0, #0xf]
    // 0x6d9c48: DecompressPointer r4
    //     0x6d9c48: add             x4, x4, HEAP, lsl #32
    // 0x6d9c4c: stur            x4, [fp, #-0x18]
    // 0x6d9c50: r1 = _ConstMap len:12
    //     0x6d9c50: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6d9c54: r2 = 1600
    //     0x6d9c54: mov             x2, #0x640
    // 0x6d9c58: r0 = []()
    //     0x6d9c58: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6d9c5c: stur            x0, [fp, #-0x28]
    // 0x6d9c60: cmp             w0, NULL
    // 0x6d9c64: b.eq            #0x6d9f28
    // 0x6d9c68: r0 = TextStyle()
    //     0x6d9c68: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6d9c6c: mov             x1, x0
    // 0x6d9c70: r0 = true
    //     0x6d9c70: add             x0, NULL, #0x20  ; true
    // 0x6d9c74: stur            x1, [fp, #-0x38]
    // 0x6d9c78: StoreField: r1->field_7 = r0
    //     0x6d9c78: stur            w0, [x1, #7]
    // 0x6d9c7c: ldur            x2, [fp, #-0x28]
    // 0x6d9c80: StoreField: r1->field_b = r2
    //     0x6d9c80: stur            w2, [x1, #0xb]
    // 0x6d9c84: r2 = 16.000000
    //     0x6d9c84: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x6d9c88: ldr             x2, [x2, #0x358]
    // 0x6d9c8c: StoreField: r1->field_1f = r2
    //     0x6d9c8c: stur            w2, [x1, #0x1f]
    // 0x6d9c90: r2 = Instance_FontWeight
    //     0x6d9c90: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x6d9c94: ldr             x2, [x2, #0x990]
    // 0x6d9c98: StoreField: r1->field_23 = r2
    //     0x6d9c98: stur            w2, [x1, #0x23]
    // 0x6d9c9c: r0 = Text()
    //     0x6d9c9c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d9ca0: mov             x3, x0
    // 0x6d9ca4: ldur            x0, [fp, #-0x18]
    // 0x6d9ca8: stur            x3, [fp, #-0x28]
    // 0x6d9cac: StoreField: r3->field_b = r0
    //     0x6d9cac: stur            w0, [x3, #0xb]
    // 0x6d9cb0: ldur            x0, [fp, #-0x38]
    // 0x6d9cb4: StoreField: r3->field_13 = r0
    //     0x6d9cb4: stur            w0, [x3, #0x13]
    // 0x6d9cb8: ldur            x0, [fp, #-8]
    // 0x6d9cbc: LoadField: d0 = r0->field_13
    //     0x6d9cbc: ldur            d0, [x0, #0x13]
    // 0x6d9cc0: r1 = inline_Allocate_Double()
    //     0x6d9cc0: ldp             x1, x0, [THR, #0x60]  ; THR::top
    //     0x6d9cc4: add             x1, x1, #0x10
    //     0x6d9cc8: cmp             x0, x1
    //     0x6d9ccc: b.ls            #0x6d9f2c
    //     0x6d9cd0: str             x1, [THR, #0x60]  ; THR::top
    //     0x6d9cd4: sub             x1, x1, #0xf
    //     0x6d9cd8: mov             x0, #0xe15c
    //     0x6d9cdc: movk            x0, #3, lsl #16
    //     0x6d9ce0: stur            x0, [x1, #-1]
    // 0x6d9ce4: StoreField: r1->field_7 = d0
    //     0x6d9ce4: stur            d0, [x1, #7]
    // 0x6d9ce8: r2 = 2
    //     0x6d9ce8: mov             x2, #2
    // 0x6d9cec: r0 = toStringAsFixed()
    //     0x6d9cec: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x6d9cf0: r1 = Null
    //     0x6d9cf0: mov             x1, NULL
    // 0x6d9cf4: r2 = 4
    //     0x6d9cf4: mov             x2, #4
    // 0x6d9cf8: stur            x0, [fp, #-8]
    // 0x6d9cfc: r0 = AllocateArray()
    //     0x6d9cfc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d9d00: mov             x1, x0
    // 0x6d9d04: ldur            x0, [fp, #-8]
    // 0x6d9d08: StoreField: r1->field_f = r0
    //     0x6d9d08: stur            w0, [x1, #0xf]
    // 0x6d9d0c: r16 = " ₺"
    //     0x6d9d0c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18d08] " ₺"
    //     0x6d9d10: ldr             x16, [x16, #0xd08]
    // 0x6d9d14: StoreField: r1->field_13 = r16
    //     0x6d9d14: stur            w16, [x1, #0x13]
    // 0x6d9d18: str             x1, [SP]
    // 0x6d9d1c: r0 = _interpolate()
    //     0x6d9d1c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6d9d20: stur            x0, [fp, #-8]
    // 0x6d9d24: r0 = Text()
    //     0x6d9d24: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d9d28: mov             x3, x0
    // 0x6d9d2c: ldur            x0, [fp, #-8]
    // 0x6d9d30: stur            x3, [fp, #-0x18]
    // 0x6d9d34: StoreField: r3->field_b = r0
    //     0x6d9d34: stur            w0, [x3, #0xb]
    // 0x6d9d38: r0 = Instance_TextStyle
    //     0x6d9d38: add             x0, PP, #0x18, lsl #12  ; [pp+0x18d10] Obj!TextStyle@a17671
    //     0x6d9d3c: ldr             x0, [x0, #0xd10]
    // 0x6d9d40: StoreField: r3->field_13 = r0
    //     0x6d9d40: stur            w0, [x3, #0x13]
    // 0x6d9d44: ldur            x2, [fp, #-0x10]
    // 0x6d9d48: r1 = Function '<anonymous closure>':.
    //     0x6d9d48: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d18] AnonymousClosure: (0x6da028), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d9d4c: ldr             x1, [x1, #0xd18]
    // 0x6d9d50: r0 = AllocateClosure()
    //     0x6d9d50: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9d54: stur            x0, [fp, #-8]
    // 0x6d9d58: r0 = IconButton()
    //     0x6d9d58: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6d9d5c: mov             x3, x0
    // 0x6d9d60: ldur            x0, [fp, #-8]
    // 0x6d9d64: stur            x3, [fp, #-0x38]
    // 0x6d9d68: StoreField: r3->field_3b = r0
    //     0x6d9d68: stur            w0, [x3, #0x3b]
    // 0x6d9d6c: r0 = false
    //     0x6d9d6c: add             x0, NULL, #0x30  ; false
    // 0x6d9d70: StoreField: r3->field_4f = r0
    //     0x6d9d70: stur            w0, [x3, #0x4f]
    // 0x6d9d74: r1 = Instance_Icon
    //     0x6d9d74: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d20] Obj!Icon@a1e2f1
    //     0x6d9d78: ldr             x1, [x1, #0xd20]
    // 0x6d9d7c: StoreField: r3->field_1f = r1
    //     0x6d9d7c: stur            w1, [x3, #0x1f]
    // 0x6d9d80: r4 = Instance__IconButtonVariant
    //     0x6d9d80: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6d9d84: ldr             x4, [x4, #0x1b8]
    // 0x6d9d88: StoreField: r3->field_6f = r4
    //     0x6d9d88: stur            w4, [x3, #0x6f]
    // 0x6d9d8c: ldur            x2, [fp, #-0x10]
    // 0x6d9d90: r1 = Function '<anonymous closure>':.
    //     0x6d9d90: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d28] AnonymousClosure: (0x6d9f9c), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d9d94: ldr             x1, [x1, #0xd28]
    // 0x6d9d98: r0 = AllocateClosure()
    //     0x6d9d98: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9d9c: stur            x0, [fp, #-8]
    // 0x6d9da0: r0 = IconButton()
    //     0x6d9da0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6d9da4: mov             x3, x0
    // 0x6d9da8: ldur            x0, [fp, #-8]
    // 0x6d9dac: stur            x3, [fp, #-0x10]
    // 0x6d9db0: StoreField: r3->field_3b = r0
    //     0x6d9db0: stur            w0, [x3, #0x3b]
    // 0x6d9db4: r0 = false
    //     0x6d9db4: add             x0, NULL, #0x30  ; false
    // 0x6d9db8: StoreField: r3->field_4f = r0
    //     0x6d9db8: stur            w0, [x3, #0x4f]
    // 0x6d9dbc: r1 = Instance_Icon
    //     0x6d9dbc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d30] Obj!Icon@a1e2b1
    //     0x6d9dc0: ldr             x1, [x1, #0xd30]
    // 0x6d9dc4: StoreField: r3->field_1f = r1
    //     0x6d9dc4: stur            w1, [x3, #0x1f]
    // 0x6d9dc8: r1 = Instance__IconButtonVariant
    //     0x6d9dc8: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6d9dcc: ldr             x1, [x1, #0x1b8]
    // 0x6d9dd0: StoreField: r3->field_6f = r1
    //     0x6d9dd0: stur            w1, [x3, #0x6f]
    // 0x6d9dd4: r1 = Null
    //     0x6d9dd4: mov             x1, NULL
    // 0x6d9dd8: r2 = 4
    //     0x6d9dd8: mov             x2, #4
    // 0x6d9ddc: r0 = AllocateArray()
    //     0x6d9ddc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d9de0: mov             x2, x0
    // 0x6d9de4: ldur            x0, [fp, #-0x38]
    // 0x6d9de8: stur            x2, [fp, #-8]
    // 0x6d9dec: StoreField: r2->field_f = r0
    //     0x6d9dec: stur            w0, [x2, #0xf]
    // 0x6d9df0: ldur            x0, [fp, #-0x10]
    // 0x6d9df4: StoreField: r2->field_13 = r0
    //     0x6d9df4: stur            w0, [x2, #0x13]
    // 0x6d9df8: r1 = <Widget>
    //     0x6d9df8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d9dfc: r0 = AllocateGrowableArray()
    //     0x6d9dfc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d9e00: mov             x1, x0
    // 0x6d9e04: ldur            x0, [fp, #-8]
    // 0x6d9e08: stur            x1, [fp, #-0x10]
    // 0x6d9e0c: StoreField: r1->field_f = r0
    //     0x6d9e0c: stur            w0, [x1, #0xf]
    // 0x6d9e10: r0 = 4
    //     0x6d9e10: mov             x0, #4
    // 0x6d9e14: StoreField: r1->field_b = r0
    //     0x6d9e14: stur            w0, [x1, #0xb]
    // 0x6d9e18: r0 = Row()
    //     0x6d9e18: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6d9e1c: mov             x1, x0
    // 0x6d9e20: r0 = Instance_Axis
    //     0x6d9e20: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6d9e24: stur            x1, [fp, #-8]
    // 0x6d9e28: StoreField: r1->field_f = r0
    //     0x6d9e28: stur            w0, [x1, #0xf]
    // 0x6d9e2c: r0 = Instance_MainAxisAlignment
    //     0x6d9e2c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d9e30: ldr             x0, [x0, #0x230]
    // 0x6d9e34: StoreField: r1->field_13 = r0
    //     0x6d9e34: stur            w0, [x1, #0x13]
    // 0x6d9e38: r0 = Instance_MainAxisSize
    //     0x6d9e38: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6d9e3c: ldr             x0, [x0, #0xb60]
    // 0x6d9e40: ArrayStore: r1[0] = r0  ; List_4
    //     0x6d9e40: stur            w0, [x1, #0x17]
    // 0x6d9e44: r0 = Instance_CrossAxisAlignment
    //     0x6d9e44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d9e48: ldr             x0, [x0, #0x338]
    // 0x6d9e4c: StoreField: r1->field_1b = r0
    //     0x6d9e4c: stur            w0, [x1, #0x1b]
    // 0x6d9e50: r0 = Instance_VerticalDirection
    //     0x6d9e50: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d9e54: ldr             x0, [x0, #0x340]
    // 0x6d9e58: StoreField: r1->field_23 = r0
    //     0x6d9e58: stur            w0, [x1, #0x23]
    // 0x6d9e5c: r0 = Instance_Clip
    //     0x6d9e5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d9e60: ldr             x0, [x0, #0x348]
    // 0x6d9e64: StoreField: r1->field_2b = r0
    //     0x6d9e64: stur            w0, [x1, #0x2b]
    // 0x6d9e68: StoreField: r1->field_2f = rZR
    //     0x6d9e68: stur            xzr, [x1, #0x2f]
    // 0x6d9e6c: ldur            x0, [fp, #-0x10]
    // 0x6d9e70: StoreField: r1->field_b = r0
    //     0x6d9e70: stur            w0, [x1, #0xb]
    // 0x6d9e74: r0 = ListTile()
    //     0x6d9e74: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6d9e78: mov             x1, x0
    // 0x6d9e7c: ldur            x0, [fp, #-0x20]
    // 0x6d9e80: stur            x1, [fp, #-0x10]
    // 0x6d9e84: StoreField: r1->field_b = r0
    //     0x6d9e84: stur            w0, [x1, #0xb]
    // 0x6d9e88: ldur            x0, [fp, #-0x28]
    // 0x6d9e8c: StoreField: r1->field_f = r0
    //     0x6d9e8c: stur            w0, [x1, #0xf]
    // 0x6d9e90: ldur            x0, [fp, #-0x18]
    // 0x6d9e94: StoreField: r1->field_13 = r0
    //     0x6d9e94: stur            w0, [x1, #0x13]
    // 0x6d9e98: ldur            x0, [fp, #-8]
    // 0x6d9e9c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6d9e9c: stur            w0, [x1, #0x17]
    // 0x6d9ea0: r0 = Instance_EdgeInsets
    //     0x6d9ea0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6d9ea4: ldr             x0, [x0, #0x240]
    // 0x6d9ea8: StoreField: r1->field_47 = r0
    //     0x6d9ea8: stur            w0, [x1, #0x47]
    // 0x6d9eac: r0 = true
    //     0x6d9eac: add             x0, NULL, #0x20  ; true
    // 0x6d9eb0: StoreField: r1->field_4b = r0
    //     0x6d9eb0: stur            w0, [x1, #0x4b]
    // 0x6d9eb4: r2 = false
    //     0x6d9eb4: add             x2, NULL, #0x30  ; false
    // 0x6d9eb8: StoreField: r1->field_5f = r2
    //     0x6d9eb8: stur            w2, [x1, #0x5f]
    // 0x6d9ebc: StoreField: r1->field_73 = r2
    //     0x6d9ebc: stur            w2, [x1, #0x73]
    // 0x6d9ec0: StoreField: r1->field_93 = r0
    //     0x6d9ec0: stur            w0, [x1, #0x93]
    // 0x6d9ec4: r0 = Card()
    //     0x6d9ec4: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x6d9ec8: stur            x0, [fp, #-8]
    // 0x6d9ecc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6d9ecc: stur            xzr, [x0, #0x17]
    // 0x6d9ed0: ldur            x1, [fp, #-0x30]
    // 0x6d9ed4: StoreField: r0->field_1f = r1
    //     0x6d9ed4: stur            w1, [x0, #0x1f]
    // 0x6d9ed8: r1 = true
    //     0x6d9ed8: add             x1, NULL, #0x20  ; true
    // 0x6d9edc: StoreField: r0->field_23 = r1
    //     0x6d9edc: stur            w1, [x0, #0x23]
    // 0x6d9ee0: ldur            x2, [fp, #-0x10]
    // 0x6d9ee4: StoreField: r0->field_33 = r2
    //     0x6d9ee4: stur            w2, [x0, #0x33]
    // 0x6d9ee8: StoreField: r0->field_2f = r1
    //     0x6d9ee8: stur            w1, [x0, #0x2f]
    // 0x6d9eec: r1 = Instance__CardVariant
    //     0x6d9eec: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x6d9ef0: ldr             x1, [x1, #0xd38]
    // 0x6d9ef4: StoreField: r0->field_37 = r1
    //     0x6d9ef4: stur            w1, [x0, #0x37]
    // 0x6d9ef8: r0 = Padding()
    //     0x6d9ef8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6d9efc: r1 = Instance_EdgeInsets
    //     0x6d9efc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d40] Obj!EdgeInsets@a0c2f1
    //     0x6d9f00: ldr             x1, [x1, #0xd40]
    // 0x6d9f04: StoreField: r0->field_f = r1
    //     0x6d9f04: stur            w1, [x0, #0xf]
    // 0x6d9f08: ldur            x1, [fp, #-8]
    // 0x6d9f0c: StoreField: r0->field_b = r1
    //     0x6d9f0c: stur            w1, [x0, #0xb]
    // 0x6d9f10: LeaveFrame
    //     0x6d9f10: mov             SP, fp
    //     0x6d9f14: ldp             fp, lr, [SP], #0x10
    // 0x6d9f18: ret
    //     0x6d9f18: ret             
    // 0x6d9f1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9f1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d9f20: b               #0x6d9b00
    // 0x6d9f24: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d9f24: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d9f28: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d9f28: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d9f2c: SaveReg d0
    //     0x6d9f2c: str             q0, [SP, #-0x10]!
    // 0x6d9f30: SaveReg r3
    //     0x6d9f30: str             x3, [SP, #-8]!
    // 0x6d9f34: r0 = AllocateDouble()
    //     0x6d9f34: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6d9f38: mov             x1, x0
    // 0x6d9f3c: RestoreReg r3
    //     0x6d9f3c: ldr             x3, [SP], #8
    // 0x6d9f40: RestoreReg d0
    //     0x6d9f40: ldr             q0, [SP], #0x10
    // 0x6d9f44: b               #0x6d9ce4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d9f9c, size: 0x68
    // 0x6d9f9c: EnterFrame
    //     0x6d9f9c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9fa0: mov             fp, SP
    // 0x6d9fa4: AllocStack(0x20)
    //     0x6d9fa4: sub             SP, SP, #0x20
    // 0x6d9fa8: SetupParameters([dynamic _ /* r0 */])
    //     0x6d9fa8: ldr             x0, [fp, #0x10]
    //     0x6d9fac: ldur            w1, [x0, #0x17]
    //     0x6d9fb0: add             x1, x1, HEAP, lsl #32
    // 0x6d9fb4: CheckStackOverflow
    //     0x6d9fb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d9fb8: cmp             SP, x16
    //     0x6d9fbc: b.ls            #0x6d9ffc
    // 0x6d9fc0: LoadField: r0 = r1->field_f
    //     0x6d9fc0: ldur            w0, [x1, #0xf]
    // 0x6d9fc4: DecompressPointer r0
    //     0x6d9fc4: add             x0, x0, HEAP, lsl #32
    // 0x6d9fc8: stur            x0, [fp, #-8]
    // 0x6d9fcc: r1 = Function '<anonymous closure>':.
    //     0x6d9fcc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d48] AnonymousClosure: (0x6da004), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6d9fd0: ldr             x1, [x1, #0xd48]
    // 0x6d9fd4: r2 = Null
    //     0x6d9fd4: mov             x2, NULL
    // 0x6d9fd8: r0 = AllocateClosure()
    //     0x6d9fd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d9fdc: stp             x0, NULL, [SP, #8]
    // 0x6d9fe0: ldur            x16, [fp, #-8]
    // 0x6d9fe4: str             x16, [SP]
    // 0x6d9fe8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d9fe8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d9fec: r0 = showDialog()
    //     0x6d9fec: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6d9ff0: LeaveFrame
    //     0x6d9ff0: mov             SP, fp
    //     0x6d9ff4: ldp             fp, lr, [SP], #0x10
    // 0x6d9ff8: ret
    //     0x6d9ff8: ret             
    // 0x6d9ffc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9ffc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da000: b               #0x6d9fc0
  }
  [closure] DeleteDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6da004, size: 0x18
    // 0x6da004: EnterFrame
    //     0x6da004: stp             fp, lr, [SP, #-0x10]!
    //     0x6da008: mov             fp, SP
    // 0x6da00c: r0 = DeleteDialog()
    //     0x6da00c: bl              #0x6da01c  ; AllocateDeleteDialogStub -> DeleteDialog (size=0x10)
    // 0x6da010: LeaveFrame
    //     0x6da010: mov             SP, fp
    //     0x6da014: ldp             fp, lr, [SP], #0x10
    // 0x6da018: ret
    //     0x6da018: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6da028, size: 0x64
    // 0x6da028: EnterFrame
    //     0x6da028: stp             fp, lr, [SP, #-0x10]!
    //     0x6da02c: mov             fp, SP
    // 0x6da030: AllocStack(0x20)
    //     0x6da030: sub             SP, SP, #0x20
    // 0x6da034: SetupParameters([dynamic _ /* r0 */])
    //     0x6da034: ldr             x0, [fp, #0x10]
    //     0x6da038: ldur            w2, [x0, #0x17]
    //     0x6da03c: add             x2, x2, HEAP, lsl #32
    // 0x6da040: CheckStackOverflow
    //     0x6da040: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da044: cmp             SP, x16
    //     0x6da048: b.ls            #0x6da084
    // 0x6da04c: LoadField: r0 = r2->field_f
    //     0x6da04c: ldur            w0, [x2, #0xf]
    // 0x6da050: DecompressPointer r0
    //     0x6da050: add             x0, x0, HEAP, lsl #32
    // 0x6da054: stur            x0, [fp, #-8]
    // 0x6da058: r1 = Function '<anonymous closure>':.
    //     0x6da058: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d50] AnonymousClosure: (0x6da08c), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6da05c: ldr             x1, [x1, #0xd50]
    // 0x6da060: r0 = AllocateClosure()
    //     0x6da060: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da064: stp             x0, NULL, [SP, #8]
    // 0x6da068: ldur            x16, [fp, #-8]
    // 0x6da06c: str             x16, [SP]
    // 0x6da070: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6da070: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6da074: r0 = showDialog()
    //     0x6da074: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6da078: LeaveFrame
    //     0x6da078: mov             SP, fp
    //     0x6da07c: ldp             fp, lr, [SP], #0x10
    // 0x6da080: ret
    //     0x6da080: ret             
    // 0x6da084: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6da084: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da088: b               #0x6da04c
  }
  [closure] EditDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6da08c, size: 0x148
    // 0x6da08c: EnterFrame
    //     0x6da08c: stp             fp, lr, [SP, #-0x10]!
    //     0x6da090: mov             fp, SP
    // 0x6da094: AllocStack(0x30)
    //     0x6da094: sub             SP, SP, #0x30
    // 0x6da098: SetupParameters([dynamic _ /* r0 */])
    //     0x6da098: ldr             x0, [fp, #0x18]
    //     0x6da09c: ldur            w1, [x0, #0x17]
    //     0x6da0a0: add             x1, x1, HEAP, lsl #32
    // 0x6da0a4: CheckStackOverflow
    //     0x6da0a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da0a8: cmp             SP, x16
    //     0x6da0ac: b.ls            #0x6da1b0
    // 0x6da0b0: LoadField: r0 = r1->field_13
    //     0x6da0b0: ldur            w0, [x1, #0x13]
    // 0x6da0b4: DecompressPointer r0
    //     0x6da0b4: add             x0, x0, HEAP, lsl #32
    // 0x6da0b8: stur            x0, [fp, #-0x10]
    // 0x6da0bc: LoadField: r2 = r0->field_b
    //     0x6da0bc: ldur            w2, [x0, #0xb]
    // 0x6da0c0: DecompressPointer r2
    //     0x6da0c0: add             x2, x2, HEAP, lsl #32
    // 0x6da0c4: stur            x2, [fp, #-8]
    // 0x6da0c8: r1 = <TextEditingValue>
    //     0x6da0c8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da0cc: r0 = TextEditingController()
    //     0x6da0cc: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da0d0: stur            x0, [fp, #-0x18]
    // 0x6da0d4: ldur            x16, [fp, #-8]
    // 0x6da0d8: str             x16, [SP]
    // 0x6da0dc: mov             x1, x0
    // 0x6da0e0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6da0e0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6da0e4: ldr             x4, [x4, #0xa20]
    // 0x6da0e8: r0 = TextEditingController()
    //     0x6da0e8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da0ec: ldur            x0, [fp, #-0x10]
    // 0x6da0f0: LoadField: r2 = r0->field_f
    //     0x6da0f0: ldur            w2, [x0, #0xf]
    // 0x6da0f4: DecompressPointer r2
    //     0x6da0f4: add             x2, x2, HEAP, lsl #32
    // 0x6da0f8: stur            x2, [fp, #-8]
    // 0x6da0fc: r1 = <TextEditingValue>
    //     0x6da0fc: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da100: r0 = TextEditingController()
    //     0x6da100: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da104: stur            x0, [fp, #-0x20]
    // 0x6da108: ldur            x16, [fp, #-8]
    // 0x6da10c: str             x16, [SP]
    // 0x6da110: mov             x1, x0
    // 0x6da114: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6da114: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6da118: ldr             x4, [x4, #0xa20]
    // 0x6da11c: r0 = TextEditingController()
    //     0x6da11c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da120: ldur            x0, [fp, #-0x10]
    // 0x6da124: LoadField: d0 = r0->field_13
    //     0x6da124: ldur            d0, [x0, #0x13]
    // 0x6da128: r1 = inline_Allocate_Double()
    //     0x6da128: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x6da12c: add             x1, x1, #0x10
    //     0x6da130: cmp             x2, x1
    //     0x6da134: b.ls            #0x6da1b8
    //     0x6da138: str             x1, [THR, #0x60]  ; THR::top
    //     0x6da13c: sub             x1, x1, #0xf
    //     0x6da140: mov             x2, #0xe15c
    //     0x6da144: movk            x2, #3, lsl #16
    //     0x6da148: stur            x2, [x1, #-1]
    // 0x6da14c: StoreField: r1->field_7 = d0
    //     0x6da14c: stur            d0, [x1, #7]
    // 0x6da150: str             x1, [SP]
    // 0x6da154: r0 = toString()
    //     0x6da154: bl              #0x7b549c  ; [dart:core] _Double::toString
    // 0x6da158: r1 = <TextEditingValue>
    //     0x6da158: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da15c: stur            x0, [fp, #-8]
    // 0x6da160: r0 = TextEditingController()
    //     0x6da160: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da164: stur            x0, [fp, #-0x28]
    // 0x6da168: ldur            x16, [fp, #-8]
    // 0x6da16c: str             x16, [SP]
    // 0x6da170: mov             x1, x0
    // 0x6da174: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6da174: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6da178: ldr             x4, [x4, #0xa20]
    // 0x6da17c: r0 = TextEditingController()
    //     0x6da17c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da180: r0 = EditDialog()
    //     0x6da180: bl              #0x6da1d4  ; AllocateEditDialogStub -> EditDialog (size=0x1c)
    // 0x6da184: ldur            x1, [fp, #-0x10]
    // 0x6da188: StoreField: r0->field_b = r1
    //     0x6da188: stur            w1, [x0, #0xb]
    // 0x6da18c: ldur            x1, [fp, #-0x18]
    // 0x6da190: StoreField: r0->field_f = r1
    //     0x6da190: stur            w1, [x0, #0xf]
    // 0x6da194: ldur            x1, [fp, #-0x20]
    // 0x6da198: StoreField: r0->field_13 = r1
    //     0x6da198: stur            w1, [x0, #0x13]
    // 0x6da19c: ldur            x1, [fp, #-0x28]
    // 0x6da1a0: ArrayStore: r0[0] = r1  ; List_4
    //     0x6da1a0: stur            w1, [x0, #0x17]
    // 0x6da1a4: LeaveFrame
    //     0x6da1a4: mov             SP, fp
    //     0x6da1a8: ldp             fp, lr, [SP], #0x10
    // 0x6da1ac: ret
    //     0x6da1ac: ret             
    // 0x6da1b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6da1b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da1b4: b               #0x6da0b0
    // 0x6da1b8: SaveReg d0
    //     0x6da1b8: str             q0, [SP, #-0x10]!
    // 0x6da1bc: SaveReg r0
    //     0x6da1bc: str             x0, [SP, #-8]!
    // 0x6da1c0: r0 = AllocateDouble()
    //     0x6da1c0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6da1c4: mov             x1, x0
    // 0x6da1c8: RestoreReg r0
    //     0x6da1c8: ldr             x0, [SP], #8
    // 0x6da1cc: RestoreReg d0
    //     0x6da1cc: ldr             q0, [SP], #0x10
    // 0x6da1d0: b               #0x6da14c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6da1e0, size: 0x68
    // 0x6da1e0: EnterFrame
    //     0x6da1e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6da1e4: mov             fp, SP
    // 0x6da1e8: AllocStack(0x20)
    //     0x6da1e8: sub             SP, SP, #0x20
    // 0x6da1ec: SetupParameters([dynamic _ /* r0 */])
    //     0x6da1ec: ldr             x0, [fp, #0x10]
    //     0x6da1f0: ldur            w1, [x0, #0x17]
    //     0x6da1f4: add             x1, x1, HEAP, lsl #32
    // 0x6da1f8: CheckStackOverflow
    //     0x6da1f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da1fc: cmp             SP, x16
    //     0x6da200: b.ls            #0x6da240
    // 0x6da204: LoadField: r0 = r1->field_f
    //     0x6da204: ldur            w0, [x1, #0xf]
    // 0x6da208: DecompressPointer r0
    //     0x6da208: add             x0, x0, HEAP, lsl #32
    // 0x6da20c: stur            x0, [fp, #-8]
    // 0x6da210: r1 = Function '<anonymous closure>':.
    //     0x6da210: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d98] AnonymousClosure: (0x6da248), in [package:umrem_demo/features/admin/screens/currency_page.dart] _CurrencyPageState::build (0x6d9834)
    //     0x6da214: ldr             x1, [x1, #0xd98]
    // 0x6da218: r2 = Null
    //     0x6da218: mov             x2, NULL
    // 0x6da21c: r0 = AllocateClosure()
    //     0x6da21c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da220: stp             x0, NULL, [SP, #8]
    // 0x6da224: ldur            x16, [fp, #-8]
    // 0x6da228: str             x16, [SP]
    // 0x6da22c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6da22c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6da230: r0 = showDialog()
    //     0x6da230: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6da234: LeaveFrame
    //     0x6da234: mov             SP, fp
    //     0x6da238: ldp             fp, lr, [SP], #0x10
    // 0x6da23c: ret
    //     0x6da23c: ret             
    // 0x6da240: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6da240: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da244: b               #0x6da204
  }
  [closure] EditDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6da248, size: 0x90
    // 0x6da248: EnterFrame
    //     0x6da248: stp             fp, lr, [SP, #-0x10]!
    //     0x6da24c: mov             fp, SP
    // 0x6da250: AllocStack(0x18)
    //     0x6da250: sub             SP, SP, #0x18
    // 0x6da254: CheckStackOverflow
    //     0x6da254: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da258: cmp             SP, x16
    //     0x6da25c: b.ls            #0x6da2d0
    // 0x6da260: r1 = <TextEditingValue>
    //     0x6da260: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da264: r0 = TextEditingController()
    //     0x6da264: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da268: mov             x1, x0
    // 0x6da26c: stur            x0, [fp, #-8]
    // 0x6da270: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da270: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da274: r0 = TextEditingController()
    //     0x6da274: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da278: r1 = <TextEditingValue>
    //     0x6da278: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da27c: r0 = TextEditingController()
    //     0x6da27c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da280: mov             x1, x0
    // 0x6da284: stur            x0, [fp, #-0x10]
    // 0x6da288: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da288: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da28c: r0 = TextEditingController()
    //     0x6da28c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da290: r1 = <TextEditingValue>
    //     0x6da290: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6da294: r0 = TextEditingController()
    //     0x6da294: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6da298: mov             x1, x0
    // 0x6da29c: stur            x0, [fp, #-0x18]
    // 0x6da2a0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da2a0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da2a4: r0 = TextEditingController()
    //     0x6da2a4: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6da2a8: r0 = EditDialog()
    //     0x6da2a8: bl              #0x6da1d4  ; AllocateEditDialogStub -> EditDialog (size=0x1c)
    // 0x6da2ac: ldur            x1, [fp, #-8]
    // 0x6da2b0: StoreField: r0->field_f = r1
    //     0x6da2b0: stur            w1, [x0, #0xf]
    // 0x6da2b4: ldur            x1, [fp, #-0x10]
    // 0x6da2b8: StoreField: r0->field_13 = r1
    //     0x6da2b8: stur            w1, [x0, #0x13]
    // 0x6da2bc: ldur            x1, [fp, #-0x18]
    // 0x6da2c0: ArrayStore: r0[0] = r1  ; List_4
    //     0x6da2c0: stur            w1, [x0, #0x17]
    // 0x6da2c4: LeaveFrame
    //     0x6da2c4: mov             SP, fp
    //     0x6da2c8: ldp             fp, lr, [SP], #0x10
    // 0x6da2cc: ret
    //     0x6da2cc: ret             
    // 0x6da2d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6da2d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da2d4: b               #0x6da260
  }
}

// class id: 3216, size: 0xc, field offset: 0xc
//   const constructor, 
class CurrencyPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd3e8, size: 0x24
    // 0x7bd3e8: EnterFrame
    //     0x7bd3e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd3ec: mov             fp, SP
    // 0x7bd3f0: mov             x0, x1
    // 0x7bd3f4: r1 = <CurrencyPage>
    //     0x7bd3f4: add             x1, PP, #0x12, lsl #12  ; [pp+0x126b8] TypeArguments: <CurrencyPage>
    //     0x7bd3f8: ldr             x1, [x1, #0x6b8]
    // 0x7bd3fc: r0 = _CurrencyPageState()
    //     0x7bd3fc: bl              #0x7bd40c  ; Allocate_CurrencyPageStateStub -> _CurrencyPageState (size=0x14)
    // 0x7bd400: LeaveFrame
    //     0x7bd400: mov             SP, fp
    //     0x7bd404: ldp             fp, lr, [SP], #0x10
    // 0x7bd408: ret
    //     0x7bd408: ret             
  }
}

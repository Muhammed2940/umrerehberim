// lib: , url: package:umrem_demo/features/admin/screens/single_user_map_view.dart

// class id: 1049534, size: 0x8
class :: {
}

// class id: 2486, size: 0x18, field offset: 0x14
class _SingleUserMapViewState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e1884, size: 0x130
    // 0x5e1884: EnterFrame
    //     0x5e1884: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1888: mov             fp, SP
    // 0x5e188c: AllocStack(0x18)
    //     0x5e188c: sub             SP, SP, #0x18
    // 0x5e1890: SetupParameters(_SingleUserMapViewState this /* r1 => r1, fp-0x8 */)
    //     0x5e1890: stur            x1, [fp, #-8]
    // 0x5e1894: CheckStackOverflow
    //     0x5e1894: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1898: cmp             SP, x16
    //     0x5e189c: b.ls            #0x5e19a8
    // 0x5e18a0: r1 = 1
    //     0x5e18a0: mov             x1, #1
    // 0x5e18a4: r0 = AllocateContext()
    //     0x5e18a4: bl              #0x927010  ; AllocateContextStub
    // 0x5e18a8: mov             x1, x0
    // 0x5e18ac: ldur            x0, [fp, #-8]
    // 0x5e18b0: StoreField: r1->field_f = r0
    //     0x5e18b0: stur            w0, [x1, #0xf]
    // 0x5e18b4: r0 = LoadStaticField(0x834)
    //     0x5e18b4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e18b8: ldr             x0, [x0, #0x1068]
    // 0x5e18bc: cmp             w0, NULL
    // 0x5e18c0: b.eq            #0x5e19b0
    // 0x5e18c4: LoadField: r3 = r0->field_53
    //     0x5e18c4: ldur            w3, [x0, #0x53]
    // 0x5e18c8: DecompressPointer r3
    //     0x5e18c8: add             x3, x3, HEAP, lsl #32
    // 0x5e18cc: stur            x3, [fp, #-0x10]
    // 0x5e18d0: LoadField: r0 = r3->field_7
    //     0x5e18d0: ldur            w0, [x3, #7]
    // 0x5e18d4: DecompressPointer r0
    //     0x5e18d4: add             x0, x0, HEAP, lsl #32
    // 0x5e18d8: mov             x2, x1
    // 0x5e18dc: stur            x0, [fp, #-8]
    // 0x5e18e0: r1 = Function '<anonymous closure>':.
    //     0x5e18e0: add             x1, PP, #0x27, lsl #12  ; [pp+0x27300] AnonymousClosure: (0x5e19d4), in [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::initState (0x5e1884)
    //     0x5e18e4: ldr             x1, [x1, #0x300]
    // 0x5e18e8: r0 = AllocateClosure()
    //     0x5e18e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e18ec: ldur            x2, [fp, #-8]
    // 0x5e18f0: mov             x3, x0
    // 0x5e18f4: r1 = Null
    //     0x5e18f4: mov             x1, NULL
    // 0x5e18f8: stur            x3, [fp, #-8]
    // 0x5e18fc: cmp             w2, NULL
    // 0x5e1900: b.eq            #0x5e1920
    // 0x5e1904: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e1904: ldur            w4, [x2, #0x17]
    // 0x5e1908: DecompressPointer r4
    //     0x5e1908: add             x4, x4, HEAP, lsl #32
    // 0x5e190c: r8 = X0
    //     0x5e190c: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e1910: LoadField: r9 = r4->field_7
    //     0x5e1910: ldur            x9, [x4, #7]
    // 0x5e1914: r3 = Null
    //     0x5e1914: add             x3, PP, #0x27, lsl #12  ; [pp+0x27308] Null
    //     0x5e1918: ldr             x3, [x3, #0x308]
    // 0x5e191c: blr             x9
    // 0x5e1920: ldur            x0, [fp, #-0x10]
    // 0x5e1924: LoadField: r1 = r0->field_b
    //     0x5e1924: ldur            w1, [x0, #0xb]
    // 0x5e1928: LoadField: r2 = r0->field_f
    //     0x5e1928: ldur            w2, [x0, #0xf]
    // 0x5e192c: DecompressPointer r2
    //     0x5e192c: add             x2, x2, HEAP, lsl #32
    // 0x5e1930: LoadField: r3 = r2->field_b
    //     0x5e1930: ldur            w3, [x2, #0xb]
    // 0x5e1934: r2 = LoadInt32Instr(r1)
    //     0x5e1934: sbfx            x2, x1, #1, #0x1f
    // 0x5e1938: stur            x2, [fp, #-0x18]
    // 0x5e193c: r1 = LoadInt32Instr(r3)
    //     0x5e193c: sbfx            x1, x3, #1, #0x1f
    // 0x5e1940: cmp             x2, x1
    // 0x5e1944: b.ne            #0x5e1950
    // 0x5e1948: mov             x1, x0
    // 0x5e194c: r0 = _growToNextCapacity()
    //     0x5e194c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e1950: ldur            x2, [fp, #-0x10]
    // 0x5e1954: ldur            x3, [fp, #-0x18]
    // 0x5e1958: add             x4, x3, #1
    // 0x5e195c: lsl             x5, x4, #1
    // 0x5e1960: StoreField: r2->field_b = r5
    //     0x5e1960: stur            w5, [x2, #0xb]
    // 0x5e1964: LoadField: r1 = r2->field_f
    //     0x5e1964: ldur            w1, [x2, #0xf]
    // 0x5e1968: DecompressPointer r1
    //     0x5e1968: add             x1, x1, HEAP, lsl #32
    // 0x5e196c: ldur            x0, [fp, #-8]
    // 0x5e1970: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e1970: add             x25, x1, x3, lsl #2
    //     0x5e1974: add             x25, x25, #0xf
    //     0x5e1978: str             w0, [x25]
    //     0x5e197c: tbz             w0, #0, #0x5e1998
    //     0x5e1980: ldurb           w16, [x1, #-1]
    //     0x5e1984: ldurb           w17, [x0, #-1]
    //     0x5e1988: and             x16, x17, x16, lsr #2
    //     0x5e198c: tst             x16, HEAP, lsr #32
    //     0x5e1990: b.eq            #0x5e1998
    //     0x5e1994: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e1998: r0 = Null
    //     0x5e1998: mov             x0, NULL
    // 0x5e199c: LeaveFrame
    //     0x5e199c: mov             SP, fp
    //     0x5e19a0: ldp             fp, lr, [SP], #0x10
    // 0x5e19a4: ret
    //     0x5e19a4: ret             
    // 0x5e19a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e19a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e19ac: b               #0x5e18a0
    // 0x5e19b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e19b0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e19d4, size: 0xa0
    // 0x5e19d4: EnterFrame
    //     0x5e19d4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e19d8: mov             fp, SP
    // 0x5e19dc: AllocStack(0x18)
    //     0x5e19dc: sub             SP, SP, #0x18
    // 0x5e19e0: SetupParameters([dynamic _ /* r0 */])
    //     0x5e19e0: ldr             x0, [fp, #0x18]
    //     0x5e19e4: ldur            w1, [x0, #0x17]
    //     0x5e19e8: add             x1, x1, HEAP, lsl #32
    //     0x5e19ec: stur            x1, [fp, #-8]
    // 0x5e19f0: CheckStackOverflow
    //     0x5e19f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e19f4: cmp             SP, x16
    //     0x5e19f8: b.ls            #0x5e1a64
    // 0x5e19fc: LoadField: r0 = r1->field_f
    //     0x5e19fc: ldur            w0, [x1, #0xf]
    // 0x5e1a00: DecompressPointer r0
    //     0x5e1a00: add             x0, x0, HEAP, lsl #32
    // 0x5e1a04: LoadField: r2 = r0->field_f
    //     0x5e1a04: ldur            w2, [x0, #0xf]
    // 0x5e1a08: DecompressPointer r2
    //     0x5e1a08: add             x2, x2, HEAP, lsl #32
    // 0x5e1a0c: cmp             w2, NULL
    // 0x5e1a10: b.eq            #0x5e1a6c
    // 0x5e1a14: r16 = <LocationTrackingProvider>
    //     0x5e1a14: add             x16, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x5e1a18: ldr             x16, [x16, #0x9e8]
    // 0x5e1a1c: stp             x2, x16, [SP]
    // 0x5e1a20: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e1a20: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e1a24: r0 = ReadContext.read()
    //     0x5e1a24: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e1a28: mov             x1, x0
    // 0x5e1a2c: ldur            x0, [fp, #-8]
    // 0x5e1a30: LoadField: r2 = r0->field_f
    //     0x5e1a30: ldur            w2, [x0, #0xf]
    // 0x5e1a34: DecompressPointer r2
    //     0x5e1a34: add             x2, x2, HEAP, lsl #32
    // 0x5e1a38: LoadField: r0 = r2->field_b
    //     0x5e1a38: ldur            w0, [x2, #0xb]
    // 0x5e1a3c: DecompressPointer r0
    //     0x5e1a3c: add             x0, x0, HEAP, lsl #32
    // 0x5e1a40: cmp             w0, NULL
    // 0x5e1a44: b.eq            #0x5e1a70
    // 0x5e1a48: LoadField: r2 = r0->field_b
    //     0x5e1a48: ldur            w2, [x0, #0xb]
    // 0x5e1a4c: DecompressPointer r2
    //     0x5e1a4c: add             x2, x2, HEAP, lsl #32
    // 0x5e1a50: r0 = startListeningSingleUser()
    //     0x5e1a50: bl              #0x5e1a74  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningSingleUser
    // 0x5e1a54: r0 = Null
    //     0x5e1a54: mov             x0, NULL
    // 0x5e1a58: LeaveFrame
    //     0x5e1a58: mov             SP, fp
    //     0x5e1a5c: ldp             fp, lr, [SP], #0x10
    // 0x5e1a60: ret
    //     0x5e1a60: ret             
    // 0x5e1a64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1a64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e1a68: b               #0x5e19fc
    // 0x5e1a6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e1a6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e1a70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e1a70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6e8148, size: 0x188
    // 0x6e8148: EnterFrame
    //     0x6e8148: stp             fp, lr, [SP, #-0x10]!
    //     0x6e814c: mov             fp, SP
    // 0x6e8150: AllocStack(0x38)
    //     0x6e8150: sub             SP, SP, #0x38
    // 0x6e8154: SetupParameters(_SingleUserMapViewState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6e8154: stur            x1, [fp, #-8]
    //     0x6e8158: stur            x2, [fp, #-0x10]
    // 0x6e815c: CheckStackOverflow
    //     0x6e815c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e8160: cmp             SP, x16
    //     0x6e8164: b.ls            #0x6e82c4
    // 0x6e8168: r1 = 2
    //     0x6e8168: mov             x1, #2
    // 0x6e816c: r0 = AllocateContext()
    //     0x6e816c: bl              #0x927010  ; AllocateContextStub
    // 0x6e8170: mov             x3, x0
    // 0x6e8174: ldur            x0, [fp, #-8]
    // 0x6e8178: stur            x3, [fp, #-0x18]
    // 0x6e817c: StoreField: r3->field_f = r0
    //     0x6e817c: stur            w0, [x3, #0xf]
    // 0x6e8180: ldur            x1, [fp, #-0x10]
    // 0x6e8184: StoreField: r3->field_13 = r1
    //     0x6e8184: stur            w1, [x3, #0x13]
    // 0x6e8188: mov             x2, x3
    // 0x6e818c: r1 = Function '<anonymous closure>':.
    //     0x6e818c: add             x1, PP, #0x27, lsl #12  ; [pp+0x272b0] AnonymousClosure: (0x6e9c6c), in [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::build (0x6e8148)
    //     0x6e8190: ldr             x1, [x1, #0x2b0]
    // 0x6e8194: r0 = AllocateClosure()
    //     0x6e8194: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e8198: stur            x0, [fp, #-0x10]
    // 0x6e819c: r0 = IconButton()
    //     0x6e819c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6e81a0: mov             x1, x0
    // 0x6e81a4: ldur            x0, [fp, #-0x10]
    // 0x6e81a8: stur            x1, [fp, #-0x20]
    // 0x6e81ac: StoreField: r1->field_3b = r0
    //     0x6e81ac: stur            w0, [x1, #0x3b]
    // 0x6e81b0: r0 = false
    //     0x6e81b0: add             x0, NULL, #0x30  ; false
    // 0x6e81b4: StoreField: r1->field_4f = r0
    //     0x6e81b4: stur            w0, [x1, #0x4f]
    // 0x6e81b8: r2 = Instance_Icon
    //     0x6e81b8: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c4d8] Obj!Icon@a1e071
    //     0x6e81bc: ldr             x2, [x2, #0x4d8]
    // 0x6e81c0: StoreField: r1->field_1f = r2
    //     0x6e81c0: stur            w2, [x1, #0x1f]
    // 0x6e81c4: r2 = Instance__IconButtonVariant
    //     0x6e81c4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6e81c8: ldr             x2, [x2, #0x1b8]
    // 0x6e81cc: StoreField: r1->field_6f = r2
    //     0x6e81cc: stur            w2, [x1, #0x6f]
    // 0x6e81d0: ldur            x2, [fp, #-8]
    // 0x6e81d4: LoadField: r3 = r2->field_b
    //     0x6e81d4: ldur            w3, [x2, #0xb]
    // 0x6e81d8: DecompressPointer r3
    //     0x6e81d8: add             x3, x3, HEAP, lsl #32
    // 0x6e81dc: cmp             w3, NULL
    // 0x6e81e0: b.eq            #0x6e82cc
    // 0x6e81e4: LoadField: r2 = r3->field_f
    //     0x6e81e4: ldur            w2, [x3, #0xf]
    // 0x6e81e8: DecompressPointer r2
    //     0x6e81e8: add             x2, x2, HEAP, lsl #32
    // 0x6e81ec: stur            x2, [fp, #-8]
    // 0x6e81f0: r0 = Text()
    //     0x6e81f0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e81f4: mov             x1, x0
    // 0x6e81f8: ldur            x0, [fp, #-8]
    // 0x6e81fc: stur            x1, [fp, #-0x10]
    // 0x6e8200: StoreField: r1->field_b = r0
    //     0x6e8200: stur            w0, [x1, #0xb]
    // 0x6e8204: r0 = AppBar()
    //     0x6e8204: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6e8208: stur            x0, [fp, #-8]
    // 0x6e820c: ldur            x16, [fp, #-0x20]
    // 0x6e8210: r30 = true
    //     0x6e8210: add             lr, NULL, #0x20  ; true
    // 0x6e8214: stp             lr, x16, [SP, #8]
    // 0x6e8218: r16 = 0.000000
    //     0x6e8218: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6e821c: str             x16, [SP]
    // 0x6e8220: mov             x1, x0
    // 0x6e8224: ldur            x2, [fp, #-0x10]
    // 0x6e8228: r4 = const [0, 0x5, 0x3, 0x2, centerTitle, 0x3, elevation, 0x4, leading, 0x2, null]
    //     0x6e8228: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c4e8] List(11) [0, 0x5, 0x3, 0x2, "centerTitle", 0x3, "elevation", 0x4, "leading", 0x2, Null]
    //     0x6e822c: ldr             x4, [x4, #0x4e8]
    // 0x6e8230: r0 = AppBar()
    //     0x6e8230: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6e8234: ldur            x2, [fp, #-0x18]
    // 0x6e8238: r1 = Function '<anonymous closure>':.
    //     0x6e8238: add             x1, PP, #0x27, lsl #12  ; [pp+0x272b8] AnonymousClosure: (0x6e82d0), in [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::build (0x6e8148)
    //     0x6e823c: ldr             x1, [x1, #0x2b8]
    // 0x6e8240: r0 = AllocateClosure()
    //     0x6e8240: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e8244: r1 = <LocationTrackingProvider>
    //     0x6e8244: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x6e8248: ldr             x1, [x1, #0x9e8]
    // 0x6e824c: stur            x0, [fp, #-0x10]
    // 0x6e8250: r0 = Consumer()
    //     0x6e8250: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6e8254: mov             x1, x0
    // 0x6e8258: ldur            x0, [fp, #-0x10]
    // 0x6e825c: stur            x1, [fp, #-0x18]
    // 0x6e8260: StoreField: r1->field_13 = r0
    //     0x6e8260: stur            w0, [x1, #0x13]
    // 0x6e8264: r0 = Scaffold()
    //     0x6e8264: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6e8268: ldur            x1, [fp, #-8]
    // 0x6e826c: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e826c: stur            w1, [x0, #0x17]
    // 0x6e8270: ldur            x1, [fp, #-0x18]
    // 0x6e8274: StoreField: r0->field_1b = r1
    //     0x6e8274: stur            w1, [x0, #0x1b]
    // 0x6e8278: r1 = Instance_AlignmentDirectional
    //     0x6e8278: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6e827c: ldr             x1, [x1, #0x350]
    // 0x6e8280: StoreField: r0->field_2f = r1
    //     0x6e8280: stur            w1, [x0, #0x2f]
    // 0x6e8284: r1 = true
    //     0x6e8284: add             x1, NULL, #0x20  ; true
    // 0x6e8288: StoreField: r0->field_5f = r1
    //     0x6e8288: stur            w1, [x0, #0x5f]
    // 0x6e828c: r2 = Instance_DragStartBehavior
    //     0x6e828c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6e8290: StoreField: r0->field_63 = r2
    //     0x6e8290: stur            w2, [x0, #0x63]
    // 0x6e8294: r2 = false
    //     0x6e8294: add             x2, NULL, #0x30  ; false
    // 0x6e8298: StoreField: r0->field_b = r2
    //     0x6e8298: stur            w2, [x0, #0xb]
    // 0x6e829c: StoreField: r0->field_f = r1
    //     0x6e829c: stur            w1, [x0, #0xf]
    // 0x6e82a0: StoreField: r0->field_13 = r2
    //     0x6e82a0: stur            w2, [x0, #0x13]
    // 0x6e82a4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6e82a4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6e82a8: ldr             x2, [x2, #0x358]
    // 0x6e82ac: StoreField: r0->field_4b = r2
    //     0x6e82ac: stur            w2, [x0, #0x4b]
    // 0x6e82b0: StoreField: r0->field_6b = r1
    //     0x6e82b0: stur            w1, [x0, #0x6b]
    // 0x6e82b4: StoreField: r0->field_6f = r1
    //     0x6e82b4: stur            w1, [x0, #0x6f]
    // 0x6e82b8: LeaveFrame
    //     0x6e82b8: mov             SP, fp
    //     0x6e82bc: ldp             fp, lr, [SP], #0x10
    // 0x6e82c0: ret
    //     0x6e82c0: ret             
    // 0x6e82c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e82c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e82c8: b               #0x6e8168
    // 0x6e82cc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e82cc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] RenderObjectWidget <anonymous closure>(dynamic, BuildContext, LocationTrackingProvider, Widget?) {
    // ** addr: 0x6e82d0, size: 0xab4
    // 0x6e82d0: EnterFrame
    //     0x6e82d0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e82d4: mov             fp, SP
    // 0x6e82d8: AllocStack(0x68)
    //     0x6e82d8: sub             SP, SP, #0x68
    // 0x6e82dc: SetupParameters([dynamic _ /* r0 */])
    //     0x6e82dc: ldr             x0, [fp, #0x28]
    //     0x6e82e0: ldur            w2, [x0, #0x17]
    //     0x6e82e4: add             x2, x2, HEAP, lsl #32
    //     0x6e82e8: stur            x2, [fp, #-0x10]
    // 0x6e82ec: CheckStackOverflow
    //     0x6e82ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e82f0: cmp             SP, x16
    //     0x6e82f4: b.ls            #0x6e8d34
    // 0x6e82f8: ldr             x0, [fp, #0x18]
    // 0x6e82fc: LoadField: r1 = r0->field_33
    //     0x6e82fc: ldur            w1, [x0, #0x33]
    // 0x6e8300: DecompressPointer r1
    //     0x6e8300: add             x1, x1, HEAP, lsl #32
    // 0x6e8304: stur            x1, [fp, #-8]
    // 0x6e8308: cmp             w1, NULL
    // 0x6e830c: b.ne            #0x6e8324
    // 0x6e8310: r0 = Instance_Center
    //     0x6e8310: add             x0, PP, #0x27, lsl #12  ; [pp+0x272c0] Obj!Center@a1fdf1
    //     0x6e8314: ldr             x0, [x0, #0x2c0]
    // 0x6e8318: LeaveFrame
    //     0x6e8318: mov             SP, fp
    //     0x6e831c: ldp             fp, lr, [SP], #0x10
    // 0x6e8320: ret
    //     0x6e8320: ret             
    // 0x6e8324: d0 = -90.000000
    //     0x6e8324: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x6e8328: ldr             d0, [x17, #0x5b8]
    // 0x6e832c: LoadField: d1 = r1->field_f
    //     0x6e832c: ldur            d1, [x1, #0xf]
    // 0x6e8330: stur            d1, [fp, #-0x60]
    // 0x6e8334: ArrayLoad: d2 = r1[0]  ; List_8
    //     0x6e8334: ldur            d2, [x1, #0x17]
    // 0x6e8338: stur            d2, [fp, #-0x58]
    // 0x6e833c: fcmp            d0, d1
    // 0x6e8340: b.le            #0x6e8350
    // 0x6e8344: d0 = -90.000000
    //     0x6e8344: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x6e8348: ldr             d0, [x17, #0x5b8]
    // 0x6e834c: b               #0x6e8368
    // 0x6e8350: d0 = 90.000000
    //     0x6e8350: ldr             d0, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x6e8354: fcmp            d1, d0
    // 0x6e8358: b.le            #0x6e8364
    // 0x6e835c: d0 = 90.000000
    //     0x6e835c: ldr             d0, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x6e8360: b               #0x6e8368
    // 0x6e8364: mov             v0.16b, v1.16b
    // 0x6e8368: stur            d0, [fp, #-0x50]
    // 0x6e836c: r0 = LatLng()
    //     0x6e836c: bl              #0x6c6214  ; AllocateLatLngStub -> LatLng (size=0x18)
    // 0x6e8370: mov             x19, x0
    // 0x6e8374: ldur            d0, [fp, #-0x50]
    // 0x6e8378: stur            x19, [fp, #-0x20]
    // 0x6e837c: StoreField: r19->field_7 = d0
    //     0x6e837c: stur            d0, [x19, #7]
    // 0x6e8380: ldur            d2, [fp, #-0x58]
    // 0x6e8384: d0 = -180.000000
    //     0x6e8384: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5c0] IMM: double(-180) from 0xc066800000000000
    //     0x6e8388: ldr             d0, [x17, #0x5c0]
    // 0x6e838c: fcmp            d2, d0
    // 0x6e8390: b.lt            #0x6e83a8
    // 0x6e8394: d3 = 180.000000
    //     0x6e8394: ldr             d3, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x6e8398: fcmp            d3, d2
    // 0x6e839c: b.le            #0x6e83ac
    // 0x6e83a0: mov             v0.16b, v2.16b
    // 0x6e83a4: b               #0x6e83f8
    // 0x6e83a8: d3 = 180.000000
    //     0x6e83a8: ldr             d3, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x6e83ac: fadd            d0, d2, d3
    // 0x6e83b0: d1 = 360.000000
    //     0x6e83b0: ldr             d1, [PP, #0x5d38]  ; [pp+0x5d38] IMM: double(360) from 0x4076800000000000
    // 0x6e83b4: stp             fp, lr, [SP, #-0x10]!
    // 0x6e83b8: mov             fp, SP
    // 0x6e83bc: CallRuntime_DartModulo(double, double) -> double
    //     0x6e83bc: and             SP, SP, #0xfffffffffffffff0
    //     0x6e83c0: mov             sp, SP
    //     0x6e83c4: ldr             x16, [THR, #0x730]  ; THR::DartModulo
    //     0x6e83c8: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x6e83cc: blr             x16
    //     0x6e83d0: mov             x16, #8
    //     0x6e83d4: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x6e83d8: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x6e83dc: sub             sp, x16, #1, lsl #12
    //     0x6e83e0: mov             SP, fp
    //     0x6e83e4: ldp             fp, lr, [SP], #0x10
    // 0x6e83e8: mov             v1.16b, v0.16b
    // 0x6e83ec: d0 = 180.000000
    //     0x6e83ec: ldr             d0, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x6e83f0: fsub            d2, d1, d0
    // 0x6e83f4: mov             v0.16b, v2.16b
    // 0x6e83f8: ldur            x2, [fp, #-0x10]
    // 0x6e83fc: StoreField: r19->field_f = d0
    //     0x6e83fc: stur            d0, [x19, #0xf]
    // 0x6e8400: LoadField: r0 = r2->field_f
    //     0x6e8400: ldur            w0, [x2, #0xf]
    // 0x6e8404: DecompressPointer r0
    //     0x6e8404: add             x0, x0, HEAP, lsl #32
    // 0x6e8408: LoadField: r3 = r0->field_13
    //     0x6e8408: ldur            w3, [x0, #0x13]
    // 0x6e840c: DecompressPointer r3
    //     0x6e840c: add             x3, x3, HEAP, lsl #32
    // 0x6e8410: stur            x3, [fp, #-0x18]
    // 0x6e8414: cmp             w3, NULL
    // 0x6e8418: b.eq            #0x6e8430
    // 0x6e841c: mov             x1, x19
    // 0x6e8420: r0 = newLatLngZoom()
    //     0x6e8420: bl              #0x6e9be0  ; [package:google_maps_flutter_platform_interface/src/types/camera.dart] CameraUpdate::newLatLngZoom
    // 0x6e8424: ldur            x1, [fp, #-0x18]
    // 0x6e8428: mov             x2, x0
    // 0x6e842c: r0 = animateCamera()
    //     0x6e842c: bl              #0x6e91d0  ; [package:google_maps_flutter/google_maps_flutter.dart] GoogleMapController::animateCamera
    // 0x6e8430: ldur            x2, [fp, #-0x10]
    // 0x6e8434: ldur            x0, [fp, #-0x20]
    // 0x6e8438: ldur            d1, [fp, #-0x60]
    // 0x6e843c: ldur            d0, [fp, #-0x58]
    // 0x6e8440: ldur            x1, [fp, #-8]
    // 0x6e8444: r0 = CameraPosition()
    //     0x6e8444: bl              #0x6c7a34  ; AllocateCameraPositionStub -> CameraPosition (size=0x24)
    // 0x6e8448: stur            x0, [fp, #-0x18]
    // 0x6e844c: StoreField: r0->field_7 = rZR
    //     0x6e844c: stur            xzr, [x0, #7]
    // 0x6e8450: ldur            x2, [fp, #-0x20]
    // 0x6e8454: StoreField: r0->field_f = r2
    //     0x6e8454: stur            w2, [x0, #0xf]
    // 0x6e8458: StoreField: r0->field_13 = rZR
    //     0x6e8458: stur            xzr, [x0, #0x13]
    // 0x6e845c: d0 = 15.000000
    //     0x6e845c: fmov            d0, #15.00000000
    // 0x6e8460: StoreField: r0->field_1b = d0
    //     0x6e8460: stur            d0, [x0, #0x1b]
    // 0x6e8464: r1 = <Marker>
    //     0x6e8464: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5a0] TypeArguments: <Marker>
    //     0x6e8468: ldr             x1, [x1, #0x5a0]
    // 0x6e846c: r0 = _Set()
    //     0x6e846c: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x6e8470: mov             x2, x0
    // 0x6e8474: r0 = _Uint32List
    //     0x6e8474: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x6e8478: stur            x2, [fp, #-0x38]
    // 0x6e847c: StoreField: r2->field_1b = r0
    //     0x6e847c: stur            w0, [x2, #0x1b]
    // 0x6e8480: StoreField: r2->field_b = rZR
    //     0x6e8480: stur            wzr, [x2, #0xb]
    // 0x6e8484: r0 = const []
    //     0x6e8484: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x6e8488: StoreField: r2->field_f = r0
    //     0x6e8488: stur            w0, [x2, #0xf]
    // 0x6e848c: StoreField: r2->field_13 = rZR
    //     0x6e848c: stur            wzr, [x2, #0x13]
    // 0x6e8490: ArrayStore: r2[0] = rZR  ; List_4
    //     0x6e8490: stur            wzr, [x2, #0x17]
    // 0x6e8494: ldur            x0, [fp, #-0x10]
    // 0x6e8498: LoadField: r1 = r0->field_f
    //     0x6e8498: ldur            w1, [x0, #0xf]
    // 0x6e849c: DecompressPointer r1
    //     0x6e849c: add             x1, x1, HEAP, lsl #32
    // 0x6e84a0: LoadField: r3 = r1->field_b
    //     0x6e84a0: ldur            w3, [x1, #0xb]
    // 0x6e84a4: DecompressPointer r3
    //     0x6e84a4: add             x3, x3, HEAP, lsl #32
    // 0x6e84a8: stur            x3, [fp, #-0x30]
    // 0x6e84ac: cmp             w3, NULL
    // 0x6e84b0: b.eq            #0x6e8d3c
    // 0x6e84b4: LoadField: r4 = r3->field_b
    //     0x6e84b4: ldur            w4, [x3, #0xb]
    // 0x6e84b8: DecompressPointer r4
    //     0x6e84b8: add             x4, x4, HEAP, lsl #32
    // 0x6e84bc: stur            x4, [fp, #-0x28]
    // 0x6e84c0: r1 = <Marker>
    //     0x6e84c0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5a0] TypeArguments: <Marker>
    //     0x6e84c4: ldr             x1, [x1, #0x5a0]
    // 0x6e84c8: r0 = MarkerId()
    //     0x6e84c8: bl              #0x6c6264  ; AllocateMarkerIdStub -> MarkerId (size=0x10)
    // 0x6e84cc: mov             x3, x0
    // 0x6e84d0: ldur            x0, [fp, #-0x28]
    // 0x6e84d4: stur            x3, [fp, #-0x40]
    // 0x6e84d8: StoreField: r3->field_b = r0
    //     0x6e84d8: stur            w0, [x3, #0xb]
    // 0x6e84dc: ldur            x0, [fp, #-0x30]
    // 0x6e84e0: LoadField: r4 = r0->field_f
    //     0x6e84e0: ldur            w4, [x0, #0xf]
    // 0x6e84e4: DecompressPointer r4
    //     0x6e84e4: add             x4, x4, HEAP, lsl #32
    // 0x6e84e8: stur            x4, [fp, #-0x28]
    // 0x6e84ec: r1 = Null
    //     0x6e84ec: mov             x1, NULL
    // 0x6e84f0: r2 = 8
    //     0x6e84f0: mov             x2, #8
    // 0x6e84f4: r0 = AllocateArray()
    //     0x6e84f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e84f8: stur            x0, [fp, #-0x48]
    // 0x6e84fc: r16 = "Son güncelleme: "
    //     0x6e84fc: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c528] "Son güncelleme: "
    //     0x6e8500: ldr             x16, [x16, #0x528]
    // 0x6e8504: StoreField: r0->field_f = r16
    //     0x6e8504: stur            w16, [x0, #0xf]
    // 0x6e8508: ldur            x1, [fp, #-8]
    // 0x6e850c: LoadField: r2 = r1->field_1f
    //     0x6e850c: ldur            w2, [x1, #0x1f]
    // 0x6e8510: DecompressPointer r2
    //     0x6e8510: add             x2, x2, HEAP, lsl #32
    // 0x6e8514: mov             x1, x2
    // 0x6e8518: stur            x2, [fp, #-0x30]
    // 0x6e851c: r0 = _parts()
    //     0x6e851c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8520: mov             x2, x0
    // 0x6e8524: LoadField: r0 = r2->field_b
    //     0x6e8524: ldur            w0, [x2, #0xb]
    // 0x6e8528: r1 = LoadInt32Instr(r0)
    //     0x6e8528: sbfx            x1, x0, #1, #0x1f
    // 0x6e852c: mov             x0, x1
    // 0x6e8530: r1 = 4
    //     0x6e8530: mov             x1, #4
    // 0x6e8534: cmp             x1, x0
    // 0x6e8538: b.hs            #0x6e8d40
    // 0x6e853c: LoadField: r0 = r2->field_1f
    //     0x6e853c: ldur            w0, [x2, #0x1f]
    // 0x6e8540: DecompressPointer r0
    //     0x6e8540: add             x0, x0, HEAP, lsl #32
    // 0x6e8544: ldur            x1, [fp, #-0x48]
    // 0x6e8548: ArrayStore: r1[1] = r0  ; List_4
    //     0x6e8548: add             x25, x1, #0x13
    //     0x6e854c: str             w0, [x25]
    //     0x6e8550: tbz             w0, #0, #0x6e856c
    //     0x6e8554: ldurb           w16, [x1, #-1]
    //     0x6e8558: ldurb           w17, [x0, #-1]
    //     0x6e855c: and             x16, x17, x16, lsr #2
    //     0x6e8560: tst             x16, HEAP, lsr #32
    //     0x6e8564: b.eq            #0x6e856c
    //     0x6e8568: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e856c: ldur            x0, [fp, #-0x48]
    // 0x6e8570: r16 = ":"
    //     0x6e8570: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6e8574: ArrayStore: r0[0] = r16  ; List_4
    //     0x6e8574: stur            w16, [x0, #0x17]
    // 0x6e8578: ldur            x1, [fp, #-0x30]
    // 0x6e857c: r0 = _parts()
    //     0x6e857c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8580: mov             x2, x0
    // 0x6e8584: LoadField: r0 = r2->field_b
    //     0x6e8584: ldur            w0, [x2, #0xb]
    // 0x6e8588: r1 = LoadInt32Instr(r0)
    //     0x6e8588: sbfx            x1, x0, #1, #0x1f
    // 0x6e858c: mov             x0, x1
    // 0x6e8590: r1 = 3
    //     0x6e8590: mov             x1, #3
    // 0x6e8594: cmp             x1, x0
    // 0x6e8598: b.hs            #0x6e8d44
    // 0x6e859c: LoadField: r0 = r2->field_1b
    //     0x6e859c: ldur            w0, [x2, #0x1b]
    // 0x6e85a0: DecompressPointer r0
    //     0x6e85a0: add             x0, x0, HEAP, lsl #32
    // 0x6e85a4: r1 = 60
    //     0x6e85a4: mov             x1, #0x3c
    // 0x6e85a8: branchIfSmi(r0, 0x6e85b4)
    //     0x6e85a8: tbz             w0, #0, #0x6e85b4
    // 0x6e85ac: r1 = LoadClassIdInstr(r0)
    //     0x6e85ac: ldur            x1, [x0, #-1]
    //     0x6e85b0: ubfx            x1, x1, #0xc, #0x14
    // 0x6e85b4: str             x0, [SP]
    // 0x6e85b8: mov             x0, x1
    // 0x6e85bc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6e85bc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6e85c0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6e85c0: mov             x17, #0x21f6
    //     0x6e85c4: add             lr, x0, x17
    //     0x6e85c8: ldr             lr, [x21, lr, lsl #3]
    //     0x6e85cc: blr             lr
    // 0x6e85d0: r1 = LoadClassIdInstr(r0)
    //     0x6e85d0: ldur            x1, [x0, #-1]
    //     0x6e85d4: ubfx            x1, x1, #0xc, #0x14
    // 0x6e85d8: mov             x16, x0
    // 0x6e85dc: mov             x0, x1
    // 0x6e85e0: mov             x1, x16
    // 0x6e85e4: r2 = 2
    //     0x6e85e4: mov             x2, #2
    // 0x6e85e8: r3 = "0"
    //     0x6e85e8: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6e85ec: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6e85ec: sub             lr, x0, #0xffc
    //     0x6e85f0: ldr             lr, [x21, lr, lsl #3]
    //     0x6e85f4: blr             lr
    // 0x6e85f8: ldur            x1, [fp, #-0x48]
    // 0x6e85fc: ArrayStore: r1[3] = r0  ; List_4
    //     0x6e85fc: add             x25, x1, #0x1b
    //     0x6e8600: str             w0, [x25]
    //     0x6e8604: tbz             w0, #0, #0x6e8620
    //     0x6e8608: ldurb           w16, [x1, #-1]
    //     0x6e860c: ldurb           w17, [x0, #-1]
    //     0x6e8610: and             x16, x17, x16, lsr #2
    //     0x6e8614: tst             x16, HEAP, lsr #32
    //     0x6e8618: b.eq            #0x6e8620
    //     0x6e861c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8620: ldur            x16, [fp, #-0x48]
    // 0x6e8624: str             x16, [SP]
    // 0x6e8628: r0 = _interpolate()
    //     0x6e8628: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e862c: stur            x0, [fp, #-8]
    // 0x6e8630: r0 = InfoWindow()
    //     0x6e8630: bl              #0x6e91c4  ; AllocateInfoWindowStub -> InfoWindow (size=0x18)
    // 0x6e8634: mov             x1, x0
    // 0x6e8638: ldur            x0, [fp, #-0x28]
    // 0x6e863c: stur            x1, [fp, #-0x48]
    // 0x6e8640: StoreField: r1->field_7 = r0
    //     0x6e8640: stur            w0, [x1, #7]
    // 0x6e8644: ldur            x0, [fp, #-8]
    // 0x6e8648: StoreField: r1->field_b = r0
    //     0x6e8648: stur            w0, [x1, #0xb]
    // 0x6e864c: r0 = Instance_Offset
    //     0x6e864c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c790] Obj!Offset@a268b1
    //     0x6e8650: ldr             x0, [x0, #0x790]
    // 0x6e8654: StoreField: r1->field_f = r0
    //     0x6e8654: stur            w0, [x1, #0xf]
    // 0x6e8658: r0 = defaultMarkerWithHue()
    //     0x6e8658: bl              #0x6e9198  ; [package:google_maps_flutter_platform_interface/src/types/bitmap.dart] BitmapDescriptor::defaultMarkerWithHue
    // 0x6e865c: stur            x0, [fp, #-8]
    // 0x6e8660: r0 = Marker()
    //     0x6e8660: bl              #0x5ccf98  ; AllocateMarkerStub -> Marker (size=0x54)
    // 0x6e8664: mov             x1, x0
    // 0x6e8668: ldur            x0, [fp, #-0x40]
    // 0x6e866c: StoreField: r1->field_7 = r0
    //     0x6e866c: stur            w0, [x1, #7]
    // 0x6e8670: d0 = 1.000000
    //     0x6e8670: fmov            d0, #1.00000000
    // 0x6e8674: StoreField: r1->field_f = d0
    //     0x6e8674: stur            d0, [x1, #0xf]
    // 0x6e8678: r0 = Instance_Offset
    //     0x6e8678: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c798] Obj!Offset@a268d1
    //     0x6e867c: ldr             x0, [x0, #0x798]
    // 0x6e8680: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e8680: stur            w0, [x1, #0x17]
    // 0x6e8684: r0 = false
    //     0x6e8684: add             x0, NULL, #0x30  ; false
    // 0x6e8688: StoreField: r1->field_1b = r0
    //     0x6e8688: stur            w0, [x1, #0x1b]
    // 0x6e868c: StoreField: r1->field_1f = r0
    //     0x6e868c: stur            w0, [x1, #0x1f]
    // 0x6e8690: StoreField: r1->field_23 = r0
    //     0x6e8690: stur            w0, [x1, #0x23]
    // 0x6e8694: ldur            x2, [fp, #-8]
    // 0x6e8698: StoreField: r1->field_27 = r2
    //     0x6e8698: stur            w2, [x1, #0x27]
    // 0x6e869c: ldur            x2, [fp, #-0x48]
    // 0x6e86a0: StoreField: r1->field_2b = r2
    //     0x6e86a0: stur            w2, [x1, #0x2b]
    // 0x6e86a4: ldur            x2, [fp, #-0x20]
    // 0x6e86a8: StoreField: r1->field_2f = r2
    //     0x6e86a8: stur            w2, [x1, #0x2f]
    // 0x6e86ac: StoreField: r1->field_33 = rZR
    //     0x6e86ac: stur            xzr, [x1, #0x33]
    // 0x6e86b0: r3 = true
    //     0x6e86b0: add             x3, NULL, #0x20  ; true
    // 0x6e86b4: StoreField: r1->field_3b = r3
    //     0x6e86b4: stur            w3, [x1, #0x3b]
    // 0x6e86b8: r2 = 0.000000
    //     0x6e86b8: ldr             x2, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6e86bc: StoreField: r1->field_3f = r2
    //     0x6e86bc: stur            w2, [x1, #0x3f]
    // 0x6e86c0: mov             x2, x1
    // 0x6e86c4: ldur            x1, [fp, #-0x38]
    // 0x6e86c8: r0 = add()
    //     0x6e86c8: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x6e86cc: r0 = GoogleMap()
    //     0x6e86cc: bl              #0x6e918c  ; AllocateGoogleMapStub -> GoogleMap (size=0xac)
    // 0x6e86d0: mov             x3, x0
    // 0x6e86d4: ldur            x0, [fp, #-0x18]
    // 0x6e86d8: stur            x3, [fp, #-8]
    // 0x6e86dc: StoreField: r3->field_f = r0
    //     0x6e86dc: stur            w0, [x3, #0xf]
    // 0x6e86e0: ldur            x2, [fp, #-0x10]
    // 0x6e86e4: r1 = Function '<anonymous closure>':.
    //     0x6e86e4: add             x1, PP, #0x27, lsl #12  ; [pp+0x272c8] AnonymousClosure: (0x6e9c28), in [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::build (0x6e8148)
    //     0x6e86e8: ldr             x1, [x1, #0x2c8]
    // 0x6e86ec: r0 = AllocateClosure()
    //     0x6e86ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e86f0: mov             x1, x0
    // 0x6e86f4: ldur            x0, [fp, #-8]
    // 0x6e86f8: StoreField: r0->field_b = r1
    //     0x6e86f8: stur            w1, [x0, #0xb]
    // 0x6e86fc: r1 = _ConstSet len:0
    //     0x6e86fc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5d8] Set<Factory<OneSequenceGestureRecognizer>>(0)
    //     0x6e8700: ldr             x1, [x1, #0x5d8]
    // 0x6e8704: StoreField: r0->field_97 = r1
    //     0x6e8704: stur            w1, [x0, #0x97]
    // 0x6e8708: r1 = true
    //     0x6e8708: add             x1, NULL, #0x20  ; true
    // 0x6e870c: StoreField: r0->field_a3 = r1
    //     0x6e870c: stur            w1, [x0, #0xa3]
    // 0x6e8710: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e8710: stur            w1, [x0, #0x17]
    // 0x6e8714: StoreField: r0->field_1b = r1
    //     0x6e8714: stur            w1, [x0, #0x1b]
    // 0x6e8718: r2 = Instance_CameraTargetBounds
    //     0x6e8718: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5e0] Obj!CameraTargetBounds@a08fd1
    //     0x6e871c: ldr             x2, [x2, #0x5e0]
    // 0x6e8720: StoreField: r0->field_1f = r2
    //     0x6e8720: stur            w2, [x0, #0x1f]
    // 0x6e8724: r2 = Instance_MapType
    //     0x6e8724: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5e8] Obj!MapType@a27881
    //     0x6e8728: ldr             x2, [x2, #0x5e8]
    // 0x6e872c: StoreField: r0->field_23 = r2
    //     0x6e872c: stur            w2, [x0, #0x23]
    // 0x6e8730: r2 = Instance_MinMaxZoomPreference
    //     0x6e8730: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5f0] Obj!MinMaxZoomPreference@a08fc1
    //     0x6e8734: ldr             x2, [x2, #0x5f0]
    // 0x6e8738: StoreField: r0->field_2b = r2
    //     0x6e8738: stur            w2, [x0, #0x2b]
    // 0x6e873c: StoreField: r0->field_2f = r1
    //     0x6e873c: stur            w1, [x0, #0x2f]
    // 0x6e8740: StoreField: r0->field_33 = r1
    //     0x6e8740: stur            w1, [x0, #0x33]
    // 0x6e8744: StoreField: r0->field_37 = r1
    //     0x6e8744: stur            w1, [x0, #0x37]
    // 0x6e8748: StoreField: r0->field_3b = r1
    //     0x6e8748: stur            w1, [x0, #0x3b]
    // 0x6e874c: r2 = false
    //     0x6e874c: add             x2, NULL, #0x30  ; false
    // 0x6e8750: StoreField: r0->field_3f = r2
    //     0x6e8750: stur            w2, [x0, #0x3f]
    // 0x6e8754: StoreField: r0->field_43 = r1
    //     0x6e8754: stur            w1, [x0, #0x43]
    // 0x6e8758: StoreField: r0->field_47 = r2
    //     0x6e8758: stur            w2, [x0, #0x47]
    // 0x6e875c: StoreField: r0->field_83 = r2
    //     0x6e875c: stur            w2, [x0, #0x83]
    // 0x6e8760: StoreField: r0->field_87 = r2
    //     0x6e8760: stur            w2, [x0, #0x87]
    // 0x6e8764: r3 = Instance_EdgeInsets
    //     0x6e8764: ldr             x3, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x6e8768: StoreField: r0->field_4b = r3
    //     0x6e8768: stur            w3, [x0, #0x4b]
    // 0x6e876c: StoreField: r0->field_8b = r2
    //     0x6e876c: stur            w2, [x0, #0x8b]
    // 0x6e8770: StoreField: r0->field_8f = r2
    //     0x6e8770: stur            w2, [x0, #0x8f]
    // 0x6e8774: StoreField: r0->field_93 = r1
    //     0x6e8774: stur            w1, [x0, #0x93]
    // 0x6e8778: ldur            x2, [fp, #-0x38]
    // 0x6e877c: StoreField: r0->field_4f = r2
    //     0x6e877c: stur            w2, [x0, #0x4f]
    // 0x6e8780: r2 = _ConstSet len:0
    //     0x6e8780: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5f8] Set<Polygon>(0)
    //     0x6e8784: ldr             x2, [x2, #0x5f8]
    // 0x6e8788: StoreField: r0->field_53 = r2
    //     0x6e8788: stur            w2, [x0, #0x53]
    // 0x6e878c: r2 = _ConstSet len:0
    //     0x6e878c: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c600] Set<Polyline>(0)
    //     0x6e8790: ldr             x2, [x2, #0x600]
    // 0x6e8794: StoreField: r0->field_57 = r2
    //     0x6e8794: stur            w2, [x0, #0x57]
    // 0x6e8798: r2 = _ConstSet len:0
    //     0x6e8798: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c608] Set<Circle>(0)
    //     0x6e879c: ldr             x2, [x2, #0x608]
    // 0x6e87a0: StoreField: r0->field_5b = r2
    //     0x6e87a0: stur            w2, [x0, #0x5b]
    // 0x6e87a4: r2 = _ConstSet len:0
    //     0x6e87a4: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c610] Set<ClusterManager>(0)
    //     0x6e87a8: ldr             x2, [x2, #0x610]
    // 0x6e87ac: StoreField: r0->field_67 = r2
    //     0x6e87ac: stur            w2, [x0, #0x67]
    // 0x6e87b0: r2 = _ConstSet len:0
    //     0x6e87b0: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c618] Set<Heatmap>(0)
    //     0x6e87b4: ldr             x2, [x2, #0x618]
    // 0x6e87b8: StoreField: r0->field_5f = r2
    //     0x6e87b8: stur            w2, [x0, #0x5f]
    // 0x6e87bc: r2 = _ConstSet len:0
    //     0x6e87bc: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c620] Set<TileOverlay>(0)
    //     0x6e87c0: ldr             x2, [x2, #0x620]
    // 0x6e87c4: StoreField: r0->field_63 = r2
    //     0x6e87c4: stur            w2, [x0, #0x63]
    // 0x6e87c8: r2 = _ConstSet len:0
    //     0x6e87c8: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c628] Set<GroundOverlay>(0)
    //     0x6e87cc: ldr             x2, [x2, #0x628]
    // 0x6e87d0: StoreField: r0->field_6b = r2
    //     0x6e87d0: stur            w2, [x0, #0x6b]
    // 0x6e87d4: r0 = Radius()
    //     0x6e87d4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e87d8: d0 = 16.000000
    //     0x6e87d8: fmov            d0, #16.00000000
    // 0x6e87dc: stur            x0, [fp, #-0x18]
    // 0x6e87e0: StoreField: r0->field_7 = d0
    //     0x6e87e0: stur            d0, [x0, #7]
    // 0x6e87e4: StoreField: r0->field_f = d0
    //     0x6e87e4: stur            d0, [x0, #0xf]
    // 0x6e87e8: r0 = BorderRadius()
    //     0x6e87e8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e87ec: mov             x1, x0
    // 0x6e87f0: ldur            x0, [fp, #-0x18]
    // 0x6e87f4: stur            x1, [fp, #-0x20]
    // 0x6e87f8: StoreField: r1->field_7 = r0
    //     0x6e87f8: stur            w0, [x1, #7]
    // 0x6e87fc: StoreField: r1->field_b = r0
    //     0x6e87fc: stur            w0, [x1, #0xb]
    // 0x6e8800: StoreField: r1->field_f = r0
    //     0x6e8800: stur            w0, [x1, #0xf]
    // 0x6e8804: StoreField: r1->field_13 = r0
    //     0x6e8804: stur            w0, [x1, #0x13]
    // 0x6e8808: r0 = RoundedRectangleBorder()
    //     0x6e8808: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6e880c: mov             x2, x0
    // 0x6e8810: ldur            x0, [fp, #-0x20]
    // 0x6e8814: stur            x2, [fp, #-0x18]
    // 0x6e8818: StoreField: r2->field_b = r0
    //     0x6e8818: stur            w0, [x2, #0xb]
    // 0x6e881c: r0 = Instance_BorderSide
    //     0x6e881c: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6e8820: ldr             x0, [x0, #0xcb8]
    // 0x6e8824: StoreField: r2->field_7 = r0
    //     0x6e8824: stur            w0, [x2, #7]
    // 0x6e8828: ldr             x1, [fp, #0x20]
    // 0x6e882c: r0 = of()
    //     0x6e882c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6e8830: LoadField: r1 = r0->field_5b
    //     0x6e8830: ldur            w1, [x0, #0x5b]
    // 0x6e8834: DecompressPointer r1
    //     0x6e8834: add             x1, x1, HEAP, lsl #32
    // 0x6e8838: stur            x1, [fp, #-0x20]
    // 0x6e883c: r0 = Icon()
    //     0x6e883c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6e8840: mov             x1, x0
    // 0x6e8844: r0 = Instance_IconData
    //     0x6e8844: add             x0, PP, #0x19, lsl #12  ; [pp+0x194f8] Obj!IconData@a09d61
    //     0x6e8848: ldr             x0, [x0, #0x4f8]
    // 0x6e884c: stur            x1, [fp, #-0x38]
    // 0x6e8850: StoreField: r1->field_b = r0
    //     0x6e8850: stur            w0, [x1, #0xb]
    // 0x6e8854: ldur            x0, [fp, #-0x20]
    // 0x6e8858: StoreField: r1->field_23 = r0
    //     0x6e8858: stur            w0, [x1, #0x23]
    // 0x6e885c: ldur            x0, [fp, #-0x10]
    // 0x6e8860: LoadField: r2 = r0->field_f
    //     0x6e8860: ldur            w2, [x0, #0xf]
    // 0x6e8864: DecompressPointer r2
    //     0x6e8864: add             x2, x2, HEAP, lsl #32
    // 0x6e8868: stur            x2, [fp, #-0x28]
    // 0x6e886c: LoadField: r3 = r2->field_b
    //     0x6e886c: ldur            w3, [x2, #0xb]
    // 0x6e8870: DecompressPointer r3
    //     0x6e8870: add             x3, x3, HEAP, lsl #32
    // 0x6e8874: cmp             w3, NULL
    // 0x6e8878: b.eq            #0x6e8d48
    // 0x6e887c: LoadField: r4 = r3->field_f
    //     0x6e887c: ldur            w4, [x3, #0xf]
    // 0x6e8880: DecompressPointer r4
    //     0x6e8880: add             x4, x4, HEAP, lsl #32
    // 0x6e8884: stur            x4, [fp, #-0x20]
    // 0x6e8888: r0 = Text()
    //     0x6e8888: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e888c: mov             x2, x0
    // 0x6e8890: ldur            x0, [fp, #-0x20]
    // 0x6e8894: stur            x2, [fp, #-0x40]
    // 0x6e8898: StoreField: r2->field_b = r0
    //     0x6e8898: stur            w0, [x2, #0xb]
    // 0x6e889c: r0 = Instance_TextStyle
    //     0x6e889c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x6e88a0: ldr             x0, [x0, #0xa70]
    // 0x6e88a4: StoreField: r2->field_13 = r0
    //     0x6e88a4: stur            w0, [x2, #0x13]
    // 0x6e88a8: r1 = <FlexParentData>
    //     0x6e88a8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e88ac: ldr             x1, [x1, #0x340]
    // 0x6e88b0: r0 = Expanded()
    //     0x6e88b0: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e88b4: mov             x3, x0
    // 0x6e88b8: r0 = 1
    //     0x6e88b8: mov             x0, #1
    // 0x6e88bc: stur            x3, [fp, #-0x20]
    // 0x6e88c0: StoreField: r3->field_13 = r0
    //     0x6e88c0: stur            x0, [x3, #0x13]
    // 0x6e88c4: r0 = Instance_FlexFit
    //     0x6e88c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e88c8: ldr             x0, [x0, #0x348]
    // 0x6e88cc: StoreField: r3->field_1b = r0
    //     0x6e88cc: stur            w0, [x3, #0x1b]
    // 0x6e88d0: ldur            x0, [fp, #-0x40]
    // 0x6e88d4: StoreField: r3->field_b = r0
    //     0x6e88d4: stur            w0, [x3, #0xb]
    // 0x6e88d8: r1 = Null
    //     0x6e88d8: mov             x1, NULL
    // 0x6e88dc: r2 = 6
    //     0x6e88dc: mov             x2, #6
    // 0x6e88e0: r0 = AllocateArray()
    //     0x6e88e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e88e4: mov             x2, x0
    // 0x6e88e8: ldur            x0, [fp, #-0x38]
    // 0x6e88ec: stur            x2, [fp, #-0x40]
    // 0x6e88f0: StoreField: r2->field_f = r0
    //     0x6e88f0: stur            w0, [x2, #0xf]
    // 0x6e88f4: r16 = Instance_SizedBox
    //     0x6e88f4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x6e88f8: ldr             x16, [x16, #0x368]
    // 0x6e88fc: StoreField: r2->field_13 = r16
    //     0x6e88fc: stur            w16, [x2, #0x13]
    // 0x6e8900: ldur            x0, [fp, #-0x20]
    // 0x6e8904: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e8904: stur            w0, [x2, #0x17]
    // 0x6e8908: r1 = <Widget>
    //     0x6e8908: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e890c: r0 = AllocateGrowableArray()
    //     0x6e890c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e8910: mov             x1, x0
    // 0x6e8914: ldur            x0, [fp, #-0x40]
    // 0x6e8918: stur            x1, [fp, #-0x20]
    // 0x6e891c: StoreField: r1->field_f = r0
    //     0x6e891c: stur            w0, [x1, #0xf]
    // 0x6e8920: r0 = 6
    //     0x6e8920: mov             x0, #6
    // 0x6e8924: StoreField: r1->field_b = r0
    //     0x6e8924: stur            w0, [x1, #0xb]
    // 0x6e8928: r0 = Row()
    //     0x6e8928: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e892c: mov             x3, x0
    // 0x6e8930: r0 = Instance_Axis
    //     0x6e8930: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e8934: stur            x3, [fp, #-0x38]
    // 0x6e8938: StoreField: r3->field_f = r0
    //     0x6e8938: stur            w0, [x3, #0xf]
    // 0x6e893c: r0 = Instance_MainAxisAlignment
    //     0x6e893c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e8940: ldr             x0, [x0, #0x230]
    // 0x6e8944: StoreField: r3->field_13 = r0
    //     0x6e8944: stur            w0, [x3, #0x13]
    // 0x6e8948: r1 = Instance_MainAxisSize
    //     0x6e8948: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e894c: ldr             x1, [x1, #0x330]
    // 0x6e8950: ArrayStore: r3[0] = r1  ; List_4
    //     0x6e8950: stur            w1, [x3, #0x17]
    // 0x6e8954: r1 = Instance_CrossAxisAlignment
    //     0x6e8954: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e8958: ldr             x1, [x1, #0x338]
    // 0x6e895c: StoreField: r3->field_1b = r1
    //     0x6e895c: stur            w1, [x3, #0x1b]
    // 0x6e8960: r4 = Instance_VerticalDirection
    //     0x6e8960: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e8964: ldr             x4, [x4, #0x340]
    // 0x6e8968: StoreField: r3->field_23 = r4
    //     0x6e8968: stur            w4, [x3, #0x23]
    // 0x6e896c: r5 = Instance_Clip
    //     0x6e896c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e8970: ldr             x5, [x5, #0x348]
    // 0x6e8974: StoreField: r3->field_2b = r5
    //     0x6e8974: stur            w5, [x3, #0x2b]
    // 0x6e8978: StoreField: r3->field_2f = rZR
    //     0x6e8978: stur            xzr, [x3, #0x2f]
    // 0x6e897c: ldur            x1, [fp, #-0x20]
    // 0x6e8980: StoreField: r3->field_b = r1
    //     0x6e8980: stur            w1, [x3, #0xb]
    // 0x6e8984: r1 = Null
    //     0x6e8984: mov             x1, NULL
    // 0x6e8988: r2 = 4
    //     0x6e8988: mov             x2, #4
    // 0x6e898c: r0 = AllocateArray()
    //     0x6e898c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8990: stur            x0, [fp, #-0x20]
    // 0x6e8994: r16 = "Enlem: "
    //     0x6e8994: add             x16, PP, #0x27, lsl #12  ; [pp+0x272d0] "Enlem: "
    //     0x6e8998: ldr             x16, [x16, #0x2d0]
    // 0x6e899c: StoreField: r0->field_f = r16
    //     0x6e899c: stur            w16, [x0, #0xf]
    // 0x6e89a0: ldur            d0, [fp, #-0x60]
    // 0x6e89a4: r1 = inline_Allocate_Double()
    //     0x6e89a4: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x6e89a8: add             x1, x1, #0x10
    //     0x6e89ac: cmp             x2, x1
    //     0x6e89b0: b.ls            #0x6e8d4c
    //     0x6e89b4: str             x1, [THR, #0x60]  ; THR::top
    //     0x6e89b8: sub             x1, x1, #0xf
    //     0x6e89bc: mov             x2, #0xe15c
    //     0x6e89c0: movk            x2, #3, lsl #16
    //     0x6e89c4: stur            x2, [x1, #-1]
    // 0x6e89c8: StoreField: r1->field_7 = d0
    //     0x6e89c8: stur            d0, [x1, #7]
    // 0x6e89cc: r2 = 6
    //     0x6e89cc: mov             x2, #6
    // 0x6e89d0: r0 = toStringAsFixed()
    //     0x6e89d0: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x6e89d4: ldur            x1, [fp, #-0x20]
    // 0x6e89d8: ArrayStore: r1[1] = r0  ; List_4
    //     0x6e89d8: add             x25, x1, #0x13
    //     0x6e89dc: str             w0, [x25]
    //     0x6e89e0: tbz             w0, #0, #0x6e89fc
    //     0x6e89e4: ldurb           w16, [x1, #-1]
    //     0x6e89e8: ldurb           w17, [x0, #-1]
    //     0x6e89ec: and             x16, x17, x16, lsr #2
    //     0x6e89f0: tst             x16, HEAP, lsr #32
    //     0x6e89f4: b.eq            #0x6e89fc
    //     0x6e89f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e89fc: ldur            x16, [fp, #-0x20]
    // 0x6e8a00: str             x16, [SP]
    // 0x6e8a04: r0 = _interpolate()
    //     0x6e8a04: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e8a08: ldur            x1, [fp, #-0x28]
    // 0x6e8a0c: mov             x3, x0
    // 0x6e8a10: r2 = Instance_IconData
    //     0x6e8a10: add             x2, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e8a14: ldr             x2, [x2, #0x528]
    // 0x6e8a18: r0 = _buildInfoRow()
    //     0x6e8a18: bl              #0x6e8ff4  ; [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::_buildInfoRow
    // 0x6e8a1c: mov             x3, x0
    // 0x6e8a20: ldur            x0, [fp, #-0x10]
    // 0x6e8a24: stur            x3, [fp, #-0x28]
    // 0x6e8a28: LoadField: r4 = r0->field_f
    //     0x6e8a28: ldur            w4, [x0, #0xf]
    // 0x6e8a2c: DecompressPointer r4
    //     0x6e8a2c: add             x4, x4, HEAP, lsl #32
    // 0x6e8a30: stur            x4, [fp, #-0x20]
    // 0x6e8a34: r1 = Null
    //     0x6e8a34: mov             x1, NULL
    // 0x6e8a38: r2 = 4
    //     0x6e8a38: mov             x2, #4
    // 0x6e8a3c: r0 = AllocateArray()
    //     0x6e8a3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8a40: stur            x0, [fp, #-0x40]
    // 0x6e8a44: r16 = "Boylam: "
    //     0x6e8a44: add             x16, PP, #0x27, lsl #12  ; [pp+0x272d8] "Boylam: "
    //     0x6e8a48: ldr             x16, [x16, #0x2d8]
    // 0x6e8a4c: StoreField: r0->field_f = r16
    //     0x6e8a4c: stur            w16, [x0, #0xf]
    // 0x6e8a50: ldur            d0, [fp, #-0x58]
    // 0x6e8a54: r1 = inline_Allocate_Double()
    //     0x6e8a54: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x6e8a58: add             x1, x1, #0x10
    //     0x6e8a5c: cmp             x2, x1
    //     0x6e8a60: b.ls            #0x6e8d68
    //     0x6e8a64: str             x1, [THR, #0x60]  ; THR::top
    //     0x6e8a68: sub             x1, x1, #0xf
    //     0x6e8a6c: mov             x2, #0xe15c
    //     0x6e8a70: movk            x2, #3, lsl #16
    //     0x6e8a74: stur            x2, [x1, #-1]
    // 0x6e8a78: StoreField: r1->field_7 = d0
    //     0x6e8a78: stur            d0, [x1, #7]
    // 0x6e8a7c: r2 = 6
    //     0x6e8a7c: mov             x2, #6
    // 0x6e8a80: r0 = toStringAsFixed()
    //     0x6e8a80: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x6e8a84: ldur            x1, [fp, #-0x40]
    // 0x6e8a88: ArrayStore: r1[1] = r0  ; List_4
    //     0x6e8a88: add             x25, x1, #0x13
    //     0x6e8a8c: str             w0, [x25]
    //     0x6e8a90: tbz             w0, #0, #0x6e8aac
    //     0x6e8a94: ldurb           w16, [x1, #-1]
    //     0x6e8a98: ldurb           w17, [x0, #-1]
    //     0x6e8a9c: and             x16, x17, x16, lsr #2
    //     0x6e8aa0: tst             x16, HEAP, lsr #32
    //     0x6e8aa4: b.eq            #0x6e8aac
    //     0x6e8aa8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8aac: ldur            x16, [fp, #-0x40]
    // 0x6e8ab0: str             x16, [SP]
    // 0x6e8ab4: r0 = _interpolate()
    //     0x6e8ab4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e8ab8: ldur            x1, [fp, #-0x20]
    // 0x6e8abc: mov             x3, x0
    // 0x6e8ac0: r2 = Instance_IconData
    //     0x6e8ac0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e8ac4: ldr             x2, [x2, #0x528]
    // 0x6e8ac8: r0 = _buildInfoRow()
    //     0x6e8ac8: bl              #0x6e8ff4  ; [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::_buildInfoRow
    // 0x6e8acc: mov             x3, x0
    // 0x6e8ad0: ldur            x0, [fp, #-0x10]
    // 0x6e8ad4: stur            x3, [fp, #-0x40]
    // 0x6e8ad8: LoadField: r4 = r0->field_f
    //     0x6e8ad8: ldur            w4, [x0, #0xf]
    // 0x6e8adc: DecompressPointer r4
    //     0x6e8adc: add             x4, x4, HEAP, lsl #32
    // 0x6e8ae0: stur            x4, [fp, #-0x20]
    // 0x6e8ae4: r1 = Null
    //     0x6e8ae4: mov             x1, NULL
    // 0x6e8ae8: r2 = 4
    //     0x6e8ae8: mov             x2, #4
    // 0x6e8aec: r0 = AllocateArray()
    //     0x6e8aec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8af0: stur            x0, [fp, #-0x10]
    // 0x6e8af4: r16 = "Güncelleme: "
    //     0x6e8af4: add             x16, PP, #0x27, lsl #12  ; [pp+0x272e0] "Güncelleme: "
    //     0x6e8af8: ldr             x16, [x16, #0x2e0]
    // 0x6e8afc: StoreField: r0->field_f = r16
    //     0x6e8afc: stur            w16, [x0, #0xf]
    // 0x6e8b00: ldur            x1, [fp, #-0x20]
    // 0x6e8b04: ldur            x2, [fp, #-0x30]
    // 0x6e8b08: r0 = _formatTimestamp()
    //     0x6e8b08: bl              #0x6e8d84  ; [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::_formatTimestamp
    // 0x6e8b0c: ldur            x1, [fp, #-0x10]
    // 0x6e8b10: ArrayStore: r1[1] = r0  ; List_4
    //     0x6e8b10: add             x25, x1, #0x13
    //     0x6e8b14: str             w0, [x25]
    //     0x6e8b18: tbz             w0, #0, #0x6e8b34
    //     0x6e8b1c: ldurb           w16, [x1, #-1]
    //     0x6e8b20: ldurb           w17, [x0, #-1]
    //     0x6e8b24: and             x16, x17, x16, lsr #2
    //     0x6e8b28: tst             x16, HEAP, lsr #32
    //     0x6e8b2c: b.eq            #0x6e8b34
    //     0x6e8b30: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8b34: ldur            x16, [fp, #-0x10]
    // 0x6e8b38: str             x16, [SP]
    // 0x6e8b3c: r0 = _interpolate()
    //     0x6e8b3c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e8b40: ldur            x1, [fp, #-0x20]
    // 0x6e8b44: mov             x3, x0
    // 0x6e8b48: r2 = Instance_IconData
    //     0x6e8b48: add             x2, PP, #0x27, lsl #12  ; [pp+0x272e8] Obj!IconData@a09c41
    //     0x6e8b4c: ldr             x2, [x2, #0x2e8]
    // 0x6e8b50: r0 = _buildInfoRow()
    //     0x6e8b50: bl              #0x6e8ff4  ; [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::_buildInfoRow
    // 0x6e8b54: r1 = Null
    //     0x6e8b54: mov             x1, NULL
    // 0x6e8b58: r2 = 14
    //     0x6e8b58: mov             x2, #0xe
    // 0x6e8b5c: stur            x0, [fp, #-0x10]
    // 0x6e8b60: r0 = AllocateArray()
    //     0x6e8b60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8b64: mov             x2, x0
    // 0x6e8b68: ldur            x0, [fp, #-0x38]
    // 0x6e8b6c: stur            x2, [fp, #-0x20]
    // 0x6e8b70: StoreField: r2->field_f = r0
    //     0x6e8b70: stur            w0, [x2, #0xf]
    // 0x6e8b74: r16 = Instance_Divider
    //     0x6e8b74: add             x16, PP, #0x27, lsl #12  ; [pp+0x272f0] Obj!Divider@a1f6e1
    //     0x6e8b78: ldr             x16, [x16, #0x2f0]
    // 0x6e8b7c: StoreField: r2->field_13 = r16
    //     0x6e8b7c: stur            w16, [x2, #0x13]
    // 0x6e8b80: ldur            x0, [fp, #-0x28]
    // 0x6e8b84: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e8b84: stur            w0, [x2, #0x17]
    // 0x6e8b88: r16 = Instance_SizedBox
    //     0x6e8b88: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e8b8c: ldr             x16, [x16, #0x318]
    // 0x6e8b90: StoreField: r2->field_1b = r16
    //     0x6e8b90: stur            w16, [x2, #0x1b]
    // 0x6e8b94: ldur            x0, [fp, #-0x40]
    // 0x6e8b98: StoreField: r2->field_1f = r0
    //     0x6e8b98: stur            w0, [x2, #0x1f]
    // 0x6e8b9c: r16 = Instance_SizedBox
    //     0x6e8b9c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e8ba0: ldr             x16, [x16, #0x318]
    // 0x6e8ba4: StoreField: r2->field_23 = r16
    //     0x6e8ba4: stur            w16, [x2, #0x23]
    // 0x6e8ba8: ldur            x0, [fp, #-0x10]
    // 0x6e8bac: StoreField: r2->field_27 = r0
    //     0x6e8bac: stur            w0, [x2, #0x27]
    // 0x6e8bb0: r1 = <Widget>
    //     0x6e8bb0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e8bb4: r0 = AllocateGrowableArray()
    //     0x6e8bb4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e8bb8: mov             x1, x0
    // 0x6e8bbc: ldur            x0, [fp, #-0x20]
    // 0x6e8bc0: stur            x1, [fp, #-0x10]
    // 0x6e8bc4: StoreField: r1->field_f = r0
    //     0x6e8bc4: stur            w0, [x1, #0xf]
    // 0x6e8bc8: r0 = 14
    //     0x6e8bc8: mov             x0, #0xe
    // 0x6e8bcc: StoreField: r1->field_b = r0
    //     0x6e8bcc: stur            w0, [x1, #0xb]
    // 0x6e8bd0: r0 = Column()
    //     0x6e8bd0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e8bd4: mov             x1, x0
    // 0x6e8bd8: r0 = Instance_Axis
    //     0x6e8bd8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e8bdc: stur            x1, [fp, #-0x20]
    // 0x6e8be0: StoreField: r1->field_f = r0
    //     0x6e8be0: stur            w0, [x1, #0xf]
    // 0x6e8be4: r0 = Instance_MainAxisAlignment
    //     0x6e8be4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e8be8: ldr             x0, [x0, #0x230]
    // 0x6e8bec: StoreField: r1->field_13 = r0
    //     0x6e8bec: stur            w0, [x1, #0x13]
    // 0x6e8bf0: r0 = Instance_MainAxisSize
    //     0x6e8bf0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6e8bf4: ldr             x0, [x0, #0xb60]
    // 0x6e8bf8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e8bf8: stur            w0, [x1, #0x17]
    // 0x6e8bfc: r0 = Instance_CrossAxisAlignment
    //     0x6e8bfc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e8c00: ldr             x0, [x0, #0x238]
    // 0x6e8c04: StoreField: r1->field_1b = r0
    //     0x6e8c04: stur            w0, [x1, #0x1b]
    // 0x6e8c08: r0 = Instance_VerticalDirection
    //     0x6e8c08: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e8c0c: ldr             x0, [x0, #0x340]
    // 0x6e8c10: StoreField: r1->field_23 = r0
    //     0x6e8c10: stur            w0, [x1, #0x23]
    // 0x6e8c14: r0 = Instance_Clip
    //     0x6e8c14: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e8c18: ldr             x0, [x0, #0x348]
    // 0x6e8c1c: StoreField: r1->field_2b = r0
    //     0x6e8c1c: stur            w0, [x1, #0x2b]
    // 0x6e8c20: StoreField: r1->field_2f = rZR
    //     0x6e8c20: stur            xzr, [x1, #0x2f]
    // 0x6e8c24: ldur            x0, [fp, #-0x10]
    // 0x6e8c28: StoreField: r1->field_b = r0
    //     0x6e8c28: stur            w0, [x1, #0xb]
    // 0x6e8c2c: r0 = Padding()
    //     0x6e8c2c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e8c30: mov             x1, x0
    // 0x6e8c34: r0 = Instance_EdgeInsets
    //     0x6e8c34: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6e8c38: ldr             x0, [x0, #0x240]
    // 0x6e8c3c: stur            x1, [fp, #-0x10]
    // 0x6e8c40: StoreField: r1->field_f = r0
    //     0x6e8c40: stur            w0, [x1, #0xf]
    // 0x6e8c44: ldur            x0, [fp, #-0x20]
    // 0x6e8c48: StoreField: r1->field_b = r0
    //     0x6e8c48: stur            w0, [x1, #0xb]
    // 0x6e8c4c: r0 = Card()
    //     0x6e8c4c: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x6e8c50: d0 = 8.000000
    //     0x6e8c50: fmov            d0, #8.00000000
    // 0x6e8c54: stur            x0, [fp, #-0x20]
    // 0x6e8c58: ArrayStore: r0[0] = d0  ; List_8
    //     0x6e8c58: stur            d0, [x0, #0x17]
    // 0x6e8c5c: ldur            x1, [fp, #-0x18]
    // 0x6e8c60: StoreField: r0->field_1f = r1
    //     0x6e8c60: stur            w1, [x0, #0x1f]
    // 0x6e8c64: r1 = true
    //     0x6e8c64: add             x1, NULL, #0x20  ; true
    // 0x6e8c68: StoreField: r0->field_23 = r1
    //     0x6e8c68: stur            w1, [x0, #0x23]
    // 0x6e8c6c: ldur            x2, [fp, #-0x10]
    // 0x6e8c70: StoreField: r0->field_33 = r2
    //     0x6e8c70: stur            w2, [x0, #0x33]
    // 0x6e8c74: StoreField: r0->field_2f = r1
    //     0x6e8c74: stur            w1, [x0, #0x2f]
    // 0x6e8c78: r1 = Instance__CardVariant
    //     0x6e8c78: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x6e8c7c: ldr             x1, [x1, #0xd38]
    // 0x6e8c80: StoreField: r0->field_37 = r1
    //     0x6e8c80: stur            w1, [x0, #0x37]
    // 0x6e8c84: r1 = <StackParentData>
    //     0x6e8c84: add             x1, PP, #0x11, lsl #12  ; [pp+0x116a8] TypeArguments: <StackParentData>
    //     0x6e8c88: ldr             x1, [x1, #0x6a8]
    // 0x6e8c8c: r0 = Positioned()
    //     0x6e8c8c: bl              #0x40a1ec  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0x6e8c90: mov             x3, x0
    // 0x6e8c94: r0 = 20.000000
    //     0x6e8c94: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x6e8c98: ldr             x0, [x0, #0xe48]
    // 0x6e8c9c: stur            x3, [fp, #-0x10]
    // 0x6e8ca0: StoreField: r3->field_13 = r0
    //     0x6e8ca0: stur            w0, [x3, #0x13]
    // 0x6e8ca4: StoreField: r3->field_1b = r0
    //     0x6e8ca4: stur            w0, [x3, #0x1b]
    // 0x6e8ca8: StoreField: r3->field_1f = r0
    //     0x6e8ca8: stur            w0, [x3, #0x1f]
    // 0x6e8cac: ldur            x0, [fp, #-0x20]
    // 0x6e8cb0: StoreField: r3->field_b = r0
    //     0x6e8cb0: stur            w0, [x3, #0xb]
    // 0x6e8cb4: r1 = Null
    //     0x6e8cb4: mov             x1, NULL
    // 0x6e8cb8: r2 = 4
    //     0x6e8cb8: mov             x2, #4
    // 0x6e8cbc: r0 = AllocateArray()
    //     0x6e8cbc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8cc0: mov             x2, x0
    // 0x6e8cc4: ldur            x0, [fp, #-8]
    // 0x6e8cc8: stur            x2, [fp, #-0x18]
    // 0x6e8ccc: StoreField: r2->field_f = r0
    //     0x6e8ccc: stur            w0, [x2, #0xf]
    // 0x6e8cd0: ldur            x0, [fp, #-0x10]
    // 0x6e8cd4: StoreField: r2->field_13 = r0
    //     0x6e8cd4: stur            w0, [x2, #0x13]
    // 0x6e8cd8: r1 = <Widget>
    //     0x6e8cd8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e8cdc: r0 = AllocateGrowableArray()
    //     0x6e8cdc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e8ce0: mov             x1, x0
    // 0x6e8ce4: ldur            x0, [fp, #-0x18]
    // 0x6e8ce8: stur            x1, [fp, #-8]
    // 0x6e8cec: StoreField: r1->field_f = r0
    //     0x6e8cec: stur            w0, [x1, #0xf]
    // 0x6e8cf0: r0 = 4
    //     0x6e8cf0: mov             x0, #4
    // 0x6e8cf4: StoreField: r1->field_b = r0
    //     0x6e8cf4: stur            w0, [x1, #0xb]
    // 0x6e8cf8: r0 = Stack()
    //     0x6e8cf8: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x6e8cfc: r1 = Instance_AlignmentDirectional
    //     0x6e8cfc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x6e8d00: ldr             x1, [x1, #0xd28]
    // 0x6e8d04: StoreField: r0->field_f = r1
    //     0x6e8d04: stur            w1, [x0, #0xf]
    // 0x6e8d08: r1 = Instance_StackFit
    //     0x6e8d08: add             x1, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x6e8d0c: ldr             x1, [x1, #0x548]
    // 0x6e8d10: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e8d10: stur            w1, [x0, #0x17]
    // 0x6e8d14: r1 = Instance_Clip
    //     0x6e8d14: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6e8d18: ldr             x1, [x1, #0x2d8]
    // 0x6e8d1c: StoreField: r0->field_1b = r1
    //     0x6e8d1c: stur            w1, [x0, #0x1b]
    // 0x6e8d20: ldur            x1, [fp, #-8]
    // 0x6e8d24: StoreField: r0->field_b = r1
    //     0x6e8d24: stur            w1, [x0, #0xb]
    // 0x6e8d28: LeaveFrame
    //     0x6e8d28: mov             SP, fp
    //     0x6e8d2c: ldp             fp, lr, [SP], #0x10
    // 0x6e8d30: ret
    //     0x6e8d30: ret             
    // 0x6e8d34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e8d34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e8d38: b               #0x6e82f8
    // 0x6e8d3c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e8d3c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e8d40: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8d40: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8d44: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8d44: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8d48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e8d48: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e8d4c: SaveReg d0
    //     0x6e8d4c: str             q0, [SP, #-0x10]!
    // 0x6e8d50: SaveReg r0
    //     0x6e8d50: str             x0, [SP, #-8]!
    // 0x6e8d54: r0 = AllocateDouble()
    //     0x6e8d54: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6e8d58: mov             x1, x0
    // 0x6e8d5c: RestoreReg r0
    //     0x6e8d5c: ldr             x0, [SP], #8
    // 0x6e8d60: RestoreReg d0
    //     0x6e8d60: ldr             q0, [SP], #0x10
    // 0x6e8d64: b               #0x6e89c8
    // 0x6e8d68: SaveReg d0
    //     0x6e8d68: str             q0, [SP, #-0x10]!
    // 0x6e8d6c: SaveReg r0
    //     0x6e8d6c: str             x0, [SP, #-8]!
    // 0x6e8d70: r0 = AllocateDouble()
    //     0x6e8d70: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6e8d74: mov             x1, x0
    // 0x6e8d78: RestoreReg r0
    //     0x6e8d78: ldr             x0, [SP], #8
    // 0x6e8d7c: RestoreReg d0
    //     0x6e8d7c: ldr             q0, [SP], #0x10
    // 0x6e8d80: b               #0x6e8a78
  }
  _ _formatTimestamp(/* No info */) {
    // ** addr: 0x6e8d84, size: 0x270
    // 0x6e8d84: EnterFrame
    //     0x6e8d84: stp             fp, lr, [SP, #-0x10]!
    //     0x6e8d88: mov             fp, SP
    // 0x6e8d8c: AllocStack(0x20)
    //     0x6e8d8c: sub             SP, SP, #0x20
    // 0x6e8d90: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x6e8d90: mov             x0, x2
    //     0x6e8d94: stur            x2, [fp, #-8]
    // 0x6e8d98: CheckStackOverflow
    //     0x6e8d98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e8d9c: cmp             SP, x16
    //     0x6e8da0: b.ls            #0x6e8fd8
    // 0x6e8da4: mov             x1, x0
    // 0x6e8da8: r0 = _parts()
    //     0x6e8da8: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8dac: mov             x2, x0
    // 0x6e8db0: LoadField: r0 = r2->field_b
    //     0x6e8db0: ldur            w0, [x2, #0xb]
    // 0x6e8db4: r1 = LoadInt32Instr(r0)
    //     0x6e8db4: sbfx            x1, x0, #1, #0x1f
    // 0x6e8db8: mov             x0, x1
    // 0x6e8dbc: r1 = 5
    //     0x6e8dbc: mov             x1, #5
    // 0x6e8dc0: cmp             x1, x0
    // 0x6e8dc4: b.hs            #0x6e8fe0
    // 0x6e8dc8: LoadField: r0 = r2->field_23
    //     0x6e8dc8: ldur            w0, [x2, #0x23]
    // 0x6e8dcc: DecompressPointer r0
    //     0x6e8dcc: add             x0, x0, HEAP, lsl #32
    // 0x6e8dd0: stur            x0, [fp, #-0x10]
    // 0x6e8dd4: r1 = Null
    //     0x6e8dd4: mov             x1, NULL
    // 0x6e8dd8: r2 = 18
    //     0x6e8dd8: mov             x2, #0x12
    // 0x6e8ddc: r0 = AllocateArray()
    //     0x6e8ddc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e8de0: mov             x2, x0
    // 0x6e8de4: ldur            x0, [fp, #-0x10]
    // 0x6e8de8: stur            x2, [fp, #-0x18]
    // 0x6e8dec: StoreField: r2->field_f = r0
    //     0x6e8dec: stur            w0, [x2, #0xf]
    // 0x6e8df0: r16 = "/"
    //     0x6e8df0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6e8df4: StoreField: r2->field_13 = r16
    //     0x6e8df4: stur            w16, [x2, #0x13]
    // 0x6e8df8: ldur            x1, [fp, #-8]
    // 0x6e8dfc: r0 = _parts()
    //     0x6e8dfc: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8e00: mov             x2, x0
    // 0x6e8e04: LoadField: r0 = r2->field_b
    //     0x6e8e04: ldur            w0, [x2, #0xb]
    // 0x6e8e08: r1 = LoadInt32Instr(r0)
    //     0x6e8e08: sbfx            x1, x0, #1, #0x1f
    // 0x6e8e0c: mov             x0, x1
    // 0x6e8e10: r1 = 7
    //     0x6e8e10: mov             x1, #7
    // 0x6e8e14: cmp             x1, x0
    // 0x6e8e18: b.hs            #0x6e8fe4
    // 0x6e8e1c: LoadField: r0 = r2->field_2b
    //     0x6e8e1c: ldur            w0, [x2, #0x2b]
    // 0x6e8e20: DecompressPointer r0
    //     0x6e8e20: add             x0, x0, HEAP, lsl #32
    // 0x6e8e24: ldur            x1, [fp, #-0x18]
    // 0x6e8e28: ArrayStore: r1[2] = r0  ; List_4
    //     0x6e8e28: add             x25, x1, #0x17
    //     0x6e8e2c: str             w0, [x25]
    //     0x6e8e30: tbz             w0, #0, #0x6e8e4c
    //     0x6e8e34: ldurb           w16, [x1, #-1]
    //     0x6e8e38: ldurb           w17, [x0, #-1]
    //     0x6e8e3c: and             x16, x17, x16, lsr #2
    //     0x6e8e40: tst             x16, HEAP, lsr #32
    //     0x6e8e44: b.eq            #0x6e8e4c
    //     0x6e8e48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8e4c: ldur            x0, [fp, #-0x18]
    // 0x6e8e50: r16 = "/"
    //     0x6e8e50: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6e8e54: StoreField: r0->field_1b = r16
    //     0x6e8e54: stur            w16, [x0, #0x1b]
    // 0x6e8e58: ldur            x1, [fp, #-8]
    // 0x6e8e5c: r0 = _parts()
    //     0x6e8e5c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8e60: mov             x2, x0
    // 0x6e8e64: LoadField: r0 = r2->field_b
    //     0x6e8e64: ldur            w0, [x2, #0xb]
    // 0x6e8e68: r1 = LoadInt32Instr(r0)
    //     0x6e8e68: sbfx            x1, x0, #1, #0x1f
    // 0x6e8e6c: mov             x0, x1
    // 0x6e8e70: r1 = 8
    //     0x6e8e70: mov             x1, #8
    // 0x6e8e74: cmp             x1, x0
    // 0x6e8e78: b.hs            #0x6e8fe8
    // 0x6e8e7c: LoadField: r0 = r2->field_2f
    //     0x6e8e7c: ldur            w0, [x2, #0x2f]
    // 0x6e8e80: DecompressPointer r0
    //     0x6e8e80: add             x0, x0, HEAP, lsl #32
    // 0x6e8e84: ldur            x1, [fp, #-0x18]
    // 0x6e8e88: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e8e88: add             x25, x1, #0x1f
    //     0x6e8e8c: str             w0, [x25]
    //     0x6e8e90: tbz             w0, #0, #0x6e8eac
    //     0x6e8e94: ldurb           w16, [x1, #-1]
    //     0x6e8e98: ldurb           w17, [x0, #-1]
    //     0x6e8e9c: and             x16, x17, x16, lsr #2
    //     0x6e8ea0: tst             x16, HEAP, lsr #32
    //     0x6e8ea4: b.eq            #0x6e8eac
    //     0x6e8ea8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8eac: ldur            x0, [fp, #-0x18]
    // 0x6e8eb0: r16 = " "
    //     0x6e8eb0: ldr             x16, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x6e8eb4: StoreField: r0->field_23 = r16
    //     0x6e8eb4: stur            w16, [x0, #0x23]
    // 0x6e8eb8: ldur            x1, [fp, #-8]
    // 0x6e8ebc: r0 = _parts()
    //     0x6e8ebc: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8ec0: mov             x2, x0
    // 0x6e8ec4: LoadField: r0 = r2->field_b
    //     0x6e8ec4: ldur            w0, [x2, #0xb]
    // 0x6e8ec8: r1 = LoadInt32Instr(r0)
    //     0x6e8ec8: sbfx            x1, x0, #1, #0x1f
    // 0x6e8ecc: mov             x0, x1
    // 0x6e8ed0: r1 = 4
    //     0x6e8ed0: mov             x1, #4
    // 0x6e8ed4: cmp             x1, x0
    // 0x6e8ed8: b.hs            #0x6e8fec
    // 0x6e8edc: LoadField: r0 = r2->field_1f
    //     0x6e8edc: ldur            w0, [x2, #0x1f]
    // 0x6e8ee0: DecompressPointer r0
    //     0x6e8ee0: add             x0, x0, HEAP, lsl #32
    // 0x6e8ee4: ldur            x1, [fp, #-0x18]
    // 0x6e8ee8: ArrayStore: r1[6] = r0  ; List_4
    //     0x6e8ee8: add             x25, x1, #0x27
    //     0x6e8eec: str             w0, [x25]
    //     0x6e8ef0: tbz             w0, #0, #0x6e8f0c
    //     0x6e8ef4: ldurb           w16, [x1, #-1]
    //     0x6e8ef8: ldurb           w17, [x0, #-1]
    //     0x6e8efc: and             x16, x17, x16, lsr #2
    //     0x6e8f00: tst             x16, HEAP, lsr #32
    //     0x6e8f04: b.eq            #0x6e8f0c
    //     0x6e8f08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8f0c: ldur            x0, [fp, #-0x18]
    // 0x6e8f10: r16 = ":"
    //     0x6e8f10: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6e8f14: StoreField: r0->field_2b = r16
    //     0x6e8f14: stur            w16, [x0, #0x2b]
    // 0x6e8f18: ldur            x1, [fp, #-8]
    // 0x6e8f1c: r0 = _parts()
    //     0x6e8f1c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6e8f20: mov             x2, x0
    // 0x6e8f24: LoadField: r0 = r2->field_b
    //     0x6e8f24: ldur            w0, [x2, #0xb]
    // 0x6e8f28: r1 = LoadInt32Instr(r0)
    //     0x6e8f28: sbfx            x1, x0, #1, #0x1f
    // 0x6e8f2c: mov             x0, x1
    // 0x6e8f30: r1 = 3
    //     0x6e8f30: mov             x1, #3
    // 0x6e8f34: cmp             x1, x0
    // 0x6e8f38: b.hs            #0x6e8ff0
    // 0x6e8f3c: LoadField: r0 = r2->field_1b
    //     0x6e8f3c: ldur            w0, [x2, #0x1b]
    // 0x6e8f40: DecompressPointer r0
    //     0x6e8f40: add             x0, x0, HEAP, lsl #32
    // 0x6e8f44: r1 = 60
    //     0x6e8f44: mov             x1, #0x3c
    // 0x6e8f48: branchIfSmi(r0, 0x6e8f54)
    //     0x6e8f48: tbz             w0, #0, #0x6e8f54
    // 0x6e8f4c: r1 = LoadClassIdInstr(r0)
    //     0x6e8f4c: ldur            x1, [x0, #-1]
    //     0x6e8f50: ubfx            x1, x1, #0xc, #0x14
    // 0x6e8f54: str             x0, [SP]
    // 0x6e8f58: mov             x0, x1
    // 0x6e8f5c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6e8f5c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6e8f60: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6e8f60: mov             x17, #0x21f6
    //     0x6e8f64: add             lr, x0, x17
    //     0x6e8f68: ldr             lr, [x21, lr, lsl #3]
    //     0x6e8f6c: blr             lr
    // 0x6e8f70: r1 = LoadClassIdInstr(r0)
    //     0x6e8f70: ldur            x1, [x0, #-1]
    //     0x6e8f74: ubfx            x1, x1, #0xc, #0x14
    // 0x6e8f78: mov             x16, x0
    // 0x6e8f7c: mov             x0, x1
    // 0x6e8f80: mov             x1, x16
    // 0x6e8f84: r2 = 2
    //     0x6e8f84: mov             x2, #2
    // 0x6e8f88: r3 = "0"
    //     0x6e8f88: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6e8f8c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6e8f8c: sub             lr, x0, #0xffc
    //     0x6e8f90: ldr             lr, [x21, lr, lsl #3]
    //     0x6e8f94: blr             lr
    // 0x6e8f98: ldur            x1, [fp, #-0x18]
    // 0x6e8f9c: ArrayStore: r1[8] = r0  ; List_4
    //     0x6e8f9c: add             x25, x1, #0x2f
    //     0x6e8fa0: str             w0, [x25]
    //     0x6e8fa4: tbz             w0, #0, #0x6e8fc0
    //     0x6e8fa8: ldurb           w16, [x1, #-1]
    //     0x6e8fac: ldurb           w17, [x0, #-1]
    //     0x6e8fb0: and             x16, x17, x16, lsr #2
    //     0x6e8fb4: tst             x16, HEAP, lsr #32
    //     0x6e8fb8: b.eq            #0x6e8fc0
    //     0x6e8fbc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e8fc0: ldur            x16, [fp, #-0x18]
    // 0x6e8fc4: str             x16, [SP]
    // 0x6e8fc8: r0 = _interpolate()
    //     0x6e8fc8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e8fcc: LeaveFrame
    //     0x6e8fcc: mov             SP, fp
    //     0x6e8fd0: ldp             fp, lr, [SP], #0x10
    // 0x6e8fd4: ret
    //     0x6e8fd4: ret             
    // 0x6e8fd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e8fd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e8fdc: b               #0x6e8da4
    // 0x6e8fe0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8fe0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8fe4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8fe4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8fe8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8fe8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8fec: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8fec: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e8ff0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e8ff0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _buildInfoRow(/* No info */) {
    // ** addr: 0x6e8ff4, size: 0x198
    // 0x6e8ff4: EnterFrame
    //     0x6e8ff4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e8ff8: mov             fp, SP
    // 0x6e8ffc: AllocStack(0x20)
    //     0x6e8ffc: sub             SP, SP, #0x20
    // 0x6e9000: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x6e9000: mov             x0, x2
    //     0x6e9004: stur            x2, [fp, #-8]
    //     0x6e9008: stur            x3, [fp, #-0x10]
    // 0x6e900c: CheckStackOverflow
    //     0x6e900c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e9010: cmp             SP, x16
    //     0x6e9014: b.ls            #0x6e9184
    // 0x6e9018: r1 = _ConstMap len:12
    //     0x6e9018: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e901c: r2 = 1200
    //     0x6e901c: mov             x2, #0x4b0
    // 0x6e9020: r0 = []()
    //     0x6e9020: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e9024: stur            x0, [fp, #-0x18]
    // 0x6e9028: r0 = Icon()
    //     0x6e9028: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6e902c: mov             x3, x0
    // 0x6e9030: ldur            x0, [fp, #-8]
    // 0x6e9034: stur            x3, [fp, #-0x20]
    // 0x6e9038: StoreField: r3->field_b = r0
    //     0x6e9038: stur            w0, [x3, #0xb]
    // 0x6e903c: r0 = 18.000000
    //     0x6e903c: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x6e9040: ldr             x0, [x0, #0xe08]
    // 0x6e9044: StoreField: r3->field_f = r0
    //     0x6e9044: stur            w0, [x3, #0xf]
    // 0x6e9048: ldur            x0, [fp, #-0x18]
    // 0x6e904c: StoreField: r3->field_23 = r0
    //     0x6e904c: stur            w0, [x3, #0x23]
    // 0x6e9050: r1 = _ConstMap len:12
    //     0x6e9050: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e9054: r2 = 1600
    //     0x6e9054: mov             x2, #0x640
    // 0x6e9058: r0 = []()
    //     0x6e9058: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e905c: stur            x0, [fp, #-8]
    // 0x6e9060: r0 = TextStyle()
    //     0x6e9060: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e9064: mov             x1, x0
    // 0x6e9068: r0 = true
    //     0x6e9068: add             x0, NULL, #0x20  ; true
    // 0x6e906c: stur            x1, [fp, #-0x18]
    // 0x6e9070: StoreField: r1->field_7 = r0
    //     0x6e9070: stur            w0, [x1, #7]
    // 0x6e9074: ldur            x0, [fp, #-8]
    // 0x6e9078: StoreField: r1->field_b = r0
    //     0x6e9078: stur            w0, [x1, #0xb]
    // 0x6e907c: r0 = 14.000000
    //     0x6e907c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x6e9080: ldr             x0, [x0, #0x1c8]
    // 0x6e9084: StoreField: r1->field_1f = r0
    //     0x6e9084: stur            w0, [x1, #0x1f]
    // 0x6e9088: r0 = Text()
    //     0x6e9088: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e908c: mov             x2, x0
    // 0x6e9090: ldur            x0, [fp, #-0x10]
    // 0x6e9094: stur            x2, [fp, #-8]
    // 0x6e9098: StoreField: r2->field_b = r0
    //     0x6e9098: stur            w0, [x2, #0xb]
    // 0x6e909c: ldur            x0, [fp, #-0x18]
    // 0x6e90a0: StoreField: r2->field_13 = r0
    //     0x6e90a0: stur            w0, [x2, #0x13]
    // 0x6e90a4: r1 = <FlexParentData>
    //     0x6e90a4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e90a8: ldr             x1, [x1, #0x340]
    // 0x6e90ac: r0 = Expanded()
    //     0x6e90ac: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e90b0: mov             x3, x0
    // 0x6e90b4: r0 = 1
    //     0x6e90b4: mov             x0, #1
    // 0x6e90b8: stur            x3, [fp, #-0x10]
    // 0x6e90bc: StoreField: r3->field_13 = r0
    //     0x6e90bc: stur            x0, [x3, #0x13]
    // 0x6e90c0: r0 = Instance_FlexFit
    //     0x6e90c0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e90c4: ldr             x0, [x0, #0x348]
    // 0x6e90c8: StoreField: r3->field_1b = r0
    //     0x6e90c8: stur            w0, [x3, #0x1b]
    // 0x6e90cc: ldur            x0, [fp, #-8]
    // 0x6e90d0: StoreField: r3->field_b = r0
    //     0x6e90d0: stur            w0, [x3, #0xb]
    // 0x6e90d4: r1 = Null
    //     0x6e90d4: mov             x1, NULL
    // 0x6e90d8: r2 = 6
    //     0x6e90d8: mov             x2, #6
    // 0x6e90dc: r0 = AllocateArray()
    //     0x6e90dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e90e0: mov             x2, x0
    // 0x6e90e4: ldur            x0, [fp, #-0x20]
    // 0x6e90e8: stur            x2, [fp, #-8]
    // 0x6e90ec: StoreField: r2->field_f = r0
    //     0x6e90ec: stur            w0, [x2, #0xf]
    // 0x6e90f0: r16 = Instance_SizedBox
    //     0x6e90f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x6e90f4: ldr             x16, [x16, #0x368]
    // 0x6e90f8: StoreField: r2->field_13 = r16
    //     0x6e90f8: stur            w16, [x2, #0x13]
    // 0x6e90fc: ldur            x0, [fp, #-0x10]
    // 0x6e9100: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e9100: stur            w0, [x2, #0x17]
    // 0x6e9104: r1 = <Widget>
    //     0x6e9104: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e9108: r0 = AllocateGrowableArray()
    //     0x6e9108: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e910c: mov             x1, x0
    // 0x6e9110: ldur            x0, [fp, #-8]
    // 0x6e9114: stur            x1, [fp, #-0x10]
    // 0x6e9118: StoreField: r1->field_f = r0
    //     0x6e9118: stur            w0, [x1, #0xf]
    // 0x6e911c: r0 = 6
    //     0x6e911c: mov             x0, #6
    // 0x6e9120: StoreField: r1->field_b = r0
    //     0x6e9120: stur            w0, [x1, #0xb]
    // 0x6e9124: r0 = Row()
    //     0x6e9124: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e9128: r1 = Instance_Axis
    //     0x6e9128: ldr             x1, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e912c: StoreField: r0->field_f = r1
    //     0x6e912c: stur            w1, [x0, #0xf]
    // 0x6e9130: r1 = Instance_MainAxisAlignment
    //     0x6e9130: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e9134: ldr             x1, [x1, #0x230]
    // 0x6e9138: StoreField: r0->field_13 = r1
    //     0x6e9138: stur            w1, [x0, #0x13]
    // 0x6e913c: r1 = Instance_MainAxisSize
    //     0x6e913c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e9140: ldr             x1, [x1, #0x330]
    // 0x6e9144: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e9144: stur            w1, [x0, #0x17]
    // 0x6e9148: r1 = Instance_CrossAxisAlignment
    //     0x6e9148: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e914c: ldr             x1, [x1, #0x338]
    // 0x6e9150: StoreField: r0->field_1b = r1
    //     0x6e9150: stur            w1, [x0, #0x1b]
    // 0x6e9154: r1 = Instance_VerticalDirection
    //     0x6e9154: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e9158: ldr             x1, [x1, #0x340]
    // 0x6e915c: StoreField: r0->field_23 = r1
    //     0x6e915c: stur            w1, [x0, #0x23]
    // 0x6e9160: r1 = Instance_Clip
    //     0x6e9160: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e9164: ldr             x1, [x1, #0x348]
    // 0x6e9168: StoreField: r0->field_2b = r1
    //     0x6e9168: stur            w1, [x0, #0x2b]
    // 0x6e916c: StoreField: r0->field_2f = rZR
    //     0x6e916c: stur            xzr, [x0, #0x2f]
    // 0x6e9170: ldur            x1, [fp, #-0x10]
    // 0x6e9174: StoreField: r0->field_b = r1
    //     0x6e9174: stur            w1, [x0, #0xb]
    // 0x6e9178: LeaveFrame
    //     0x6e9178: mov             SP, fp
    //     0x6e917c: ldp             fp, lr, [SP], #0x10
    // 0x6e9180: ret
    //     0x6e9180: ret             
    // 0x6e9184: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e9184: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e9188: b               #0x6e9018
  }
  [closure] void <anonymous closure>(dynamic, GoogleMapController) {
    // ** addr: 0x6e9c28, size: 0x44
    // 0x6e9c28: ldr             x1, [SP, #8]
    // 0x6e9c2c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6e9c2c: ldur            w2, [x1, #0x17]
    // 0x6e9c30: DecompressPointer r2
    //     0x6e9c30: add             x2, x2, HEAP, lsl #32
    // 0x6e9c34: LoadField: r1 = r2->field_f
    //     0x6e9c34: ldur            w1, [x2, #0xf]
    // 0x6e9c38: DecompressPointer r1
    //     0x6e9c38: add             x1, x1, HEAP, lsl #32
    // 0x6e9c3c: ldr             x0, [SP]
    // 0x6e9c40: StoreField: r1->field_13 = r0
    //     0x6e9c40: stur            w0, [x1, #0x13]
    //     0x6e9c44: ldurb           w16, [x1, #-1]
    //     0x6e9c48: ldurb           w17, [x0, #-1]
    //     0x6e9c4c: and             x16, x17, x16, lsr #2
    //     0x6e9c50: tst             x16, HEAP, lsr #32
    //     0x6e9c54: b.eq            #0x6e9c64
    //     0x6e9c58: str             lr, [SP, #-8]!
    //     0x6e9c5c: bl              #0x926790  ; WriteBarrierWrappersStub
    //     0x6e9c60: ldr             lr, [SP], #8
    // 0x6e9c64: r0 = Null
    //     0x6e9c64: mov             x0, NULL
    // 0x6e9c68: ret
    //     0x6e9c68: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e9c6c, size: 0x80
    // 0x6e9c6c: EnterFrame
    //     0x6e9c6c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e9c70: mov             fp, SP
    // 0x6e9c74: AllocStack(0x18)
    //     0x6e9c74: sub             SP, SP, #0x18
    // 0x6e9c78: SetupParameters([dynamic _ /* r0 */])
    //     0x6e9c78: ldr             x0, [fp, #0x10]
    //     0x6e9c7c: ldur            w1, [x0, #0x17]
    //     0x6e9c80: add             x1, x1, HEAP, lsl #32
    //     0x6e9c84: stur            x1, [fp, #-8]
    // 0x6e9c88: CheckStackOverflow
    //     0x6e9c88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e9c8c: cmp             SP, x16
    //     0x6e9c90: b.ls            #0x6e9ce4
    // 0x6e9c94: LoadField: r0 = r1->field_13
    //     0x6e9c94: ldur            w0, [x1, #0x13]
    // 0x6e9c98: DecompressPointer r0
    //     0x6e9c98: add             x0, x0, HEAP, lsl #32
    // 0x6e9c9c: r16 = <LocationTrackingProvider>
    //     0x6e9c9c: add             x16, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x6e9ca0: ldr             x16, [x16, #0x9e8]
    // 0x6e9ca4: stp             x0, x16, [SP]
    // 0x6e9ca8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6e9ca8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6e9cac: r0 = ReadContext.read()
    //     0x6e9cac: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6e9cb0: mov             x1, x0
    // 0x6e9cb4: r0 = clearSelectedUser()
    //     0x6e9cb4: bl              #0x6e9cec  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::clearSelectedUser
    // 0x6e9cb8: ldur            x0, [fp, #-8]
    // 0x6e9cbc: LoadField: r1 = r0->field_13
    //     0x6e9cbc: ldur            w1, [x0, #0x13]
    // 0x6e9cc0: DecompressPointer r1
    //     0x6e9cc0: add             x1, x1, HEAP, lsl #32
    // 0x6e9cc4: r16 = <Object?>
    //     0x6e9cc4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6e9cc8: stp             x1, x16, [SP]
    // 0x6e9ccc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6e9ccc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6e9cd0: r0 = pop()
    //     0x6e9cd0: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6e9cd4: r0 = Null
    //     0x6e9cd4: mov             x0, NULL
    // 0x6e9cd8: LeaveFrame
    //     0x6e9cd8: mov             SP, fp
    //     0x6e9cdc: ldp             fp, lr, [SP], #0x10
    // 0x6e9ce0: ret
    //     0x6e9ce0: ret             
    // 0x6e9ce4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e9ce4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e9ce8: b               #0x6e9c94
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c370, size: 0x24
    // 0x74c370: EnterFrame
    //     0x74c370: stp             fp, lr, [SP, #-0x10]!
    //     0x74c374: mov             fp, SP
    // 0x74c378: ldr             x2, [fp, #0x10]
    // 0x74c37c: r1 = Function 'dispose':.
    //     0x74c37c: add             x1, PP, #0x27, lsl #12  ; [pp+0x272a8] AnonymousClosure: (0x74c394), in [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::dispose (0x753b90)
    //     0x74c380: ldr             x1, [x1, #0x2a8]
    // 0x74c384: r0 = AllocateClosure()
    //     0x74c384: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c388: LeaveFrame
    //     0x74c388: mov             SP, fp
    //     0x74c38c: ldp             fp, lr, [SP], #0x10
    // 0x74c390: ret
    //     0x74c390: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c394, size: 0x38
    // 0x74c394: EnterFrame
    //     0x74c394: stp             fp, lr, [SP, #-0x10]!
    //     0x74c398: mov             fp, SP
    // 0x74c39c: ldr             x0, [fp, #0x10]
    // 0x74c3a0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c3a0: ldur            w1, [x0, #0x17]
    // 0x74c3a4: DecompressPointer r1
    //     0x74c3a4: add             x1, x1, HEAP, lsl #32
    // 0x74c3a8: CheckStackOverflow
    //     0x74c3a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c3ac: cmp             SP, x16
    //     0x74c3b0: b.ls            #0x74c3c4
    // 0x74c3b4: r0 = dispose()
    //     0x74c3b4: bl              #0x753b90  ; [package:umrem_demo/features/admin/screens/single_user_map_view.dart] _SingleUserMapViewState::dispose
    // 0x74c3b8: LeaveFrame
    //     0x74c3b8: mov             SP, fp
    //     0x74c3bc: ldp             fp, lr, [SP], #0x10
    // 0x74c3c0: ret
    //     0x74c3c0: ret             
    // 0x74c3c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c3c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c3c8: b               #0x74c3b4
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753b90, size: 0x44
    // 0x753b90: EnterFrame
    //     0x753b90: stp             fp, lr, [SP, #-0x10]!
    //     0x753b94: mov             fp, SP
    // 0x753b98: CheckStackOverflow
    //     0x753b98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753b9c: cmp             SP, x16
    //     0x753ba0: b.ls            #0x753bcc
    // 0x753ba4: LoadField: r0 = r1->field_13
    //     0x753ba4: ldur            w0, [x1, #0x13]
    // 0x753ba8: DecompressPointer r0
    //     0x753ba8: add             x0, x0, HEAP, lsl #32
    // 0x753bac: cmp             w0, NULL
    // 0x753bb0: b.eq            #0x753bbc
    // 0x753bb4: mov             x1, x0
    // 0x753bb8: r0 = dispose()
    //     0x753bb8: bl              #0x753a38  ; [package:google_maps_flutter/google_maps_flutter.dart] GoogleMapController::dispose
    // 0x753bbc: r0 = Null
    //     0x753bbc: mov             x0, NULL
    // 0x753bc0: LeaveFrame
    //     0x753bc0: mov             SP, fp
    //     0x753bc4: ldp             fp, lr, [SP], #0x10
    // 0x753bc8: ret
    //     0x753bc8: ret             
    // 0x753bcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753bcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753bd0: b               #0x753ba4
  }
}

// class id: 3212, size: 0x14, field offset: 0xc
//   const constructor, 
class SingleUserMapView extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd58c, size: 0x24
    // 0x7bd58c: EnterFrame
    //     0x7bd58c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd590: mov             fp, SP
    // 0x7bd594: mov             x0, x1
    // 0x7bd598: r1 = <SingleUserMapView>
    //     0x7bd598: add             x1, PP, #0x20, lsl #12  ; [pp+0x20938] TypeArguments: <SingleUserMapView>
    //     0x7bd59c: ldr             x1, [x1, #0x938]
    // 0x7bd5a0: r0 = _SingleUserMapViewState()
    //     0x7bd5a0: bl              #0x7bd5b0  ; Allocate_SingleUserMapViewStateStub -> _SingleUserMapViewState (size=0x18)
    // 0x7bd5a4: LeaveFrame
    //     0x7bd5a4: mov             SP, fp
    //     0x7bd5a8: ldp             fp, lr, [SP], #0x10
    // 0x7bd5ac: ret
    //     0x7bd5ac: ret             
  }
}

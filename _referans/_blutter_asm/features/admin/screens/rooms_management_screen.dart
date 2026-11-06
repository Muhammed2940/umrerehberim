// lib: , url: package:umrem_demo/features/admin/screens/rooms_management_screen.dart

// class id: 1049532, size: 0x8
class :: {
}

// class id: 2488, size: 0x14, field offset: 0x14
class _RoomsManagementScreenState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0x6de904, size: 0x84
    // 0x6de904: EnterFrame
    //     0x6de904: stp             fp, lr, [SP, #-0x10]!
    //     0x6de908: mov             fp, SP
    // 0x6de90c: AllocStack(0x10)
    //     0x6de90c: sub             SP, SP, #0x10
    // 0x6de910: SetupParameters(_RoomsManagementScreenState this /* r1 => r1, fp-0x8 */)
    //     0x6de910: stur            x1, [fp, #-8]
    // 0x6de914: r1 = 2
    //     0x6de914: mov             x1, #2
    // 0x6de918: r0 = AllocateContext()
    //     0x6de918: bl              #0x927010  ; AllocateContextStub
    // 0x6de91c: mov             x1, x0
    // 0x6de920: ldur            x0, [fp, #-8]
    // 0x6de924: StoreField: r1->field_f = r0
    //     0x6de924: stur            w0, [x1, #0xf]
    // 0x6de928: r2 = Instance_Color
    //     0x6de928: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6de92c: ldr             x2, [x2, #0xb88]
    // 0x6de930: StoreField: r1->field_13 = r2
    //     0x6de930: stur            w2, [x1, #0x13]
    // 0x6de934: LoadField: r2 = r0->field_b
    //     0x6de934: ldur            w2, [x0, #0xb]
    // 0x6de938: DecompressPointer r2
    //     0x6de938: add             x2, x2, HEAP, lsl #32
    // 0x6de93c: cmp             w2, NULL
    // 0x6de940: b.eq            #0x6de984
    // 0x6de944: LoadField: r0 = r2->field_b
    //     0x6de944: ldur            w0, [x2, #0xb]
    // 0x6de948: DecompressPointer r0
    //     0x6de948: add             x0, x0, HEAP, lsl #32
    // 0x6de94c: mov             x2, x1
    // 0x6de950: stur            x0, [fp, #-8]
    // 0x6de954: r1 = Function '<anonymous closure>':.
    //     0x6de954: add             x1, PP, #0x27, lsl #12  ; [pp+0x27370] AnonymousClosure: (0x6de9a8), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::build (0x6de904)
    //     0x6de958: ldr             x1, [x1, #0x370]
    // 0x6de95c: r0 = AllocateClosure()
    //     0x6de95c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6de960: stur            x0, [fp, #-0x10]
    // 0x6de964: r0 = AnimatedBuilder()
    //     0x6de964: bl              #0x408f14  ; AllocateAnimatedBuilderStub -> AnimatedBuilder (size=0x18)
    // 0x6de968: ldur            x1, [fp, #-0x10]
    // 0x6de96c: StoreField: r0->field_f = r1
    //     0x6de96c: stur            w1, [x0, #0xf]
    // 0x6de970: ldur            x1, [fp, #-8]
    // 0x6de974: StoreField: r0->field_b = r1
    //     0x6de974: stur            w1, [x0, #0xb]
    // 0x6de978: LeaveFrame
    //     0x6de978: mov             SP, fp
    //     0x6de97c: ldp             fp, lr, [SP], #0x10
    // 0x6de980: ret
    //     0x6de980: ret             
    // 0x6de984: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6de984: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Scaffold <anonymous closure>(dynamic, BuildContext, Widget?) {
    // ** addr: 0x6de9a8, size: 0x4d8
    // 0x6de9a8: EnterFrame
    //     0x6de9a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6de9ac: mov             fp, SP
    // 0x6de9b0: AllocStack(0x60)
    //     0x6de9b0: sub             SP, SP, #0x60
    // 0x6de9b4: SetupParameters([dynamic _ /* r0 */])
    //     0x6de9b4: ldr             x0, [fp, #0x20]
    //     0x6de9b8: ldur            w1, [x0, #0x17]
    //     0x6de9bc: add             x1, x1, HEAP, lsl #32
    //     0x6de9c0: stur            x1, [fp, #-8]
    // 0x6de9c4: CheckStackOverflow
    //     0x6de9c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de9c8: cmp             SP, x16
    //     0x6de9cc: b.ls            #0x6dee64
    // 0x6de9d0: r1 = 2
    //     0x6de9d0: mov             x1, #2
    // 0x6de9d4: r0 = AllocateContext()
    //     0x6de9d4: bl              #0x927010  ; AllocateContextStub
    // 0x6de9d8: mov             x3, x0
    // 0x6de9dc: ldur            x0, [fp, #-8]
    // 0x6de9e0: stur            x3, [fp, #-0x18]
    // 0x6de9e4: StoreField: r3->field_b = r0
    //     0x6de9e4: stur            w0, [x3, #0xb]
    // 0x6de9e8: ldr             x1, [fp, #0x18]
    // 0x6de9ec: StoreField: r3->field_f = r1
    //     0x6de9ec: stur            w1, [x3, #0xf]
    // 0x6de9f0: LoadField: r1 = r0->field_f
    //     0x6de9f0: ldur            w1, [x0, #0xf]
    // 0x6de9f4: DecompressPointer r1
    //     0x6de9f4: add             x1, x1, HEAP, lsl #32
    // 0x6de9f8: LoadField: r2 = r1->field_b
    //     0x6de9f8: ldur            w2, [x1, #0xb]
    // 0x6de9fc: DecompressPointer r2
    //     0x6de9fc: add             x2, x2, HEAP, lsl #32
    // 0x6dea00: cmp             w2, NULL
    // 0x6dea04: b.eq            #0x6dee6c
    // 0x6dea08: LoadField: r1 = r2->field_b
    //     0x6dea08: ldur            w1, [x2, #0xb]
    // 0x6dea0c: DecompressPointer r1
    //     0x6dea0c: add             x1, x1, HEAP, lsl #32
    // 0x6dea10: LoadField: r4 = r1->field_43
    //     0x6dea10: ldur            w4, [x1, #0x43]
    // 0x6dea14: DecompressPointer r4
    //     0x6dea14: add             x4, x4, HEAP, lsl #32
    // 0x6dea18: stur            x4, [fp, #-0x10]
    // 0x6dea1c: LoadField: r1 = r2->field_f
    //     0x6dea1c: ldur            w1, [x2, #0xf]
    // 0x6dea20: DecompressPointer r1
    //     0x6dea20: add             x1, x1, HEAP, lsl #32
    // 0x6dea24: LoadField: r2 = r1->field_7
    //     0x6dea24: ldur            w2, [x1, #7]
    // 0x6dea28: DecompressPointer r2
    //     0x6dea28: add             x2, x2, HEAP, lsl #32
    // 0x6dea2c: mov             x1, x4
    // 0x6dea30: r0 = _getValueOrData()
    //     0x6dea30: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x6dea34: mov             x1, x0
    // 0x6dea38: ldur            x0, [fp, #-0x10]
    // 0x6dea3c: LoadField: r2 = r0->field_f
    //     0x6dea3c: ldur            w2, [x0, #0xf]
    // 0x6dea40: DecompressPointer r2
    //     0x6dea40: add             x2, x2, HEAP, lsl #32
    // 0x6dea44: cmp             w2, w1
    // 0x6dea48: b.ne            #0x6dea54
    // 0x6dea4c: r0 = Null
    //     0x6dea4c: mov             x0, NULL
    // 0x6dea50: b               #0x6dea58
    // 0x6dea54: mov             x0, x1
    // 0x6dea58: cmp             w0, NULL
    // 0x6dea5c: b.ne            #0x6dea6c
    // 0x6dea60: r3 = const []
    //     0x6dea60: add             x3, PP, #0x14, lsl #12  ; [pp+0x148b8] List<RoomModel>(0)
    //     0x6dea64: ldr             x3, [x3, #0x8b8]
    // 0x6dea68: b               #0x6dea70
    // 0x6dea6c: mov             x3, x0
    // 0x6dea70: ldur            x1, [fp, #-8]
    // 0x6dea74: ldur            x2, [fp, #-0x18]
    // 0x6dea78: mov             x0, x3
    // 0x6dea7c: stur            x3, [fp, #-0x20]
    // 0x6dea80: StoreField: r2->field_13 = r0
    //     0x6dea80: stur            w0, [x2, #0x13]
    //     0x6dea84: tbz             w0, #0, #0x6deaa0
    //     0x6dea88: ldurb           w16, [x2, #-1]
    //     0x6dea8c: ldurb           w17, [x0, #-1]
    //     0x6dea90: and             x16, x17, x16, lsr #2
    //     0x6dea94: tst             x16, HEAP, lsr #32
    //     0x6dea98: b.eq            #0x6deaa0
    //     0x6dea9c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6deaa0: LoadField: r0 = r1->field_13
    //     0x6deaa0: ldur            w0, [x1, #0x13]
    // 0x6deaa4: DecompressPointer r0
    //     0x6deaa4: add             x0, x0, HEAP, lsl #32
    // 0x6deaa8: stur            x0, [fp, #-0x10]
    // 0x6deaac: r0 = Icon()
    //     0x6deaac: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6deab0: mov             x3, x0
    // 0x6deab4: r0 = Instance_IconData
    //     0x6deab4: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fea8] Obj!IconData@a09c21
    //     0x6deab8: ldr             x0, [x0, #0xea8]
    // 0x6deabc: stur            x3, [fp, #-0x28]
    // 0x6deac0: StoreField: r3->field_b = r0
    //     0x6deac0: stur            w0, [x3, #0xb]
    // 0x6deac4: ldur            x0, [fp, #-0x10]
    // 0x6deac8: StoreField: r3->field_23 = r0
    //     0x6deac8: stur            w0, [x3, #0x23]
    // 0x6deacc: ldur            x2, [fp, #-0x18]
    // 0x6dead0: r1 = Function '<anonymous closure>':.
    //     0x6dead0: add             x1, PP, #0x27, lsl #12  ; [pp+0x27378] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6dead4: ldr             x1, [x1, #0x378]
    // 0x6dead8: r0 = AllocateClosure()
    //     0x6dead8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6deadc: stur            x0, [fp, #-0x30]
    // 0x6deae0: r0 = IconButton()
    //     0x6deae0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6deae4: mov             x3, x0
    // 0x6deae8: ldur            x0, [fp, #-0x30]
    // 0x6deaec: stur            x3, [fp, #-0x38]
    // 0x6deaf0: StoreField: r3->field_3b = r0
    //     0x6deaf0: stur            w0, [x3, #0x3b]
    // 0x6deaf4: r0 = false
    //     0x6deaf4: add             x0, NULL, #0x30  ; false
    // 0x6deaf8: StoreField: r3->field_4f = r0
    //     0x6deaf8: stur            w0, [x3, #0x4f]
    // 0x6deafc: ldur            x1, [fp, #-0x28]
    // 0x6deb00: StoreField: r3->field_1f = r1
    //     0x6deb00: stur            w1, [x3, #0x1f]
    // 0x6deb04: r1 = Instance__IconButtonVariant
    //     0x6deb04: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6deb08: ldr             x1, [x1, #0x1b8]
    // 0x6deb0c: StoreField: r3->field_6f = r1
    //     0x6deb0c: stur            w1, [x3, #0x6f]
    // 0x6deb10: ldur            x4, [fp, #-8]
    // 0x6deb14: LoadField: r1 = r4->field_f
    //     0x6deb14: ldur            w1, [x4, #0xf]
    // 0x6deb18: DecompressPointer r1
    //     0x6deb18: add             x1, x1, HEAP, lsl #32
    // 0x6deb1c: LoadField: r2 = r1->field_b
    //     0x6deb1c: ldur            w2, [x1, #0xb]
    // 0x6deb20: DecompressPointer r2
    //     0x6deb20: add             x2, x2, HEAP, lsl #32
    // 0x6deb24: cmp             w2, NULL
    // 0x6deb28: b.eq            #0x6dee70
    // 0x6deb2c: LoadField: r1 = r2->field_f
    //     0x6deb2c: ldur            w1, [x2, #0xf]
    // 0x6deb30: DecompressPointer r1
    //     0x6deb30: add             x1, x1, HEAP, lsl #32
    // 0x6deb34: LoadField: r5 = r1->field_b
    //     0x6deb34: ldur            w5, [x1, #0xb]
    // 0x6deb38: DecompressPointer r5
    //     0x6deb38: add             x5, x5, HEAP, lsl #32
    // 0x6deb3c: stur            x5, [fp, #-0x28]
    // 0x6deb40: r1 = Null
    //     0x6deb40: mov             x1, NULL
    // 0x6deb44: r2 = 4
    //     0x6deb44: mov             x2, #4
    // 0x6deb48: r0 = AllocateArray()
    //     0x6deb48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6deb4c: mov             x1, x0
    // 0x6deb50: ldur            x0, [fp, #-0x28]
    // 0x6deb54: StoreField: r1->field_f = r0
    //     0x6deb54: stur            w0, [x1, #0xf]
    // 0x6deb58: r16 = " - Odalar"
    //     0x6deb58: add             x16, PP, #0x27, lsl #12  ; [pp+0x27380] " - Odalar"
    //     0x6deb5c: ldr             x16, [x16, #0x380]
    // 0x6deb60: StoreField: r1->field_13 = r16
    //     0x6deb60: stur            w16, [x1, #0x13]
    // 0x6deb64: str             x1, [SP]
    // 0x6deb68: r0 = _interpolate()
    //     0x6deb68: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6deb6c: stur            x0, [fp, #-0x28]
    // 0x6deb70: r0 = TextStyle()
    //     0x6deb70: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6deb74: mov             x1, x0
    // 0x6deb78: r0 = true
    //     0x6deb78: add             x0, NULL, #0x20  ; true
    // 0x6deb7c: stur            x1, [fp, #-0x30]
    // 0x6deb80: StoreField: r1->field_7 = r0
    //     0x6deb80: stur            w0, [x1, #7]
    // 0x6deb84: ldur            x2, [fp, #-0x10]
    // 0x6deb88: StoreField: r1->field_b = r2
    //     0x6deb88: stur            w2, [x1, #0xb]
    // 0x6deb8c: r2 = 20.000000
    //     0x6deb8c: add             x2, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x6deb90: ldr             x2, [x2, #0xe48]
    // 0x6deb94: StoreField: r1->field_1f = r2
    //     0x6deb94: stur            w2, [x1, #0x1f]
    // 0x6deb98: r2 = Instance_FontWeight
    //     0x6deb98: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6deb9c: ldr             x2, [x2, #0x1d0]
    // 0x6deba0: StoreField: r1->field_23 = r2
    //     0x6deba0: stur            w2, [x1, #0x23]
    // 0x6deba4: r0 = Text()
    //     0x6deba4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6deba8: mov             x1, x0
    // 0x6debac: ldur            x0, [fp, #-0x28]
    // 0x6debb0: stur            x1, [fp, #-0x10]
    // 0x6debb4: StoreField: r1->field_b = r0
    //     0x6debb4: stur            w0, [x1, #0xb]
    // 0x6debb8: ldur            x0, [fp, #-0x30]
    // 0x6debbc: StoreField: r1->field_13 = r0
    //     0x6debbc: stur            w0, [x1, #0x13]
    // 0x6debc0: r0 = AppBar()
    //     0x6debc0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6debc4: stur            x0, [fp, #-0x28]
    // 0x6debc8: r16 = 0.000000
    //     0x6debc8: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6debcc: r30 = Instance_Color
    //     0x6debcc: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x6debd0: ldr             lr, [lr, #0x860]
    // 0x6debd4: stp             lr, x16, [SP, #0x10]
    // 0x6debd8: ldur            x16, [fp, #-0x38]
    // 0x6debdc: r30 = false
    //     0x6debdc: add             lr, NULL, #0x30  ; false
    // 0x6debe0: stp             lr, x16, [SP]
    // 0x6debe4: mov             x1, x0
    // 0x6debe8: ldur            x2, [fp, #-0x10]
    // 0x6debec: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x3, centerTitle, 0x5, elevation, 0x2, leading, 0x4, null]
    //     0x6debec: add             x4, PP, #0x27, lsl #12  ; [pp+0x27388] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x3, "centerTitle", 0x5, "elevation", 0x2, "leading", 0x4, Null]
    //     0x6debf0: ldr             x4, [x4, #0x388]
    // 0x6debf4: r0 = AppBar()
    //     0x6debf4: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6debf8: r1 = _ConstMap len:12
    //     0x6debf8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6debfc: r2 = 200
    //     0x6debfc: mov             x2, #0xc8
    // 0x6dec00: r0 = []()
    //     0x6dec00: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6dec04: stur            x0, [fp, #-0x10]
    // 0x6dec08: cmp             w0, NULL
    // 0x6dec0c: b.eq            #0x6dee74
    // 0x6dec10: ldur            x1, [fp, #-8]
    // 0x6dec14: LoadField: r2 = r1->field_f
    //     0x6dec14: ldur            w2, [x1, #0xf]
    // 0x6dec18: DecompressPointer r2
    //     0x6dec18: add             x2, x2, HEAP, lsl #32
    // 0x6dec1c: LoadField: r1 = r2->field_b
    //     0x6dec1c: ldur            w1, [x2, #0xb]
    // 0x6dec20: DecompressPointer r1
    //     0x6dec20: add             x1, x1, HEAP, lsl #32
    // 0x6dec24: cmp             w1, NULL
    // 0x6dec28: b.eq            #0x6dee78
    // 0x6dec2c: LoadField: r2 = r1->field_b
    //     0x6dec2c: ldur            w2, [x1, #0xb]
    // 0x6dec30: DecompressPointer r2
    //     0x6dec30: add             x2, x2, HEAP, lsl #32
    // 0x6dec34: LoadField: r1 = r2->field_2b
    //     0x6dec34: ldur            w1, [x2, #0x2b]
    // 0x6dec38: DecompressPointer r1
    //     0x6dec38: add             x1, x1, HEAP, lsl #32
    // 0x6dec3c: tbnz            w1, #4, #0x6dec48
    // 0x6dec40: r0 = Null
    //     0x6dec40: mov             x0, NULL
    // 0x6dec44: b               #0x6dec58
    // 0x6dec48: ldur            x2, [fp, #-0x18]
    // 0x6dec4c: r1 = Function '<anonymous closure>':.
    //     0x6dec4c: add             x1, PP, #0x27, lsl #12  ; [pp+0x27390] AnonymousClosure: (0x6e4bd0), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::build (0x6de904)
    //     0x6dec50: ldr             x1, [x1, #0x390]
    // 0x6dec54: r0 = AllocateClosure()
    //     0x6dec54: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dec58: ldur            x1, [fp, #-0x20]
    // 0x6dec5c: stur            x0, [fp, #-8]
    // 0x6dec60: r0 = FloatingActionButton()
    //     0x6dec60: bl              #0x6d51a8  ; AllocateFloatingActionButtonStub -> FloatingActionButton (size=0x78)
    // 0x6dec64: mov             x2, x0
    // 0x6dec68: r0 = Instance_Color
    //     0x6dec68: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6dec6c: ldr             x0, [x0, #0xb78]
    // 0x6dec70: stur            x2, [fp, #-0x30]
    // 0x6dec74: ArrayStore: r2[0] = r0  ; List_4
    //     0x6dec74: stur            w0, [x2, #0x17]
    // 0x6dec78: r0 = Instance__DefaultHeroTag
    //     0x6dec78: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b8] Obj!_DefaultHeroTag@a0f381
    //     0x6dec7c: ldr             x0, [x0, #0x5b8]
    // 0x6dec80: StoreField: r2->field_27 = r0
    //     0x6dec80: stur            w0, [x2, #0x27]
    // 0x6dec84: ldur            x0, [fp, #-8]
    // 0x6dec88: StoreField: r2->field_2b = r0
    //     0x6dec88: stur            w0, [x2, #0x2b]
    // 0x6dec8c: r0 = Instance_SystemMouseCursor
    //     0x6dec8c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18a28] Obj!SystemMouseCursor@a1a4a1
    //     0x6dec90: ldr             x0, [x0, #0xa28]
    // 0x6dec94: StoreField: r2->field_2f = r0
    //     0x6dec94: stur            w0, [x2, #0x2f]
    // 0x6dec98: r3 = true
    //     0x6dec98: add             x3, NULL, #0x20  ; true
    // 0x6dec9c: StoreField: r2->field_4f = r3
    //     0x6dec9c: stur            w3, [x2, #0x4f]
    // 0x6deca0: r0 = Instance_Clip
    //     0x6deca0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6deca4: ldr             x0, [x0, #0x348]
    // 0x6deca8: StoreField: r2->field_4b = r0
    //     0x6deca8: stur            w0, [x2, #0x4b]
    // 0x6decac: r4 = false
    //     0x6decac: add             x4, NULL, #0x30  ; false
    // 0x6decb0: StoreField: r2->field_57 = r4
    //     0x6decb0: stur            w4, [x2, #0x57]
    // 0x6decb4: r0 = Instance__FloatingActionButtonType
    //     0x6decb4: add             x0, PP, #0xc, lsl #12  ; [pp+0xcc48] Obj!_FloatingActionButtonType@a2bab1
    //     0x6decb8: ldr             x0, [x0, #0xc48]
    // 0x6decbc: StoreField: r2->field_6f = r0
    //     0x6decbc: stur            w0, [x2, #0x6f]
    // 0x6decc0: r0 = Instance_Icon
    //     0x6decc0: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x6decc4: ldr             x0, [x0, #0x5b0]
    // 0x6decc8: StoreField: r2->field_b = r0
    //     0x6decc8: stur            w0, [x2, #0xb]
    // 0x6deccc: r0 = Instance_Text
    //     0x6deccc: add             x0, PP, #0x27, lsl #12  ; [pp+0x27398] Obj!Text@a1b901
    //     0x6decd0: ldr             x0, [x0, #0x398]
    // 0x6decd4: StoreField: r2->field_73 = r0
    //     0x6decd4: stur            w0, [x2, #0x73]
    // 0x6decd8: ldur            x5, [fp, #-0x20]
    // 0x6decdc: r0 = LoadClassIdInstr(r5)
    //     0x6decdc: ldur            x0, [x5, #-1]
    //     0x6dece0: ubfx            x0, x0, #0xc, #0x14
    // 0x6dece4: mov             x1, x5
    // 0x6dece8: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6dece8: mov             x17, #0xcda7
    //     0x6decec: add             lr, x0, x17
    //     0x6decf0: ldr             lr, [x21, lr, lsl #3]
    //     0x6decf4: blr             lr
    // 0x6decf8: tbnz            w0, #4, #0x6ded74
    // 0x6decfc: r1 = _ConstMap len:12
    //     0x6decfc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6ded00: r2 = 1200
    //     0x6ded00: mov             x2, #0x4b0
    // 0x6ded04: r0 = []()
    //     0x6ded04: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6ded08: stur            x0, [fp, #-8]
    // 0x6ded0c: cmp             w0, NULL
    // 0x6ded10: b.eq            #0x6dee7c
    // 0x6ded14: r0 = TextStyle()
    //     0x6ded14: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ded18: mov             x1, x0
    // 0x6ded1c: r0 = true
    //     0x6ded1c: add             x0, NULL, #0x20  ; true
    // 0x6ded20: stur            x1, [fp, #-0x38]
    // 0x6ded24: StoreField: r1->field_7 = r0
    //     0x6ded24: stur            w0, [x1, #7]
    // 0x6ded28: ldur            x2, [fp, #-8]
    // 0x6ded2c: StoreField: r1->field_b = r2
    //     0x6ded2c: stur            w2, [x1, #0xb]
    // 0x6ded30: r0 = Text()
    //     0x6ded30: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ded34: mov             x1, x0
    // 0x6ded38: r0 = "Bu otele ait oda eklenmedi"
    //     0x6ded38: add             x0, PP, #0x27, lsl #12  ; [pp+0x273a0] "Bu otele ait oda eklenmedi"
    //     0x6ded3c: ldr             x0, [x0, #0x3a0]
    // 0x6ded40: stur            x1, [fp, #-8]
    // 0x6ded44: StoreField: r1->field_b = r0
    //     0x6ded44: stur            w0, [x1, #0xb]
    // 0x6ded48: ldur            x0, [fp, #-0x38]
    // 0x6ded4c: StoreField: r1->field_13 = r0
    //     0x6ded4c: stur            w0, [x1, #0x13]
    // 0x6ded50: r0 = Center()
    //     0x6ded50: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6ded54: mov             x1, x0
    // 0x6ded58: r0 = Instance_Alignment
    //     0x6ded58: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6ded5c: ldr             x0, [x0, #0x60]
    // 0x6ded60: StoreField: r1->field_f = r0
    //     0x6ded60: stur            w0, [x1, #0xf]
    // 0x6ded64: ldur            x0, [fp, #-8]
    // 0x6ded68: StoreField: r1->field_b = r0
    //     0x6ded68: stur            w0, [x1, #0xb]
    // 0x6ded6c: mov             x3, x1
    // 0x6ded70: b               #0x6dede4
    // 0x6ded74: ldur            x0, [fp, #-0x20]
    // 0x6ded78: r1 = LoadClassIdInstr(r0)
    //     0x6ded78: ldur            x1, [x0, #-1]
    //     0x6ded7c: ubfx            x1, x1, #0xc, #0x14
    // 0x6ded80: str             x0, [SP]
    // 0x6ded84: mov             x0, x1
    // 0x6ded88: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6ded88: mov             x17, #0x879f
    //     0x6ded8c: add             lr, x0, x17
    //     0x6ded90: ldr             lr, [x21, lr, lsl #3]
    //     0x6ded94: blr             lr
    // 0x6ded98: r3 = LoadInt32Instr(r0)
    //     0x6ded98: sbfx            x3, x0, #1, #0x1f
    // 0x6ded9c: ldur            x2, [fp, #-0x18]
    // 0x6deda0: stur            x3, [fp, #-0x40]
    // 0x6deda4: r1 = Function '<anonymous closure>':.
    //     0x6deda4: add             x1, PP, #0x27, lsl #12  ; [pp+0x273a8] AnonymousClosure: (0x6deec8), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::build (0x6de904)
    //     0x6deda8: ldr             x1, [x1, #0x3a8]
    // 0x6dedac: r0 = AllocateClosure()
    //     0x6dedac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dedb0: stur            x0, [fp, #-8]
    // 0x6dedb4: r0 = ListView()
    //     0x6dedb4: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6dedb8: stur            x0, [fp, #-0x18]
    // 0x6dedbc: r16 = Instance_EdgeInsets
    //     0x6dedbc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6dedc0: ldr             x16, [x16, #0x240]
    // 0x6dedc4: str             x16, [SP]
    // 0x6dedc8: mov             x1, x0
    // 0x6dedcc: ldur            x2, [fp, #-8]
    // 0x6dedd0: ldur            x3, [fp, #-0x40]
    // 0x6dedd4: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x6dedd4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x6dedd8: ldr             x4, [x4, #0xe60]
    // 0x6deddc: r0 = ListView.builder()
    //     0x6deddc: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6dede0: ldur            x3, [fp, #-0x18]
    // 0x6dede4: ldur            x2, [fp, #-0x28]
    // 0x6dede8: ldur            x0, [fp, #-0x30]
    // 0x6dedec: ldur            x1, [fp, #-0x10]
    // 0x6dedf0: stur            x3, [fp, #-8]
    // 0x6dedf4: r0 = Scaffold()
    //     0x6dedf4: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6dedf8: ldur            x1, [fp, #-0x28]
    // 0x6dedfc: ArrayStore: r0[0] = r1  ; List_4
    //     0x6dedfc: stur            w1, [x0, #0x17]
    // 0x6dee00: ldur            x1, [fp, #-8]
    // 0x6dee04: StoreField: r0->field_1b = r1
    //     0x6dee04: stur            w1, [x0, #0x1b]
    // 0x6dee08: ldur            x1, [fp, #-0x30]
    // 0x6dee0c: StoreField: r0->field_1f = r1
    //     0x6dee0c: stur            w1, [x0, #0x1f]
    // 0x6dee10: r1 = Instance_AlignmentDirectional
    //     0x6dee10: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6dee14: ldr             x1, [x1, #0x350]
    // 0x6dee18: StoreField: r0->field_2f = r1
    //     0x6dee18: stur            w1, [x0, #0x2f]
    // 0x6dee1c: ldur            x1, [fp, #-0x10]
    // 0x6dee20: StoreField: r0->field_4f = r1
    //     0x6dee20: stur            w1, [x0, #0x4f]
    // 0x6dee24: r1 = true
    //     0x6dee24: add             x1, NULL, #0x20  ; true
    // 0x6dee28: StoreField: r0->field_5f = r1
    //     0x6dee28: stur            w1, [x0, #0x5f]
    // 0x6dee2c: r2 = Instance_DragStartBehavior
    //     0x6dee2c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6dee30: StoreField: r0->field_63 = r2
    //     0x6dee30: stur            w2, [x0, #0x63]
    // 0x6dee34: r2 = false
    //     0x6dee34: add             x2, NULL, #0x30  ; false
    // 0x6dee38: StoreField: r0->field_b = r2
    //     0x6dee38: stur            w2, [x0, #0xb]
    // 0x6dee3c: StoreField: r0->field_f = r1
    //     0x6dee3c: stur            w1, [x0, #0xf]
    // 0x6dee40: StoreField: r0->field_13 = r2
    //     0x6dee40: stur            w2, [x0, #0x13]
    // 0x6dee44: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6dee44: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6dee48: ldr             x2, [x2, #0x358]
    // 0x6dee4c: StoreField: r0->field_4b = r2
    //     0x6dee4c: stur            w2, [x0, #0x4b]
    // 0x6dee50: StoreField: r0->field_6b = r1
    //     0x6dee50: stur            w1, [x0, #0x6b]
    // 0x6dee54: StoreField: r0->field_6f = r1
    //     0x6dee54: stur            w1, [x0, #0x6f]
    // 0x6dee58: LeaveFrame
    //     0x6dee58: mov             SP, fp
    //     0x6dee5c: ldp             fp, lr, [SP], #0x10
    // 0x6dee60: ret
    //     0x6dee60: ret             
    // 0x6dee64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dee64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dee68: b               #0x6de9d0
    // 0x6dee6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dee6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6dee70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dee70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6dee74: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dee74: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6dee78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dee78: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6dee7c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dee7c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] RoomCard <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6deec8, size: 0x134
    // 0x6deec8: EnterFrame
    //     0x6deec8: stp             fp, lr, [SP, #-0x10]!
    //     0x6deecc: mov             fp, SP
    // 0x6deed0: AllocStack(0x30)
    //     0x6deed0: sub             SP, SP, #0x30
    // 0x6deed4: SetupParameters([dynamic _ /* r0 */])
    //     0x6deed4: ldr             x0, [fp, #0x20]
    //     0x6deed8: ldur            w1, [x0, #0x17]
    //     0x6deedc: add             x1, x1, HEAP, lsl #32
    //     0x6deee0: stur            x1, [fp, #-8]
    // 0x6deee4: CheckStackOverflow
    //     0x6deee4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6deee8: cmp             SP, x16
    //     0x6deeec: b.ls            #0x6deff0
    // 0x6deef0: r1 = 2
    //     0x6deef0: mov             x1, #2
    // 0x6deef4: r0 = AllocateContext()
    //     0x6deef4: bl              #0x927010  ; AllocateContextStub
    // 0x6deef8: mov             x2, x0
    // 0x6deefc: ldur            x1, [fp, #-8]
    // 0x6def00: stur            x2, [fp, #-0x10]
    // 0x6def04: StoreField: r2->field_b = r1
    //     0x6def04: stur            w1, [x2, #0xb]
    // 0x6def08: ldr             x0, [fp, #0x18]
    // 0x6def0c: StoreField: r2->field_f = r0
    //     0x6def0c: stur            w0, [x2, #0xf]
    // 0x6def10: LoadField: r0 = r1->field_13
    //     0x6def10: ldur            w0, [x1, #0x13]
    // 0x6def14: DecompressPointer r0
    //     0x6def14: add             x0, x0, HEAP, lsl #32
    // 0x6def18: r3 = LoadClassIdInstr(r0)
    //     0x6def18: ldur            x3, [x0, #-1]
    //     0x6def1c: ubfx            x3, x3, #0xc, #0x14
    // 0x6def20: ldr             x16, [fp, #0x10]
    // 0x6def24: stp             x16, x0, [SP]
    // 0x6def28: mov             x0, x3
    // 0x6def2c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6def2c: sub             lr, x0, #0xdfc
    //     0x6def30: ldr             lr, [x21, lr, lsl #3]
    //     0x6def34: blr             lr
    // 0x6def38: mov             x1, x0
    // 0x6def3c: ldur            x2, [fp, #-0x10]
    // 0x6def40: stur            x1, [fp, #-0x18]
    // 0x6def44: StoreField: r2->field_13 = r0
    //     0x6def44: stur            w0, [x2, #0x13]
    //     0x6def48: ldurb           w16, [x2, #-1]
    //     0x6def4c: ldurb           w17, [x0, #-1]
    //     0x6def50: and             x16, x17, x16, lsr #2
    //     0x6def54: tst             x16, HEAP, lsr #32
    //     0x6def58: b.eq            #0x6def60
    //     0x6def5c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6def60: ldur            x0, [fp, #-8]
    // 0x6def64: LoadField: r3 = r0->field_b
    //     0x6def64: ldur            w3, [x0, #0xb]
    // 0x6def68: DecompressPointer r3
    //     0x6def68: add             x3, x3, HEAP, lsl #32
    // 0x6def6c: LoadField: r0 = r3->field_f
    //     0x6def6c: ldur            w0, [x3, #0xf]
    // 0x6def70: DecompressPointer r0
    //     0x6def70: add             x0, x0, HEAP, lsl #32
    // 0x6def74: LoadField: r3 = r0->field_b
    //     0x6def74: ldur            w3, [x0, #0xb]
    // 0x6def78: DecompressPointer r3
    //     0x6def78: add             x3, x3, HEAP, lsl #32
    // 0x6def7c: cmp             w3, NULL
    // 0x6def80: b.eq            #0x6deff8
    // 0x6def84: LoadField: r0 = r3->field_b
    //     0x6def84: ldur            w0, [x3, #0xb]
    // 0x6def88: DecompressPointer r0
    //     0x6def88: add             x0, x0, HEAP, lsl #32
    // 0x6def8c: stur            x0, [fp, #-8]
    // 0x6def90: r0 = RoomCard()
    //     0x6def90: bl              #0x6deffc  ; AllocateRoomCardStub -> RoomCard (size=0x1c)
    // 0x6def94: mov             x3, x0
    // 0x6def98: ldur            x0, [fp, #-0x18]
    // 0x6def9c: stur            x3, [fp, #-0x20]
    // 0x6defa0: StoreField: r3->field_b = r0
    //     0x6defa0: stur            w0, [x3, #0xb]
    // 0x6defa4: ldur            x0, [fp, #-8]
    // 0x6defa8: StoreField: r3->field_f = r0
    //     0x6defa8: stur            w0, [x3, #0xf]
    // 0x6defac: ldur            x2, [fp, #-0x10]
    // 0x6defb0: r1 = Function '<anonymous closure>':.
    //     0x6defb0: add             x1, PP, #0x27, lsl #12  ; [pp+0x273b0] AnonymousClosure: (0x6dfdac), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::build (0x6de904)
    //     0x6defb4: ldr             x1, [x1, #0x3b0]
    // 0x6defb8: r0 = AllocateClosure()
    //     0x6defb8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6defbc: mov             x1, x0
    // 0x6defc0: ldur            x0, [fp, #-0x20]
    // 0x6defc4: StoreField: r0->field_13 = r1
    //     0x6defc4: stur            w1, [x0, #0x13]
    // 0x6defc8: ldur            x2, [fp, #-0x10]
    // 0x6defcc: r1 = Function '<anonymous closure>':.
    //     0x6defcc: add             x1, PP, #0x27, lsl #12  ; [pp+0x273b8] AnonymousClosure: (0x6df008), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::build (0x6de904)
    //     0x6defd0: ldr             x1, [x1, #0x3b8]
    // 0x6defd4: r0 = AllocateClosure()
    //     0x6defd4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6defd8: mov             x1, x0
    // 0x6defdc: ldur            x0, [fp, #-0x20]
    // 0x6defe0: ArrayStore: r0[0] = r1  ; List_4
    //     0x6defe0: stur            w1, [x0, #0x17]
    // 0x6defe4: LeaveFrame
    //     0x6defe4: mov             SP, fp
    //     0x6defe8: ldp             fp, lr, [SP], #0x10
    // 0x6defec: ret
    //     0x6defec: ret             
    // 0x6deff0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6deff0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6deff4: b               #0x6deef0
    // 0x6deff8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6deff8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6df008, size: 0x64
    // 0x6df008: EnterFrame
    //     0x6df008: stp             fp, lr, [SP, #-0x10]!
    //     0x6df00c: mov             fp, SP
    // 0x6df010: ldr             x0, [fp, #0x10]
    // 0x6df014: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6df014: ldur            w1, [x0, #0x17]
    // 0x6df018: DecompressPointer r1
    //     0x6df018: add             x1, x1, HEAP, lsl #32
    // 0x6df01c: CheckStackOverflow
    //     0x6df01c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df020: cmp             SP, x16
    //     0x6df024: b.ls            #0x6df064
    // 0x6df028: LoadField: r0 = r1->field_b
    //     0x6df028: ldur            w0, [x1, #0xb]
    // 0x6df02c: DecompressPointer r0
    //     0x6df02c: add             x0, x0, HEAP, lsl #32
    // 0x6df030: LoadField: r2 = r0->field_b
    //     0x6df030: ldur            w2, [x0, #0xb]
    // 0x6df034: DecompressPointer r2
    //     0x6df034: add             x2, x2, HEAP, lsl #32
    // 0x6df038: LoadField: r0 = r2->field_f
    //     0x6df038: ldur            w0, [x2, #0xf]
    // 0x6df03c: DecompressPointer r0
    //     0x6df03c: add             x0, x0, HEAP, lsl #32
    // 0x6df040: LoadField: r2 = r1->field_f
    //     0x6df040: ldur            w2, [x1, #0xf]
    // 0x6df044: DecompressPointer r2
    //     0x6df044: add             x2, x2, HEAP, lsl #32
    // 0x6df048: LoadField: r3 = r1->field_13
    //     0x6df048: ldur            w3, [x1, #0x13]
    // 0x6df04c: DecompressPointer r3
    //     0x6df04c: add             x3, x3, HEAP, lsl #32
    // 0x6df050: mov             x1, x0
    // 0x6df054: r0 = _showDeleteConfirm()
    //     0x6df054: bl              #0x6df06c  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_showDeleteConfirm
    // 0x6df058: LeaveFrame
    //     0x6df058: mov             SP, fp
    //     0x6df05c: ldp             fp, lr, [SP], #0x10
    // 0x6df060: ret
    //     0x6df060: ret             
    // 0x6df064: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df064: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df068: b               #0x6df028
  }
  _ _showDeleteConfirm(/* No info */) async {
    // ** addr: 0x6df06c, size: 0x100
    // 0x6df06c: EnterFrame
    //     0x6df06c: stp             fp, lr, [SP, #-0x10]!
    //     0x6df070: mov             fp, SP
    // 0x6df074: AllocStack(0x40)
    //     0x6df074: sub             SP, SP, #0x40
    // 0x6df078: SetupParameters(_RoomsManagementScreenState this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */)
    //     0x6df078: stur            NULL, [fp, #-8]
    //     0x6df07c: stur            x1, [fp, #-0x10]
    //     0x6df080: stur            x2, [fp, #-0x18]
    //     0x6df084: stur            x3, [fp, #-0x20]
    // 0x6df088: CheckStackOverflow
    //     0x6df088: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df08c: cmp             SP, x16
    //     0x6df090: b.ls            #0x6df160
    // 0x6df094: r1 = 1
    //     0x6df094: mov             x1, #1
    // 0x6df098: r0 = AllocateContext()
    //     0x6df098: bl              #0x927010  ; AllocateContextStub
    // 0x6df09c: mov             x1, x0
    // 0x6df0a0: ldur            x0, [fp, #-0x20]
    // 0x6df0a4: stur            x1, [fp, #-0x28]
    // 0x6df0a8: StoreField: r1->field_f = r0
    //     0x6df0a8: stur            w0, [x1, #0xf]
    // 0x6df0ac: InitAsync() -> Future<void?>
    //     0x6df0ac: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6df0b0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6df0b4: ldur            x2, [fp, #-0x28]
    // 0x6df0b8: r1 = Function '<anonymous closure>':.
    //     0x6df0b8: add             x1, PP, #0x27, lsl #12  ; [pp+0x273c0] AnonymousClosure: (0x6df890), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_showDeleteConfirm (0x6df06c)
    //     0x6df0bc: ldr             x1, [x1, #0x3c0]
    // 0x6df0c0: r0 = AllocateClosure()
    //     0x6df0c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6df0c4: r16 = <bool>
    //     0x6df0c4: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x6df0c8: stp             x0, x16, [SP, #8]
    // 0x6df0cc: ldur            x16, [fp, #-0x18]
    // 0x6df0d0: str             x16, [SP]
    // 0x6df0d4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6df0d4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6df0d8: r0 = showDialog()
    //     0x6df0d8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6df0dc: mov             x1, x0
    // 0x6df0e0: stur            x1, [fp, #-0x18]
    // 0x6df0e4: r0 = Await()
    //     0x6df0e4: bl              #0x3dd188  ; AwaitStub
    // 0x6df0e8: r1 = 60
    //     0x6df0e8: mov             x1, #0x3c
    // 0x6df0ec: branchIfSmi(r0, 0x6df0f8)
    //     0x6df0ec: tbz             w0, #0, #0x6df0f8
    // 0x6df0f0: r1 = LoadClassIdInstr(r0)
    //     0x6df0f0: ldur            x1, [x0, #-1]
    //     0x6df0f4: ubfx            x1, x1, #0xc, #0x14
    // 0x6df0f8: r16 = true
    //     0x6df0f8: add             x16, NULL, #0x20  ; true
    // 0x6df0fc: stp             x16, x0, [SP]
    // 0x6df100: mov             x0, x1
    // 0x6df104: mov             lr, x0
    // 0x6df108: ldr             lr, [x21, lr, lsl #3]
    // 0x6df10c: blr             lr
    // 0x6df110: tbnz            w0, #4, #0x6df158
    // 0x6df114: ldur            x1, [fp, #-0x10]
    // 0x6df118: ldur            x0, [fp, #-0x28]
    // 0x6df11c: LoadField: r2 = r1->field_b
    //     0x6df11c: ldur            w2, [x1, #0xb]
    // 0x6df120: DecompressPointer r2
    //     0x6df120: add             x2, x2, HEAP, lsl #32
    // 0x6df124: cmp             w2, NULL
    // 0x6df128: b.eq            #0x6df168
    // 0x6df12c: LoadField: r1 = r2->field_b
    //     0x6df12c: ldur            w1, [x2, #0xb]
    // 0x6df130: DecompressPointer r1
    //     0x6df130: add             x1, x1, HEAP, lsl #32
    // 0x6df134: LoadField: r2 = r0->field_f
    //     0x6df134: ldur            w2, [x0, #0xf]
    // 0x6df138: DecompressPointer r2
    //     0x6df138: add             x2, x2, HEAP, lsl #32
    // 0x6df13c: LoadField: r3 = r2->field_7
    //     0x6df13c: ldur            w3, [x2, #7]
    // 0x6df140: DecompressPointer r3
    //     0x6df140: add             x3, x3, HEAP, lsl #32
    // 0x6df144: mov             x2, x3
    // 0x6df148: r0 = deleteRoom()
    //     0x6df148: bl              #0x6df16c  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::deleteRoom
    // 0x6df14c: mov             x1, x0
    // 0x6df150: stur            x1, [fp, #-0x10]
    // 0x6df154: r0 = Await()
    //     0x6df154: bl              #0x3dd188  ; AwaitStub
    // 0x6df158: r0 = Null
    //     0x6df158: mov             x0, NULL
    // 0x6df15c: r0 = ReturnAsyncNotFuture()
    //     0x6df15c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6df160: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df160: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df164: b               #0x6df094
    // 0x6df168: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6df168: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6df890, size: 0x1a8
    // 0x6df890: EnterFrame
    //     0x6df890: stp             fp, lr, [SP, #-0x10]!
    //     0x6df894: mov             fp, SP
    // 0x6df898: AllocStack(0x28)
    //     0x6df898: sub             SP, SP, #0x28
    // 0x6df89c: SetupParameters([dynamic _ /* r0 */])
    //     0x6df89c: ldr             x0, [fp, #0x18]
    //     0x6df8a0: ldur            w1, [x0, #0x17]
    //     0x6df8a4: add             x1, x1, HEAP, lsl #32
    //     0x6df8a8: stur            x1, [fp, #-8]
    // 0x6df8ac: CheckStackOverflow
    //     0x6df8ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df8b0: cmp             SP, x16
    //     0x6df8b4: b.ls            #0x6dfa30
    // 0x6df8b8: r1 = 1
    //     0x6df8b8: mov             x1, #1
    // 0x6df8bc: r0 = AllocateContext()
    //     0x6df8bc: bl              #0x927010  ; AllocateContextStub
    // 0x6df8c0: mov             x3, x0
    // 0x6df8c4: ldur            x0, [fp, #-8]
    // 0x6df8c8: stur            x3, [fp, #-0x10]
    // 0x6df8cc: StoreField: r3->field_b = r0
    //     0x6df8cc: stur            w0, [x3, #0xb]
    // 0x6df8d0: ldr             x1, [fp, #0x10]
    // 0x6df8d4: StoreField: r3->field_f = r1
    //     0x6df8d4: stur            w1, [x3, #0xf]
    // 0x6df8d8: LoadField: r1 = r0->field_f
    //     0x6df8d8: ldur            w1, [x0, #0xf]
    // 0x6df8dc: DecompressPointer r1
    //     0x6df8dc: add             x1, x1, HEAP, lsl #32
    // 0x6df8e0: LoadField: r0 = r1->field_f
    //     0x6df8e0: ldur            w0, [x1, #0xf]
    // 0x6df8e4: DecompressPointer r0
    //     0x6df8e4: add             x0, x0, HEAP, lsl #32
    // 0x6df8e8: stur            x0, [fp, #-8]
    // 0x6df8ec: r1 = Null
    //     0x6df8ec: mov             x1, NULL
    // 0x6df8f0: r2 = 4
    //     0x6df8f0: mov             x2, #4
    // 0x6df8f4: r0 = AllocateArray()
    //     0x6df8f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6df8f8: mov             x1, x0
    // 0x6df8fc: ldur            x0, [fp, #-8]
    // 0x6df900: StoreField: r1->field_f = r0
    //     0x6df900: stur            w0, [x1, #0xf]
    // 0x6df904: r16 = " numaralı oda silinecek. Emin misiniz\?"
    //     0x6df904: add             x16, PP, #0x27, lsl #12  ; [pp+0x273c8] " numaralı oda silinecek. Emin misiniz\?"
    //     0x6df908: ldr             x16, [x16, #0x3c8]
    // 0x6df90c: StoreField: r1->field_13 = r16
    //     0x6df90c: stur            w16, [x1, #0x13]
    // 0x6df910: str             x1, [SP]
    // 0x6df914: r0 = _interpolate()
    //     0x6df914: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6df918: stur            x0, [fp, #-8]
    // 0x6df91c: r0 = Text()
    //     0x6df91c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6df920: mov             x3, x0
    // 0x6df924: ldur            x0, [fp, #-8]
    // 0x6df928: stur            x3, [fp, #-0x18]
    // 0x6df92c: StoreField: r3->field_b = r0
    //     0x6df92c: stur            w0, [x3, #0xb]
    // 0x6df930: ldur            x2, [fp, #-0x10]
    // 0x6df934: r1 = Function '<anonymous closure>':.
    //     0x6df934: add             x1, PP, #0x27, lsl #12  ; [pp+0x273d0] AnonymousClosure: (0x6dfc64), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6df938: ldr             x1, [x1, #0x3d0]
    // 0x6df93c: r0 = AllocateClosure()
    //     0x6df93c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6df940: stur            x0, [fp, #-8]
    // 0x6df944: r0 = TextButton()
    //     0x6df944: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6df948: mov             x3, x0
    // 0x6df94c: ldur            x0, [fp, #-8]
    // 0x6df950: stur            x3, [fp, #-0x20]
    // 0x6df954: StoreField: r3->field_b = r0
    //     0x6df954: stur            w0, [x3, #0xb]
    // 0x6df958: r0 = false
    //     0x6df958: add             x0, NULL, #0x30  ; false
    // 0x6df95c: StoreField: r3->field_27 = r0
    //     0x6df95c: stur            w0, [x3, #0x27]
    // 0x6df960: r4 = true
    //     0x6df960: add             x4, NULL, #0x20  ; true
    // 0x6df964: StoreField: r3->field_2f = r4
    //     0x6df964: stur            w4, [x3, #0x2f]
    // 0x6df968: r1 = Instance_Text
    //     0x6df968: add             x1, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x6df96c: ldr             x1, [x1, #0x7d0]
    // 0x6df970: StoreField: r3->field_37 = r1
    //     0x6df970: stur            w1, [x3, #0x37]
    // 0x6df974: ldur            x2, [fp, #-0x10]
    // 0x6df978: r1 = Function '<anonymous closure>':.
    //     0x6df978: add             x1, PP, #0x27, lsl #12  ; [pp+0x273d8] AnonymousClosure: (0x6dfa38), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6df97c: ldr             x1, [x1, #0x3d8]
    // 0x6df980: r0 = AllocateClosure()
    //     0x6df980: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6df984: stur            x0, [fp, #-8]
    // 0x6df988: r0 = TextButton()
    //     0x6df988: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6df98c: mov             x3, x0
    // 0x6df990: ldur            x0, [fp, #-8]
    // 0x6df994: stur            x3, [fp, #-0x10]
    // 0x6df998: StoreField: r3->field_b = r0
    //     0x6df998: stur            w0, [x3, #0xb]
    // 0x6df99c: r0 = false
    //     0x6df99c: add             x0, NULL, #0x30  ; false
    // 0x6df9a0: StoreField: r3->field_27 = r0
    //     0x6df9a0: stur            w0, [x3, #0x27]
    // 0x6df9a4: r1 = true
    //     0x6df9a4: add             x1, NULL, #0x20  ; true
    // 0x6df9a8: StoreField: r3->field_2f = r1
    //     0x6df9a8: stur            w1, [x3, #0x2f]
    // 0x6df9ac: r1 = Instance_Text
    //     0x6df9ac: add             x1, PP, #0x27, lsl #12  ; [pp+0x273e0] Obj!Text@a1b681
    //     0x6df9b0: ldr             x1, [x1, #0x3e0]
    // 0x6df9b4: StoreField: r3->field_37 = r1
    //     0x6df9b4: stur            w1, [x3, #0x37]
    // 0x6df9b8: r1 = Null
    //     0x6df9b8: mov             x1, NULL
    // 0x6df9bc: r2 = 4
    //     0x6df9bc: mov             x2, #4
    // 0x6df9c0: r0 = AllocateArray()
    //     0x6df9c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6df9c4: mov             x2, x0
    // 0x6df9c8: ldur            x0, [fp, #-0x20]
    // 0x6df9cc: stur            x2, [fp, #-8]
    // 0x6df9d0: StoreField: r2->field_f = r0
    //     0x6df9d0: stur            w0, [x2, #0xf]
    // 0x6df9d4: ldur            x0, [fp, #-0x10]
    // 0x6df9d8: StoreField: r2->field_13 = r0
    //     0x6df9d8: stur            w0, [x2, #0x13]
    // 0x6df9dc: r1 = <Widget>
    //     0x6df9dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6df9e0: r0 = AllocateGrowableArray()
    //     0x6df9e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6df9e4: mov             x1, x0
    // 0x6df9e8: ldur            x0, [fp, #-8]
    // 0x6df9ec: stur            x1, [fp, #-0x10]
    // 0x6df9f0: StoreField: r1->field_f = r0
    //     0x6df9f0: stur            w0, [x1, #0xf]
    // 0x6df9f4: r0 = 4
    //     0x6df9f4: mov             x0, #4
    // 0x6df9f8: StoreField: r1->field_b = r0
    //     0x6df9f8: stur            w0, [x1, #0xb]
    // 0x6df9fc: r0 = AlertDialog()
    //     0x6df9fc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6dfa00: r1 = Instance_Text
    //     0x6dfa00: add             x1, PP, #0x27, lsl #12  ; [pp+0x273e8] Obj!Text@a1b631
    //     0x6dfa04: ldr             x1, [x1, #0x3e8]
    // 0x6dfa08: StoreField: r0->field_f = r1
    //     0x6dfa08: stur            w1, [x0, #0xf]
    // 0x6dfa0c: ldur            x1, [fp, #-0x18]
    // 0x6dfa10: StoreField: r0->field_1b = r1
    //     0x6dfa10: stur            w1, [x0, #0x1b]
    // 0x6dfa14: ldur            x1, [fp, #-0x10]
    // 0x6dfa18: StoreField: r0->field_27 = r1
    //     0x6dfa18: stur            w1, [x0, #0x27]
    // 0x6dfa1c: r1 = false
    //     0x6dfa1c: add             x1, NULL, #0x30  ; false
    // 0x6dfa20: StoreField: r0->field_6b = r1
    //     0x6dfa20: stur            w1, [x0, #0x6b]
    // 0x6dfa24: LeaveFrame
    //     0x6dfa24: mov             SP, fp
    //     0x6dfa28: ldp             fp, lr, [SP], #0x10
    // 0x6dfa2c: ret
    //     0x6dfa2c: ret             
    // 0x6dfa30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfa30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfa34: b               #0x6df8b8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6dfdac, size: 0x64
    // 0x6dfdac: EnterFrame
    //     0x6dfdac: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfdb0: mov             fp, SP
    // 0x6dfdb4: ldr             x0, [fp, #0x10]
    // 0x6dfdb8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6dfdb8: ldur            w1, [x0, #0x17]
    // 0x6dfdbc: DecompressPointer r1
    //     0x6dfdbc: add             x1, x1, HEAP, lsl #32
    // 0x6dfdc0: CheckStackOverflow
    //     0x6dfdc0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfdc4: cmp             SP, x16
    //     0x6dfdc8: b.ls            #0x6dfe08
    // 0x6dfdcc: LoadField: r0 = r1->field_b
    //     0x6dfdcc: ldur            w0, [x1, #0xb]
    // 0x6dfdd0: DecompressPointer r0
    //     0x6dfdd0: add             x0, x0, HEAP, lsl #32
    // 0x6dfdd4: LoadField: r2 = r0->field_b
    //     0x6dfdd4: ldur            w2, [x0, #0xb]
    // 0x6dfdd8: DecompressPointer r2
    //     0x6dfdd8: add             x2, x2, HEAP, lsl #32
    // 0x6dfddc: LoadField: r0 = r2->field_f
    //     0x6dfddc: ldur            w0, [x2, #0xf]
    // 0x6dfde0: DecompressPointer r0
    //     0x6dfde0: add             x0, x0, HEAP, lsl #32
    // 0x6dfde4: LoadField: r2 = r1->field_f
    //     0x6dfde4: ldur            w2, [x1, #0xf]
    // 0x6dfde8: DecompressPointer r2
    //     0x6dfde8: add             x2, x2, HEAP, lsl #32
    // 0x6dfdec: LoadField: r3 = r1->field_13
    //     0x6dfdec: ldur            w3, [x1, #0x13]
    // 0x6dfdf0: DecompressPointer r3
    //     0x6dfdf0: add             x3, x3, HEAP, lsl #32
    // 0x6dfdf4: mov             x1, x0
    // 0x6dfdf8: r0 = _openEditRoomSheet()
    //     0x6dfdf8: bl              #0x6dfe10  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet
    // 0x6dfdfc: LeaveFrame
    //     0x6dfdfc: mov             SP, fp
    //     0x6dfe00: ldp             fp, lr, [SP], #0x10
    // 0x6dfe04: ret
    //     0x6dfe04: ret             
    // 0x6dfe08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfe08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfe0c: b               #0x6dfdcc
  }
  _ _openEditRoomSheet(/* No info */) async {
    // ** addr: 0x6dfe10, size: 0x264
    // 0x6dfe10: EnterFrame
    //     0x6dfe10: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfe14: mov             fp, SP
    // 0x6dfe18: AllocStack(0x50)
    //     0x6dfe18: sub             SP, SP, #0x50
    // 0x6dfe1c: SetupParameters(_RoomsManagementScreenState this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */)
    //     0x6dfe1c: stur            NULL, [fp, #-8]
    //     0x6dfe20: stur            x1, [fp, #-0x10]
    //     0x6dfe24: stur            x2, [fp, #-0x18]
    //     0x6dfe28: stur            x3, [fp, #-0x20]
    // 0x6dfe2c: CheckStackOverflow
    //     0x6dfe2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfe30: cmp             SP, x16
    //     0x6dfe34: b.ls            #0x6e006c
    // 0x6dfe38: r1 = 7
    //     0x6dfe38: mov             x1, #7
    // 0x6dfe3c: r0 = AllocateContext()
    //     0x6dfe3c: bl              #0x927010  ; AllocateContextStub
    // 0x6dfe40: mov             x1, x0
    // 0x6dfe44: ldur            x0, [fp, #-0x10]
    // 0x6dfe48: stur            x1, [fp, #-0x28]
    // 0x6dfe4c: StoreField: r1->field_f = r0
    //     0x6dfe4c: stur            w0, [x1, #0xf]
    // 0x6dfe50: ldur            x0, [fp, #-0x20]
    // 0x6dfe54: StoreField: r1->field_13 = r0
    //     0x6dfe54: stur            w0, [x1, #0x13]
    // 0x6dfe58: InitAsync() -> Future<void?>
    //     0x6dfe58: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6dfe5c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6dfe60: r1 = <FormState>
    //     0x6dfe60: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x6dfe64: ldr             x1, [x1, #0x590]
    // 0x6dfe68: r0 = LabeledGlobalKey()
    //     0x6dfe68: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x6dfe6c: ldur            x2, [fp, #-0x28]
    // 0x6dfe70: ArrayStore: r2[0] = r0  ; List_4
    //     0x6dfe70: stur            w0, [x2, #0x17]
    //     0x6dfe74: ldurb           w16, [x2, #-1]
    //     0x6dfe78: ldurb           w17, [x0, #-1]
    //     0x6dfe7c: and             x16, x17, x16, lsr #2
    //     0x6dfe80: tst             x16, HEAP, lsr #32
    //     0x6dfe84: b.eq            #0x6dfe8c
    //     0x6dfe88: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6dfe8c: LoadField: r0 = r2->field_13
    //     0x6dfe8c: ldur            w0, [x2, #0x13]
    // 0x6dfe90: DecompressPointer r0
    //     0x6dfe90: add             x0, x0, HEAP, lsl #32
    // 0x6dfe94: LoadField: r3 = r0->field_f
    //     0x6dfe94: ldur            w3, [x0, #0xf]
    // 0x6dfe98: DecompressPointer r3
    //     0x6dfe98: add             x3, x3, HEAP, lsl #32
    // 0x6dfe9c: stur            x3, [fp, #-0x10]
    // 0x6dfea0: r1 = <TextEditingValue>
    //     0x6dfea0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6dfea4: r0 = TextEditingController()
    //     0x6dfea4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6dfea8: stur            x0, [fp, #-0x20]
    // 0x6dfeac: ldur            x16, [fp, #-0x10]
    // 0x6dfeb0: str             x16, [SP]
    // 0x6dfeb4: mov             x1, x0
    // 0x6dfeb8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6dfeb8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6dfebc: ldr             x4, [x4, #0xa20]
    // 0x6dfec0: r0 = TextEditingController()
    //     0x6dfec0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6dfec4: ldur            x0, [fp, #-0x20]
    // 0x6dfec8: ldur            x2, [fp, #-0x28]
    // 0x6dfecc: StoreField: r2->field_1b = r0
    //     0x6dfecc: stur            w0, [x2, #0x1b]
    //     0x6dfed0: ldurb           w16, [x2, #-1]
    //     0x6dfed4: ldurb           w17, [x0, #-1]
    //     0x6dfed8: and             x16, x17, x16, lsr #2
    //     0x6dfedc: tst             x16, HEAP, lsr #32
    //     0x6dfee0: b.eq            #0x6dfee8
    //     0x6dfee4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6dfee8: LoadField: r0 = r2->field_13
    //     0x6dfee8: ldur            w0, [x2, #0x13]
    // 0x6dfeec: DecompressPointer r0
    //     0x6dfeec: add             x0, x0, HEAP, lsl #32
    // 0x6dfef0: LoadField: r3 = r0->field_13
    //     0x6dfef0: ldur            x3, [x0, #0x13]
    // 0x6dfef4: r0 = BoxInt64Instr(r3)
    //     0x6dfef4: sbfiz           x0, x3, #1, #0x1f
    //     0x6dfef8: cmp             x3, x0, asr #1
    //     0x6dfefc: b.eq            #0x6dff08
    //     0x6dff00: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6dff04: stur            x3, [x0, #7]
    // 0x6dff08: r1 = 60
    //     0x6dff08: mov             x1, #0x3c
    // 0x6dff0c: branchIfSmi(r0, 0x6dff18)
    //     0x6dff0c: tbz             w0, #0, #0x6dff18
    // 0x6dff10: r1 = LoadClassIdInstr(r0)
    //     0x6dff10: ldur            x1, [x0, #-1]
    //     0x6dff14: ubfx            x1, x1, #0xc, #0x14
    // 0x6dff18: str             x0, [SP]
    // 0x6dff1c: mov             x0, x1
    // 0x6dff20: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6dff20: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6dff24: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6dff24: mov             x17, #0x21f6
    //     0x6dff28: add             lr, x0, x17
    //     0x6dff2c: ldr             lr, [x21, lr, lsl #3]
    //     0x6dff30: blr             lr
    // 0x6dff34: r1 = <TextEditingValue>
    //     0x6dff34: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6dff38: stur            x0, [fp, #-0x10]
    // 0x6dff3c: r0 = TextEditingController()
    //     0x6dff3c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6dff40: stur            x0, [fp, #-0x20]
    // 0x6dff44: ldur            x16, [fp, #-0x10]
    // 0x6dff48: str             x16, [SP]
    // 0x6dff4c: mov             x1, x0
    // 0x6dff50: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6dff50: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6dff54: ldr             x4, [x4, #0xa20]
    // 0x6dff58: r0 = TextEditingController()
    //     0x6dff58: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6dff5c: ldur            x0, [fp, #-0x20]
    // 0x6dff60: ldur            x2, [fp, #-0x28]
    // 0x6dff64: StoreField: r2->field_1f = r0
    //     0x6dff64: stur            w0, [x2, #0x1f]
    //     0x6dff68: ldurb           w16, [x2, #-1]
    //     0x6dff6c: ldurb           w17, [x0, #-1]
    //     0x6dff70: and             x16, x17, x16, lsr #2
    //     0x6dff74: tst             x16, HEAP, lsr #32
    //     0x6dff78: b.eq            #0x6dff80
    //     0x6dff7c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6dff80: LoadField: r0 = r2->field_13
    //     0x6dff80: ldur            w0, [x2, #0x13]
    // 0x6dff84: DecompressPointer r0
    //     0x6dff84: add             x0, x0, HEAP, lsl #32
    // 0x6dff88: LoadField: r1 = r0->field_1f
    //     0x6dff88: ldur            w1, [x0, #0x1f]
    // 0x6dff8c: DecompressPointer r1
    //     0x6dff8c: add             x1, x1, HEAP, lsl #32
    // 0x6dff90: cmp             w1, NULL
    // 0x6dff94: b.ne            #0x6dffa0
    // 0x6dff98: r0 = ""
    //     0x6dff98: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6dff9c: b               #0x6dffa4
    // 0x6dffa0: mov             x0, x1
    // 0x6dffa4: stur            x0, [fp, #-0x10]
    // 0x6dffa8: r1 = <TextEditingValue>
    //     0x6dffa8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6dffac: r0 = TextEditingController()
    //     0x6dffac: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6dffb0: stur            x0, [fp, #-0x20]
    // 0x6dffb4: ldur            x16, [fp, #-0x10]
    // 0x6dffb8: str             x16, [SP]
    // 0x6dffbc: mov             x1, x0
    // 0x6dffc0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6dffc0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6dffc4: ldr             x4, [x4, #0xa20]
    // 0x6dffc8: r0 = TextEditingController()
    //     0x6dffc8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6dffcc: ldur            x0, [fp, #-0x20]
    // 0x6dffd0: ldur            x3, [fp, #-0x28]
    // 0x6dffd4: StoreField: r3->field_23 = r0
    //     0x6dffd4: stur            w0, [x3, #0x23]
    //     0x6dffd8: ldurb           w16, [x3, #-1]
    //     0x6dffdc: ldurb           w17, [x0, #-1]
    //     0x6dffe0: and             x16, x17, x16, lsr #2
    //     0x6dffe4: tst             x16, HEAP, lsr #32
    //     0x6dffe8: b.eq            #0x6dfff0
    //     0x6dffec: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6dfff0: LoadField: r0 = r3->field_13
    //     0x6dfff0: ldur            w0, [x3, #0x13]
    // 0x6dfff4: DecompressPointer r0
    //     0x6dfff4: add             x0, x0, HEAP, lsl #32
    // 0x6dfff8: LoadField: r1 = r0->field_1b
    //     0x6dfff8: ldur            w1, [x0, #0x1b]
    // 0x6dfffc: DecompressPointer r1
    //     0x6dfffc: add             x1, x1, HEAP, lsl #32
    // 0x6e0000: mov             x0, x1
    // 0x6e0004: StoreField: r3->field_27 = r0
    //     0x6e0004: stur            w0, [x3, #0x27]
    //     0x6e0008: ldurb           w16, [x3, #-1]
    //     0x6e000c: ldurb           w17, [x0, #-1]
    //     0x6e0010: and             x16, x17, x16, lsr #2
    //     0x6e0014: tst             x16, HEAP, lsr #32
    //     0x6e0018: b.eq            #0x6e0020
    //     0x6e001c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e0020: mov             x2, x3
    // 0x6e0024: r1 = Function '<anonymous closure>':.
    //     0x6e0024: add             x1, PP, #0x27, lsl #12  ; [pp+0x27418] AnonymousClosure: (0x6e0434), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e0028: ldr             x1, [x1, #0x418]
    // 0x6e002c: r0 = AllocateClosure()
    //     0x6e002c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e0030: stp             x0, NULL, [SP, #0x18]
    // 0x6e0034: ldur            x16, [fp, #-0x18]
    // 0x6e0038: r30 = true
    //     0x6e0038: add             lr, NULL, #0x20  ; true
    // 0x6e003c: stp             lr, x16, [SP, #8]
    // 0x6e0040: r16 = Instance_RoundedRectangleBorder
    //     0x6e0040: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a30] Obj!RoundedRectangleBorder@a0f2a1
    //     0x6e0044: ldr             x16, [x16, #0xa30]
    // 0x6e0048: str             x16, [SP]
    // 0x6e004c: r4 = const [0x1, 0x4, 0x4, 0x2, isScrollControlled, 0x2, shape, 0x3, null]
    //     0x6e004c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a38] List(9) [0x1, 0x4, 0x4, 0x2, "isScrollControlled", 0x2, "shape", 0x3, Null]
    //     0x6e0050: ldr             x4, [x4, #0xa38]
    // 0x6e0054: r0 = showModalBottomSheet()
    //     0x6e0054: bl              #0x6e0074  ; [package:flutter/src/material/bottom_sheet.dart] ::showModalBottomSheet
    // 0x6e0058: mov             x1, x0
    // 0x6e005c: stur            x1, [fp, #-0x10]
    // 0x6e0060: r0 = Await()
    //     0x6e0060: bl              #0x3dd188  ; AwaitStub
    // 0x6e0064: r0 = Null
    //     0x6e0064: mov             x0, NULL
    // 0x6e0068: r0 = ReturnAsyncNotFuture()
    //     0x6e0068: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e006c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e006c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e0070: b               #0x6dfe38
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6e0434, size: 0x64
    // 0x6e0434: EnterFrame
    //     0x6e0434: stp             fp, lr, [SP, #-0x10]!
    //     0x6e0438: mov             fp, SP
    // 0x6e043c: AllocStack(0x8)
    //     0x6e043c: sub             SP, SP, #8
    // 0x6e0440: SetupParameters([dynamic _ /* r0 */])
    //     0x6e0440: ldr             x0, [fp, #0x18]
    //     0x6e0444: ldur            w1, [x0, #0x17]
    //     0x6e0448: add             x1, x1, HEAP, lsl #32
    //     0x6e044c: stur            x1, [fp, #-8]
    // 0x6e0450: r1 = 1
    //     0x6e0450: mov             x1, #1
    // 0x6e0454: r0 = AllocateContext()
    //     0x6e0454: bl              #0x927010  ; AllocateContextStub
    // 0x6e0458: mov             x1, x0
    // 0x6e045c: ldur            x0, [fp, #-8]
    // 0x6e0460: StoreField: r1->field_b = r0
    //     0x6e0460: stur            w0, [x1, #0xb]
    // 0x6e0464: ldr             x0, [fp, #0x10]
    // 0x6e0468: StoreField: r1->field_f = r0
    //     0x6e0468: stur            w0, [x1, #0xf]
    // 0x6e046c: mov             x2, x1
    // 0x6e0470: r1 = Function '<anonymous closure>':.
    //     0x6e0470: add             x1, PP, #0x27, lsl #12  ; [pp+0x27420] AnonymousClosure: (0x6e0498), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e0474: ldr             x1, [x1, #0x420]
    // 0x6e0478: r0 = AllocateClosure()
    //     0x6e0478: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e047c: stur            x0, [fp, #-8]
    // 0x6e0480: r0 = StatefulBuilder()
    //     0x6e0480: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6e0484: ldur            x1, [fp, #-8]
    // 0x6e0488: StoreField: r0->field_b = r1
    //     0x6e0488: stur            w1, [x0, #0xb]
    // 0x6e048c: LeaveFrame
    //     0x6e048c: mov             SP, fp
    //     0x6e0490: ldp             fp, lr, [SP], #0x10
    // 0x6e0494: ret
    //     0x6e0494: ret             
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6e0498, size: 0x680
    // 0x6e0498: EnterFrame
    //     0x6e0498: stp             fp, lr, [SP, #-0x10]!
    //     0x6e049c: mov             fp, SP
    // 0x6e04a0: AllocStack(0x68)
    //     0x6e04a0: sub             SP, SP, #0x68
    // 0x6e04a4: SetupParameters([dynamic _ /* r0 */])
    //     0x6e04a4: ldr             x0, [fp, #0x20]
    //     0x6e04a8: ldur            w1, [x0, #0x17]
    //     0x6e04ac: add             x1, x1, HEAP, lsl #32
    //     0x6e04b0: stur            x1, [fp, #-8]
    // 0x6e04b4: CheckStackOverflow
    //     0x6e04b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e04b8: cmp             SP, x16
    //     0x6e04bc: b.ls            #0x6e0b04
    // 0x6e04c0: r1 = 2
    //     0x6e04c0: mov             x1, #2
    // 0x6e04c4: r0 = AllocateContext()
    //     0x6e04c4: bl              #0x927010  ; AllocateContextStub
    // 0x6e04c8: mov             x2, x0
    // 0x6e04cc: ldur            x0, [fp, #-8]
    // 0x6e04d0: stur            x2, [fp, #-0x10]
    // 0x6e04d4: StoreField: r2->field_b = r0
    //     0x6e04d4: stur            w0, [x2, #0xb]
    // 0x6e04d8: ldr             x1, [fp, #0x18]
    // 0x6e04dc: StoreField: r2->field_f = r1
    //     0x6e04dc: stur            w1, [x2, #0xf]
    // 0x6e04e0: ldr             x1, [fp, #0x10]
    // 0x6e04e4: StoreField: r2->field_13 = r1
    //     0x6e04e4: stur            w1, [x2, #0x13]
    // 0x6e04e8: LoadField: r1 = r0->field_f
    //     0x6e04e8: ldur            w1, [x0, #0xf]
    // 0x6e04ec: DecompressPointer r1
    //     0x6e04ec: add             x1, x1, HEAP, lsl #32
    // 0x6e04f0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e04f0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e04f4: r0 = _of()
    //     0x6e04f4: bl              #0x485ba4  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x6e04f8: LoadField: r1 = r0->field_23
    //     0x6e04f8: ldur            w1, [x0, #0x23]
    // 0x6e04fc: DecompressPointer r1
    //     0x6e04fc: add             x1, x1, HEAP, lsl #32
    // 0x6e0500: LoadField: d0 = r1->field_1f
    //     0x6e0500: ldur            d0, [x1, #0x1f]
    // 0x6e0504: stur            d0, [fp, #-0x48]
    // 0x6e0508: r0 = EdgeInsets()
    //     0x6e0508: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6e050c: d0 = 16.000000
    //     0x6e050c: fmov            d0, #16.00000000
    // 0x6e0510: stur            x0, [fp, #-0x18]
    // 0x6e0514: StoreField: r0->field_7 = d0
    //     0x6e0514: stur            d0, [x0, #7]
    // 0x6e0518: d1 = 20.000000
    //     0x6e0518: fmov            d1, #20.00000000
    // 0x6e051c: StoreField: r0->field_f = d1
    //     0x6e051c: stur            d1, [x0, #0xf]
    // 0x6e0520: ArrayStore: r0[0] = d0  ; List_8
    //     0x6e0520: stur            d0, [x0, #0x17]
    // 0x6e0524: ldur            d0, [fp, #-0x48]
    // 0x6e0528: StoreField: r0->field_1f = d0
    //     0x6e0528: stur            d0, [x0, #0x1f]
    // 0x6e052c: r1 = _ConstMap len:12
    //     0x6e052c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e0530: r2 = 600
    //     0x6e0530: mov             x2, #0x258
    // 0x6e0534: r0 = []()
    //     0x6e0534: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e0538: stur            x0, [fp, #-0x20]
    // 0x6e053c: cmp             w0, NULL
    // 0x6e0540: b.eq            #0x6e0b0c
    // 0x6e0544: r0 = Radius()
    //     0x6e0544: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e0548: d0 = 20.000000
    //     0x6e0548: fmov            d0, #20.00000000
    // 0x6e054c: stur            x0, [fp, #-0x28]
    // 0x6e0550: StoreField: r0->field_7 = d0
    //     0x6e0550: stur            d0, [x0, #7]
    // 0x6e0554: StoreField: r0->field_f = d0
    //     0x6e0554: stur            d0, [x0, #0xf]
    // 0x6e0558: r0 = BorderRadius()
    //     0x6e0558: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e055c: mov             x1, x0
    // 0x6e0560: ldur            x0, [fp, #-0x28]
    // 0x6e0564: stur            x1, [fp, #-0x30]
    // 0x6e0568: StoreField: r1->field_7 = r0
    //     0x6e0568: stur            w0, [x1, #7]
    // 0x6e056c: StoreField: r1->field_b = r0
    //     0x6e056c: stur            w0, [x1, #0xb]
    // 0x6e0570: StoreField: r1->field_f = r0
    //     0x6e0570: stur            w0, [x1, #0xf]
    // 0x6e0574: StoreField: r1->field_13 = r0
    //     0x6e0574: stur            w0, [x1, #0x13]
    // 0x6e0578: r0 = BoxDecoration()
    //     0x6e0578: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e057c: mov             x1, x0
    // 0x6e0580: ldur            x0, [fp, #-0x20]
    // 0x6e0584: stur            x1, [fp, #-0x28]
    // 0x6e0588: StoreField: r1->field_7 = r0
    //     0x6e0588: stur            w0, [x1, #7]
    // 0x6e058c: ldur            x0, [fp, #-0x30]
    // 0x6e0590: StoreField: r1->field_13 = r0
    //     0x6e0590: stur            w0, [x1, #0x13]
    // 0x6e0594: r0 = Instance_BoxShape
    //     0x6e0594: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e0598: ldr             x0, [x0, #0x1c8]
    // 0x6e059c: StoreField: r1->field_23 = r0
    //     0x6e059c: stur            w0, [x1, #0x23]
    // 0x6e05a0: r0 = Container()
    //     0x6e05a0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e05a4: stur            x0, [fp, #-0x20]
    // 0x6e05a8: r16 = 50.000000
    //     0x6e05a8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6e05ac: ldr             x16, [x16, #0xa48]
    // 0x6e05b0: r30 = 5.000000
    //     0x6e05b0: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a50] 5
    //     0x6e05b4: ldr             lr, [lr, #0xa50]
    // 0x6e05b8: stp             lr, x16, [SP, #8]
    // 0x6e05bc: ldur            x16, [fp, #-0x28]
    // 0x6e05c0: str             x16, [SP]
    // 0x6e05c4: mov             x1, x0
    // 0x6e05c8: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6e05c8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6e05cc: ldr             x4, [x4, #0xa58]
    // 0x6e05d0: r0 = Container()
    //     0x6e05d0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e05d4: r1 = <Widget>
    //     0x6e05d4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e05d8: r2 = 28
    //     0x6e05d8: mov             x2, #0x1c
    // 0x6e05dc: r0 = AllocateArray()
    //     0x6e05dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e05e0: mov             x2, x0
    // 0x6e05e4: ldur            x0, [fp, #-0x20]
    // 0x6e05e8: stur            x2, [fp, #-0x28]
    // 0x6e05ec: StoreField: r2->field_f = r0
    //     0x6e05ec: stur            w0, [x2, #0xf]
    // 0x6e05f0: r16 = Instance_SizedBox
    //     0x6e05f0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e05f4: ldr             x16, [x16, #0x310]
    // 0x6e05f8: StoreField: r2->field_13 = r16
    //     0x6e05f8: stur            w16, [x2, #0x13]
    // 0x6e05fc: r16 = Instance_Text
    //     0x6e05fc: add             x16, PP, #0x27, lsl #12  ; [pp+0x27428] Obj!Text@a1b7c1
    //     0x6e0600: ldr             x16, [x16, #0x428]
    // 0x6e0604: ArrayStore: r2[0] = r16  ; List_4
    //     0x6e0604: stur            w16, [x2, #0x17]
    // 0x6e0608: r16 = Instance_SizedBox
    //     0x6e0608: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e060c: ldr             x16, [x16, #0x310]
    // 0x6e0610: StoreField: r2->field_1b = r16
    //     0x6e0610: stur            w16, [x2, #0x1b]
    // 0x6e0614: ldur            x0, [fp, #-8]
    // 0x6e0618: LoadField: r3 = r0->field_b
    //     0x6e0618: ldur            w3, [x0, #0xb]
    // 0x6e061c: DecompressPointer r3
    //     0x6e061c: add             x3, x3, HEAP, lsl #32
    // 0x6e0620: stur            x3, [fp, #-0x20]
    // 0x6e0624: LoadField: r0 = r3->field_1b
    //     0x6e0624: ldur            w0, [x3, #0x1b]
    // 0x6e0628: DecompressPointer r0
    //     0x6e0628: add             x0, x0, HEAP, lsl #32
    // 0x6e062c: stur            x0, [fp, #-8]
    // 0x6e0630: r1 = <String>
    //     0x6e0630: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e0634: r0 = TextFormField()
    //     0x6e0634: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e0638: r1 = Function '<anonymous closure>':.
    //     0x6e0638: add             x1, PP, #0x27, lsl #12  ; [pp+0x27430] AnonymousClosure: (0x6e4ba8), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e063c: ldr             x1, [x1, #0x430]
    // 0x6e0640: r2 = Null
    //     0x6e0640: mov             x2, NULL
    // 0x6e0644: stur            x0, [fp, #-0x30]
    // 0x6e0648: r0 = AllocateClosure()
    //     0x6e0648: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e064c: str             x0, [SP]
    // 0x6e0650: ldur            x1, [fp, #-0x30]
    // 0x6e0654: ldur            x2, [fp, #-8]
    // 0x6e0658: r3 = Instance_InputDecoration
    //     0x6e0658: add             x3, PP, #0x27, lsl #12  ; [pp+0x27438] Obj!InputDecoration@a0e1b1
    //     0x6e065c: ldr             x3, [x3, #0x438]
    // 0x6e0660: r4 = const [0, 0x4, 0x1, 0x3, validator, 0x3, null]
    //     0x6e0660: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a88] List(7) [0, 0x4, 0x1, 0x3, "validator", 0x3, Null]
    //     0x6e0664: ldr             x4, [x4, #0xa88]
    // 0x6e0668: r0 = TextFormField()
    //     0x6e0668: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e066c: ldur            x1, [fp, #-0x28]
    // 0x6e0670: ldur            x0, [fp, #-0x30]
    // 0x6e0674: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e0674: add             x25, x1, #0x1f
    //     0x6e0678: str             w0, [x25]
    //     0x6e067c: tbz             w0, #0, #0x6e0698
    //     0x6e0680: ldurb           w16, [x1, #-1]
    //     0x6e0684: ldurb           w17, [x0, #-1]
    //     0x6e0688: and             x16, x17, x16, lsr #2
    //     0x6e068c: tst             x16, HEAP, lsr #32
    //     0x6e0690: b.eq            #0x6e0698
    //     0x6e0694: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e0698: ldur            x0, [fp, #-0x28]
    // 0x6e069c: r16 = Instance_SizedBox
    //     0x6e069c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e06a0: ldr             x16, [x16, #0x318]
    // 0x6e06a4: StoreField: r0->field_23 = r16
    //     0x6e06a4: stur            w16, [x0, #0x23]
    // 0x6e06a8: ldur            x2, [fp, #-0x20]
    // 0x6e06ac: LoadField: r3 = r2->field_1f
    //     0x6e06ac: ldur            w3, [x2, #0x1f]
    // 0x6e06b0: DecompressPointer r3
    //     0x6e06b0: add             x3, x3, HEAP, lsl #32
    // 0x6e06b4: stur            x3, [fp, #-8]
    // 0x6e06b8: r1 = <String>
    //     0x6e06b8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e06bc: r0 = TextFormField()
    //     0x6e06bc: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e06c0: r1 = Function '<anonymous closure>':.
    //     0x6e06c0: add             x1, PP, #0x27, lsl #12  ; [pp+0x27440] AnonymousClosure: (0x6e4b54), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e06c4: ldr             x1, [x1, #0x440]
    // 0x6e06c8: r2 = Null
    //     0x6e06c8: mov             x2, NULL
    // 0x6e06cc: stur            x0, [fp, #-0x30]
    // 0x6e06d0: r0 = AllocateClosure()
    //     0x6e06d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e06d4: r16 = Instance_TextInputType
    //     0x6e06d4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6e06d8: ldr             x16, [x16, #0x948]
    // 0x6e06dc: stp             x0, x16, [SP]
    // 0x6e06e0: ldur            x1, [fp, #-0x30]
    // 0x6e06e4: ldur            x2, [fp, #-8]
    // 0x6e06e8: r3 = Instance_InputDecoration
    //     0x6e06e8: add             x3, PP, #0x27, lsl #12  ; [pp+0x27448] Obj!InputDecoration@a0e0c1
    //     0x6e06ec: ldr             x3, [x3, #0x448]
    // 0x6e06f0: r4 = const [0, 0x5, 0x2, 0x3, keyboardType, 0x3, validator, 0x4, null]
    //     0x6e06f0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18780] List(9) [0, 0x5, 0x2, 0x3, "keyboardType", 0x3, "validator", 0x4, Null]
    //     0x6e06f4: ldr             x4, [x4, #0x780]
    // 0x6e06f8: r0 = TextFormField()
    //     0x6e06f8: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e06fc: ldur            x1, [fp, #-0x28]
    // 0x6e0700: ldur            x0, [fp, #-0x30]
    // 0x6e0704: ArrayStore: r1[6] = r0  ; List_4
    //     0x6e0704: add             x25, x1, #0x27
    //     0x6e0708: str             w0, [x25]
    //     0x6e070c: tbz             w0, #0, #0x6e0728
    //     0x6e0710: ldurb           w16, [x1, #-1]
    //     0x6e0714: ldurb           w17, [x0, #-1]
    //     0x6e0718: and             x16, x17, x16, lsr #2
    //     0x6e071c: tst             x16, HEAP, lsr #32
    //     0x6e0720: b.eq            #0x6e0728
    //     0x6e0724: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e0728: ldur            x0, [fp, #-0x28]
    // 0x6e072c: r16 = Instance_SizedBox
    //     0x6e072c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e0730: ldr             x16, [x16, #0x318]
    // 0x6e0734: StoreField: r0->field_2b = r16
    //     0x6e0734: stur            w16, [x0, #0x2b]
    // 0x6e0738: ldur            x3, [fp, #-0x20]
    // 0x6e073c: LoadField: r4 = r3->field_27
    //     0x6e073c: ldur            w4, [x3, #0x27]
    // 0x6e0740: DecompressPointer r4
    //     0x6e0740: add             x4, x4, HEAP, lsl #32
    // 0x6e0744: ldur            x2, [fp, #-0x10]
    // 0x6e0748: stur            x4, [fp, #-8]
    // 0x6e074c: r1 = Function '<anonymous closure>':.
    //     0x6e074c: add             x1, PP, #0x27, lsl #12  ; [pp+0x27450] AnonymousClosure: (0x6e1604), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e0750: ldr             x1, [x1, #0x450]
    // 0x6e0754: r0 = AllocateClosure()
    //     0x6e0754: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e0758: r1 = Function '<anonymous closure>':.
    //     0x6e0758: add             x1, PP, #0x27, lsl #12  ; [pp+0x27458] AnonymousClosure: (0x6e15e4), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e075c: ldr             x1, [x1, #0x458]
    // 0x6e0760: r2 = Null
    //     0x6e0760: mov             x2, NULL
    // 0x6e0764: stur            x0, [fp, #-0x30]
    // 0x6e0768: r0 = AllocateClosure()
    //     0x6e0768: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e076c: r1 = <String?>
    //     0x6e076c: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6e0770: stur            x0, [fp, #-0x38]
    // 0x6e0774: r0 = DropdownButtonFormField()
    //     0x6e0774: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6e0778: stur            x0, [fp, #-0x40]
    // 0x6e077c: ldur            x16, [fp, #-0x38]
    // 0x6e0780: str             x16, [SP]
    // 0x6e0784: mov             x1, x0
    // 0x6e0788: ldur            x3, [fp, #-8]
    // 0x6e078c: ldur            x6, [fp, #-0x30]
    // 0x6e0790: r2 = Instance_InputDecoration
    //     0x6e0790: add             x2, PP, #0x27, lsl #12  ; [pp+0x27460] Obj!InputDecoration@a0dd01
    //     0x6e0794: ldr             x2, [x2, #0x460]
    // 0x6e0798: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6e0798: add             x5, PP, #0x19, lsl #12  ; [pp+0x192a8] List<DropdownMenuItem<String?>>(4)
    //     0x6e079c: ldr             x5, [x5, #0x2a8]
    // 0x6e07a0: r4 = const [0, 0x6, 0x1, 0x5, validator, 0x5, null]
    //     0x6e07a0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14908] List(7) [0, 0x6, 0x1, 0x5, "validator", 0x5, Null]
    //     0x6e07a4: ldr             x4, [x4, #0x908]
    // 0x6e07a8: r0 = DropdownButtonFormField()
    //     0x6e07a8: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6e07ac: ldur            x1, [fp, #-0x28]
    // 0x6e07b0: ldur            x0, [fp, #-0x40]
    // 0x6e07b4: ArrayStore: r1[8] = r0  ; List_4
    //     0x6e07b4: add             x25, x1, #0x2f
    //     0x6e07b8: str             w0, [x25]
    //     0x6e07bc: tbz             w0, #0, #0x6e07d8
    //     0x6e07c0: ldurb           w16, [x1, #-1]
    //     0x6e07c4: ldurb           w17, [x0, #-1]
    //     0x6e07c8: and             x16, x17, x16, lsr #2
    //     0x6e07cc: tst             x16, HEAP, lsr #32
    //     0x6e07d0: b.eq            #0x6e07d8
    //     0x6e07d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e07d8: ldur            x0, [fp, #-0x28]
    // 0x6e07dc: r16 = Instance_SizedBox
    //     0x6e07dc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e07e0: ldr             x16, [x16, #0x318]
    // 0x6e07e4: StoreField: r0->field_33 = r16
    //     0x6e07e4: stur            w16, [x0, #0x33]
    // 0x6e07e8: ldur            x2, [fp, #-0x20]
    // 0x6e07ec: LoadField: r3 = r2->field_23
    //     0x6e07ec: ldur            w3, [x2, #0x23]
    // 0x6e07f0: DecompressPointer r3
    //     0x6e07f0: add             x3, x3, HEAP, lsl #32
    // 0x6e07f4: stur            x3, [fp, #-8]
    // 0x6e07f8: r1 = <String>
    //     0x6e07f8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e07fc: r0 = TextFormField()
    //     0x6e07fc: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e0800: stur            x0, [fp, #-0x30]
    // 0x6e0804: r16 = 4
    //     0x6e0804: mov             x16, #4
    // 0x6e0808: str             x16, [SP]
    // 0x6e080c: mov             x1, x0
    // 0x6e0810: ldur            x2, [fp, #-8]
    // 0x6e0814: r3 = Instance_InputDecoration
    //     0x6e0814: add             x3, PP, #0x27, lsl #12  ; [pp+0x27468] Obj!InputDecoration@a0dc11
    //     0x6e0818: ldr             x3, [x3, #0x468]
    // 0x6e081c: r4 = const [0, 0x4, 0x1, 0x3, maxLines, 0x3, null]
    //     0x6e081c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13ad0] List(7) [0, 0x4, 0x1, 0x3, "maxLines", 0x3, Null]
    //     0x6e0820: ldr             x4, [x4, #0xad0]
    // 0x6e0824: r0 = TextFormField()
    //     0x6e0824: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e0828: ldur            x1, [fp, #-0x28]
    // 0x6e082c: ldur            x0, [fp, #-0x30]
    // 0x6e0830: ArrayStore: r1[10] = r0  ; List_4
    //     0x6e0830: add             x25, x1, #0x37
    //     0x6e0834: str             w0, [x25]
    //     0x6e0838: tbz             w0, #0, #0x6e0854
    //     0x6e083c: ldurb           w16, [x1, #-1]
    //     0x6e0840: ldurb           w17, [x0, #-1]
    //     0x6e0844: and             x16, x17, x16, lsr #2
    //     0x6e0848: tst             x16, HEAP, lsr #32
    //     0x6e084c: b.eq            #0x6e0854
    //     0x6e0850: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e0854: ldur            x0, [fp, #-0x28]
    // 0x6e0858: r16 = Instance_SizedBox
    //     0x6e0858: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e085c: ldr             x16, [x16, #0x310]
    // 0x6e0860: StoreField: r0->field_3b = r16
    //     0x6e0860: stur            w16, [x0, #0x3b]
    // 0x6e0864: ldur            x3, [fp, #-0x20]
    // 0x6e0868: LoadField: r1 = r3->field_f
    //     0x6e0868: ldur            w1, [x3, #0xf]
    // 0x6e086c: DecompressPointer r1
    //     0x6e086c: add             x1, x1, HEAP, lsl #32
    // 0x6e0870: LoadField: r2 = r1->field_b
    //     0x6e0870: ldur            w2, [x1, #0xb]
    // 0x6e0874: DecompressPointer r2
    //     0x6e0874: add             x2, x2, HEAP, lsl #32
    // 0x6e0878: cmp             w2, NULL
    // 0x6e087c: b.eq            #0x6e0b10
    // 0x6e0880: LoadField: r1 = r2->field_b
    //     0x6e0880: ldur            w1, [x2, #0xb]
    // 0x6e0884: DecompressPointer r1
    //     0x6e0884: add             x1, x1, HEAP, lsl #32
    // 0x6e0888: LoadField: r2 = r1->field_2b
    //     0x6e0888: ldur            w2, [x1, #0x2b]
    // 0x6e088c: DecompressPointer r2
    //     0x6e088c: add             x2, x2, HEAP, lsl #32
    // 0x6e0890: tbnz            w2, #4, #0x6e08a0
    // 0x6e0894: mov             x0, x3
    // 0x6e0898: r1 = Null
    //     0x6e0898: mov             x1, NULL
    // 0x6e089c: b               #0x6e08b8
    // 0x6e08a0: ldur            x2, [fp, #-0x10]
    // 0x6e08a4: r1 = Function '<anonymous closure>':.
    //     0x6e08a4: add             x1, PP, #0x27, lsl #12  ; [pp+0x27470] AnonymousClosure: (0x6e0b18), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e08a8: ldr             x1, [x1, #0x470]
    // 0x6e08ac: r0 = AllocateClosure()
    //     0x6e08ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e08b0: mov             x1, x0
    // 0x6e08b4: ldur            x0, [fp, #-0x20]
    // 0x6e08b8: stur            x1, [fp, #-8]
    // 0x6e08bc: r0 = Radius()
    //     0x6e08bc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e08c0: d0 = 12.000000
    //     0x6e08c0: fmov            d0, #12.00000000
    // 0x6e08c4: stur            x0, [fp, #-0x10]
    // 0x6e08c8: StoreField: r0->field_7 = d0
    //     0x6e08c8: stur            d0, [x0, #7]
    // 0x6e08cc: StoreField: r0->field_f = d0
    //     0x6e08cc: stur            d0, [x0, #0xf]
    // 0x6e08d0: r0 = BorderRadius()
    //     0x6e08d0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e08d4: mov             x1, x0
    // 0x6e08d8: ldur            x0, [fp, #-0x10]
    // 0x6e08dc: stur            x1, [fp, #-0x30]
    // 0x6e08e0: StoreField: r1->field_7 = r0
    //     0x6e08e0: stur            w0, [x1, #7]
    // 0x6e08e4: StoreField: r1->field_b = r0
    //     0x6e08e4: stur            w0, [x1, #0xb]
    // 0x6e08e8: StoreField: r1->field_f = r0
    //     0x6e08e8: stur            w0, [x1, #0xf]
    // 0x6e08ec: StoreField: r1->field_13 = r0
    //     0x6e08ec: stur            w0, [x1, #0x13]
    // 0x6e08f0: r0 = RoundedRectangleBorder()
    //     0x6e08f0: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6e08f4: mov             x1, x0
    // 0x6e08f8: ldur            x0, [fp, #-0x30]
    // 0x6e08fc: StoreField: r1->field_b = r0
    //     0x6e08fc: stur            w0, [x1, #0xb]
    // 0x6e0900: r0 = Instance_BorderSide
    //     0x6e0900: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6e0904: ldr             x0, [x0, #0xcb8]
    // 0x6e0908: StoreField: r1->field_7 = r0
    //     0x6e0908: stur            w0, [x1, #7]
    // 0x6e090c: r16 = Instance_Color
    //     0x6e090c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e0910: ldr             x16, [x16, #0xb78]
    // 0x6e0914: r30 = Instance_Color
    //     0x6e0914: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e0918: stp             lr, x16, [SP, #0x10]
    // 0x6e091c: r16 = Instance_EdgeInsets
    //     0x6e091c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b38] Obj!EdgeInsets@a0c081
    //     0x6e0920: ldr             x16, [x16, #0xb38]
    // 0x6e0924: stp             x1, x16, [SP]
    // 0x6e0928: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x6e0928: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x6e092c: ldr             x4, [x4, #0xbb0]
    // 0x6e0930: r0 = styleFrom()
    //     0x6e0930: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6e0934: mov             x1, x0
    // 0x6e0938: ldur            x0, [fp, #-0x20]
    // 0x6e093c: stur            x1, [fp, #-0x30]
    // 0x6e0940: LoadField: r2 = r0->field_f
    //     0x6e0940: ldur            w2, [x0, #0xf]
    // 0x6e0944: DecompressPointer r2
    //     0x6e0944: add             x2, x2, HEAP, lsl #32
    // 0x6e0948: LoadField: r3 = r2->field_b
    //     0x6e0948: ldur            w3, [x2, #0xb]
    // 0x6e094c: DecompressPointer r3
    //     0x6e094c: add             x3, x3, HEAP, lsl #32
    // 0x6e0950: cmp             w3, NULL
    // 0x6e0954: b.eq            #0x6e0b14
    // 0x6e0958: LoadField: r2 = r3->field_b
    //     0x6e0958: ldur            w2, [x3, #0xb]
    // 0x6e095c: DecompressPointer r2
    //     0x6e095c: add             x2, x2, HEAP, lsl #32
    // 0x6e0960: LoadField: r3 = r2->field_2b
    //     0x6e0960: ldur            w3, [x2, #0x2b]
    // 0x6e0964: DecompressPointer r3
    //     0x6e0964: add             x3, x3, HEAP, lsl #32
    // 0x6e0968: tbnz            w3, #4, #0x6e0978
    // 0x6e096c: r5 = "Güncelleniyor..."
    //     0x6e096c: add             x5, PP, #0x27, lsl #12  ; [pp+0x27478] "Güncelleniyor..."
    //     0x6e0970: ldr             x5, [x5, #0x478]
    // 0x6e0974: b               #0x6e0980
    // 0x6e0978: r5 = "Güncelle"
    //     0x6e0978: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6e097c: ldr             x5, [x5, #0xb48]
    // 0x6e0980: ldur            x4, [fp, #-0x18]
    // 0x6e0984: ldur            x3, [fp, #-0x28]
    // 0x6e0988: ldur            x2, [fp, #-8]
    // 0x6e098c: stur            x5, [fp, #-0x10]
    // 0x6e0990: r0 = Text()
    //     0x6e0990: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e0994: mov             x1, x0
    // 0x6e0998: ldur            x0, [fp, #-0x10]
    // 0x6e099c: stur            x1, [fp, #-0x38]
    // 0x6e09a0: StoreField: r1->field_b = r0
    //     0x6e09a0: stur            w0, [x1, #0xb]
    // 0x6e09a4: r0 = ElevatedButton()
    //     0x6e09a4: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6e09a8: mov             x1, x0
    // 0x6e09ac: ldur            x0, [fp, #-8]
    // 0x6e09b0: stur            x1, [fp, #-0x10]
    // 0x6e09b4: StoreField: r1->field_b = r0
    //     0x6e09b4: stur            w0, [x1, #0xb]
    // 0x6e09b8: ldur            x0, [fp, #-0x30]
    // 0x6e09bc: StoreField: r1->field_1b = r0
    //     0x6e09bc: stur            w0, [x1, #0x1b]
    // 0x6e09c0: r0 = false
    //     0x6e09c0: add             x0, NULL, #0x30  ; false
    // 0x6e09c4: StoreField: r1->field_27 = r0
    //     0x6e09c4: stur            w0, [x1, #0x27]
    // 0x6e09c8: r0 = true
    //     0x6e09c8: add             x0, NULL, #0x20  ; true
    // 0x6e09cc: StoreField: r1->field_2f = r0
    //     0x6e09cc: stur            w0, [x1, #0x2f]
    // 0x6e09d0: ldur            x0, [fp, #-0x38]
    // 0x6e09d4: StoreField: r1->field_37 = r0
    //     0x6e09d4: stur            w0, [x1, #0x37]
    // 0x6e09d8: r0 = SizedBox()
    //     0x6e09d8: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6e09dc: mov             x1, x0
    // 0x6e09e0: r0 = inf
    //     0x6e09e0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e09e4: ldr             x0, [x0, #0xb20]
    // 0x6e09e8: StoreField: r1->field_f = r0
    //     0x6e09e8: stur            w0, [x1, #0xf]
    // 0x6e09ec: ldur            x0, [fp, #-0x10]
    // 0x6e09f0: StoreField: r1->field_b = r0
    //     0x6e09f0: stur            w0, [x1, #0xb]
    // 0x6e09f4: mov             x0, x1
    // 0x6e09f8: ldur            x1, [fp, #-0x28]
    // 0x6e09fc: ArrayStore: r1[12] = r0  ; List_4
    //     0x6e09fc: add             x25, x1, #0x3f
    //     0x6e0a00: str             w0, [x25]
    //     0x6e0a04: tbz             w0, #0, #0x6e0a20
    //     0x6e0a08: ldurb           w16, [x1, #-1]
    //     0x6e0a0c: ldurb           w17, [x0, #-1]
    //     0x6e0a10: and             x16, x17, x16, lsr #2
    //     0x6e0a14: tst             x16, HEAP, lsr #32
    //     0x6e0a18: b.eq            #0x6e0a20
    //     0x6e0a1c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e0a20: ldur            x0, [fp, #-0x28]
    // 0x6e0a24: r16 = Instance_SizedBox
    //     0x6e0a24: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b58] Obj!SizedBox@a1faf1
    //     0x6e0a28: ldr             x16, [x16, #0xb58]
    // 0x6e0a2c: StoreField: r0->field_43 = r16
    //     0x6e0a2c: stur            w16, [x0, #0x43]
    // 0x6e0a30: r1 = <Widget>
    //     0x6e0a30: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e0a34: r0 = AllocateGrowableArray()
    //     0x6e0a34: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e0a38: mov             x1, x0
    // 0x6e0a3c: ldur            x0, [fp, #-0x28]
    // 0x6e0a40: stur            x1, [fp, #-8]
    // 0x6e0a44: StoreField: r1->field_f = r0
    //     0x6e0a44: stur            w0, [x1, #0xf]
    // 0x6e0a48: r0 = 28
    //     0x6e0a48: mov             x0, #0x1c
    // 0x6e0a4c: StoreField: r1->field_b = r0
    //     0x6e0a4c: stur            w0, [x1, #0xb]
    // 0x6e0a50: r0 = Column()
    //     0x6e0a50: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e0a54: mov             x1, x0
    // 0x6e0a58: r0 = Instance_Axis
    //     0x6e0a58: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e0a5c: stur            x1, [fp, #-0x10]
    // 0x6e0a60: StoreField: r1->field_f = r0
    //     0x6e0a60: stur            w0, [x1, #0xf]
    // 0x6e0a64: r0 = Instance_MainAxisAlignment
    //     0x6e0a64: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e0a68: ldr             x0, [x0, #0x230]
    // 0x6e0a6c: StoreField: r1->field_13 = r0
    //     0x6e0a6c: stur            w0, [x1, #0x13]
    // 0x6e0a70: r0 = Instance_MainAxisSize
    //     0x6e0a70: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6e0a74: ldr             x0, [x0, #0xb60]
    // 0x6e0a78: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e0a78: stur            w0, [x1, #0x17]
    // 0x6e0a7c: r0 = Instance_CrossAxisAlignment
    //     0x6e0a7c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e0a80: ldr             x0, [x0, #0x338]
    // 0x6e0a84: StoreField: r1->field_1b = r0
    //     0x6e0a84: stur            w0, [x1, #0x1b]
    // 0x6e0a88: r0 = Instance_VerticalDirection
    //     0x6e0a88: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e0a8c: ldr             x0, [x0, #0x340]
    // 0x6e0a90: StoreField: r1->field_23 = r0
    //     0x6e0a90: stur            w0, [x1, #0x23]
    // 0x6e0a94: r0 = Instance_Clip
    //     0x6e0a94: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e0a98: ldr             x0, [x0, #0x348]
    // 0x6e0a9c: StoreField: r1->field_2b = r0
    //     0x6e0a9c: stur            w0, [x1, #0x2b]
    // 0x6e0aa0: StoreField: r1->field_2f = rZR
    //     0x6e0aa0: stur            xzr, [x1, #0x2f]
    // 0x6e0aa4: ldur            x0, [fp, #-8]
    // 0x6e0aa8: StoreField: r1->field_b = r0
    //     0x6e0aa8: stur            w0, [x1, #0xb]
    // 0x6e0aac: ldur            x0, [fp, #-0x20]
    // 0x6e0ab0: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6e0ab0: ldur            w2, [x0, #0x17]
    // 0x6e0ab4: DecompressPointer r2
    //     0x6e0ab4: add             x2, x2, HEAP, lsl #32
    // 0x6e0ab8: stur            x2, [fp, #-8]
    // 0x6e0abc: r0 = Form()
    //     0x6e0abc: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6e0ac0: mov             x1, x0
    // 0x6e0ac4: ldur            x0, [fp, #-0x10]
    // 0x6e0ac8: stur            x1, [fp, #-0x20]
    // 0x6e0acc: StoreField: r1->field_b = r0
    //     0x6e0acc: stur            w0, [x1, #0xb]
    // 0x6e0ad0: r0 = Instance_AutovalidateMode
    //     0x6e0ad0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6e0ad4: ldr             x0, [x0, #0xb68]
    // 0x6e0ad8: StoreField: r1->field_23 = r0
    //     0x6e0ad8: stur            w0, [x1, #0x23]
    // 0x6e0adc: ldur            x0, [fp, #-8]
    // 0x6e0ae0: StoreField: r1->field_7 = r0
    //     0x6e0ae0: stur            w0, [x1, #7]
    // 0x6e0ae4: r0 = Padding()
    //     0x6e0ae4: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e0ae8: ldur            x1, [fp, #-0x18]
    // 0x6e0aec: StoreField: r0->field_f = r1
    //     0x6e0aec: stur            w1, [x0, #0xf]
    // 0x6e0af0: ldur            x1, [fp, #-0x20]
    // 0x6e0af4: StoreField: r0->field_b = r1
    //     0x6e0af4: stur            w1, [x0, #0xb]
    // 0x6e0af8: LeaveFrame
    //     0x6e0af8: mov             SP, fp
    //     0x6e0afc: ldp             fp, lr, [SP], #0x10
    // 0x6e0b00: ret
    //     0x6e0b00: ret             
    // 0x6e0b04: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e0b04: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e0b08: b               #0x6e04c0
    // 0x6e0b0c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e0b0c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e0b10: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e0b10: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e0b14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e0b14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6e0b18, size: 0x1f8
    // 0x6e0b18: EnterFrame
    //     0x6e0b18: stp             fp, lr, [SP, #-0x10]!
    //     0x6e0b1c: mov             fp, SP
    // 0x6e0b20: AllocStack(0x58)
    //     0x6e0b20: sub             SP, SP, #0x58
    // 0x6e0b24: SetupParameters(_RoomsManagementScreenState this /* r1 */)
    //     0x6e0b24: stur            NULL, [fp, #-8]
    //     0x6e0b28: mov             x0, #0
    //     0x6e0b2c: add             x1, fp, w0, sxtw #2
    //     0x6e0b30: ldr             x1, [x1, #0x10]
    //     0x6e0b34: ldur            w2, [x1, #0x17]
    //     0x6e0b38: add             x2, x2, HEAP, lsl #32
    //     0x6e0b3c: stur            x2, [fp, #-0x10]
    // 0x6e0b40: CheckStackOverflow
    //     0x6e0b40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e0b44: cmp             SP, x16
    //     0x6e0b48: b.ls            #0x6e0d00
    // 0x6e0b4c: InitAsync() -> Future<void?>
    //     0x6e0b4c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e0b50: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e0b54: ldur            x0, [fp, #-0x10]
    // 0x6e0b58: LoadField: r1 = r0->field_b
    //     0x6e0b58: ldur            w1, [x0, #0xb]
    // 0x6e0b5c: DecompressPointer r1
    //     0x6e0b5c: add             x1, x1, HEAP, lsl #32
    // 0x6e0b60: LoadField: r2 = r1->field_b
    //     0x6e0b60: ldur            w2, [x1, #0xb]
    // 0x6e0b64: DecompressPointer r2
    //     0x6e0b64: add             x2, x2, HEAP, lsl #32
    // 0x6e0b68: stur            x2, [fp, #-0x18]
    // 0x6e0b6c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x6e0b6c: ldur            w1, [x2, #0x17]
    // 0x6e0b70: DecompressPointer r1
    //     0x6e0b70: add             x1, x1, HEAP, lsl #32
    // 0x6e0b74: r0 = currentState()
    //     0x6e0b74: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6e0b78: cmp             w0, NULL
    // 0x6e0b7c: b.eq            #0x6e0d08
    // 0x6e0b80: mov             x1, x0
    // 0x6e0b84: r0 = validate()
    //     0x6e0b84: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x6e0b88: tbz             w0, #4, #0x6e0b94
    // 0x6e0b8c: r0 = Null
    //     0x6e0b8c: mov             x0, NULL
    // 0x6e0b90: r0 = ReturnAsyncNotFuture()
    //     0x6e0b90: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e0b94: ldur            x0, [fp, #-0x18]
    // 0x6e0b98: LoadField: r1 = r0->field_1f
    //     0x6e0b98: ldur            w1, [x0, #0x1f]
    // 0x6e0b9c: DecompressPointer r1
    //     0x6e0b9c: add             x1, x1, HEAP, lsl #32
    // 0x6e0ba0: LoadField: r2 = r1->field_27
    //     0x6e0ba0: ldur            w2, [x1, #0x27]
    // 0x6e0ba4: DecompressPointer r2
    //     0x6e0ba4: add             x2, x2, HEAP, lsl #32
    // 0x6e0ba8: LoadField: r1 = r2->field_7
    //     0x6e0ba8: ldur            w1, [x2, #7]
    // 0x6e0bac: DecompressPointer r1
    //     0x6e0bac: add             x1, x1, HEAP, lsl #32
    // 0x6e0bb0: r0 = trim()
    //     0x6e0bb0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e0bb4: mov             x1, x0
    // 0x6e0bb8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e0bb8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e0bbc: r0 = tryParse()
    //     0x6e0bbc: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6e0bc0: cmp             w0, NULL
    // 0x6e0bc4: b.ne            #0x6e0bd0
    // 0x6e0bc8: r2 = 1
    //     0x6e0bc8: mov             x2, #1
    // 0x6e0bcc: b               #0x6e0be0
    // 0x6e0bd0: r1 = LoadInt32Instr(r0)
    //     0x6e0bd0: sbfx            x1, x0, #1, #0x1f
    //     0x6e0bd4: tbz             w0, #0, #0x6e0bdc
    //     0x6e0bd8: ldur            x1, [x0, #7]
    // 0x6e0bdc: mov             x2, x1
    // 0x6e0be0: ldur            x0, [fp, #-0x18]
    // 0x6e0be4: stur            x2, [fp, #-0x30]
    // 0x6e0be8: LoadField: r1 = r0->field_f
    //     0x6e0be8: ldur            w1, [x0, #0xf]
    // 0x6e0bec: DecompressPointer r1
    //     0x6e0bec: add             x1, x1, HEAP, lsl #32
    // 0x6e0bf0: LoadField: r3 = r1->field_b
    //     0x6e0bf0: ldur            w3, [x1, #0xb]
    // 0x6e0bf4: DecompressPointer r3
    //     0x6e0bf4: add             x3, x3, HEAP, lsl #32
    // 0x6e0bf8: cmp             w3, NULL
    // 0x6e0bfc: b.eq            #0x6e0d0c
    // 0x6e0c00: LoadField: r4 = r3->field_b
    //     0x6e0c00: ldur            w4, [x3, #0xb]
    // 0x6e0c04: DecompressPointer r4
    //     0x6e0c04: add             x4, x4, HEAP, lsl #32
    // 0x6e0c08: stur            x4, [fp, #-0x28]
    // 0x6e0c0c: LoadField: r1 = r0->field_13
    //     0x6e0c0c: ldur            w1, [x0, #0x13]
    // 0x6e0c10: DecompressPointer r1
    //     0x6e0c10: add             x1, x1, HEAP, lsl #32
    // 0x6e0c14: LoadField: r6 = r1->field_7
    //     0x6e0c14: ldur            w6, [x1, #7]
    // 0x6e0c18: DecompressPointer r6
    //     0x6e0c18: add             x6, x6, HEAP, lsl #32
    // 0x6e0c1c: stur            x6, [fp, #-0x20]
    // 0x6e0c20: LoadField: r1 = r0->field_1b
    //     0x6e0c20: ldur            w1, [x0, #0x1b]
    // 0x6e0c24: DecompressPointer r1
    //     0x6e0c24: add             x1, x1, HEAP, lsl #32
    // 0x6e0c28: LoadField: r3 = r1->field_27
    //     0x6e0c28: ldur            w3, [x1, #0x27]
    // 0x6e0c2c: DecompressPointer r3
    //     0x6e0c2c: add             x3, x3, HEAP, lsl #32
    // 0x6e0c30: LoadField: r1 = r3->field_7
    //     0x6e0c30: ldur            w1, [x3, #7]
    // 0x6e0c34: DecompressPointer r1
    //     0x6e0c34: add             x1, x1, HEAP, lsl #32
    // 0x6e0c38: r0 = trim()
    //     0x6e0c38: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e0c3c: mov             x2, x0
    // 0x6e0c40: ldur            x0, [fp, #-0x18]
    // 0x6e0c44: stur            x2, [fp, #-0x48]
    // 0x6e0c48: LoadField: r3 = r0->field_27
    //     0x6e0c48: ldur            w3, [x0, #0x27]
    // 0x6e0c4c: DecompressPointer r3
    //     0x6e0c4c: add             x3, x3, HEAP, lsl #32
    // 0x6e0c50: stur            x3, [fp, #-0x40]
    // 0x6e0c54: LoadField: r4 = r0->field_23
    //     0x6e0c54: ldur            w4, [x0, #0x23]
    // 0x6e0c58: DecompressPointer r4
    //     0x6e0c58: add             x4, x4, HEAP, lsl #32
    // 0x6e0c5c: stur            x4, [fp, #-0x38]
    // 0x6e0c60: LoadField: r0 = r4->field_27
    //     0x6e0c60: ldur            w0, [x4, #0x27]
    // 0x6e0c64: DecompressPointer r0
    //     0x6e0c64: add             x0, x0, HEAP, lsl #32
    // 0x6e0c68: LoadField: r1 = r0->field_7
    //     0x6e0c68: ldur            w1, [x0, #7]
    // 0x6e0c6c: DecompressPointer r1
    //     0x6e0c6c: add             x1, x1, HEAP, lsl #32
    // 0x6e0c70: r0 = trim()
    //     0x6e0c70: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e0c74: LoadField: r1 = r0->field_7
    //     0x6e0c74: ldur            w1, [x0, #7]
    // 0x6e0c78: cbnz            w1, #0x6e0c84
    // 0x6e0c7c: r5 = Null
    //     0x6e0c7c: mov             x5, NULL
    // 0x6e0c80: b               #0x6e0ca4
    // 0x6e0c84: ldur            x0, [fp, #-0x38]
    // 0x6e0c88: LoadField: r1 = r0->field_27
    //     0x6e0c88: ldur            w1, [x0, #0x27]
    // 0x6e0c8c: DecompressPointer r1
    //     0x6e0c8c: add             x1, x1, HEAP, lsl #32
    // 0x6e0c90: LoadField: r0 = r1->field_7
    //     0x6e0c90: ldur            w0, [x1, #7]
    // 0x6e0c94: DecompressPointer r0
    //     0x6e0c94: add             x0, x0, HEAP, lsl #32
    // 0x6e0c98: mov             x1, x0
    // 0x6e0c9c: r0 = trim()
    //     0x6e0c9c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e0ca0: mov             x5, x0
    // 0x6e0ca4: ldur            x0, [fp, #-0x10]
    // 0x6e0ca8: ldur            x1, [fp, #-0x28]
    // 0x6e0cac: ldur            x2, [fp, #-0x30]
    // 0x6e0cb0: ldur            x3, [fp, #-0x40]
    // 0x6e0cb4: ldur            x6, [fp, #-0x20]
    // 0x6e0cb8: ldur            x7, [fp, #-0x48]
    // 0x6e0cbc: r0 = updateRoom()
    //     0x6e0cbc: bl              #0x6e0d10  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::updateRoom
    // 0x6e0cc0: mov             x1, x0
    // 0x6e0cc4: stur            x1, [fp, #-0x18]
    // 0x6e0cc8: r0 = Await()
    //     0x6e0cc8: bl              #0x3dd188  ; AwaitStub
    // 0x6e0ccc: ldur            x0, [fp, #-0x10]
    // 0x6e0cd0: LoadField: r1 = r0->field_f
    //     0x6e0cd0: ldur            w1, [x0, #0xf]
    // 0x6e0cd4: DecompressPointer r1
    //     0x6e0cd4: add             x1, x1, HEAP, lsl #32
    // 0x6e0cd8: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6e0cd8: ldur            w0, [x1, #0x17]
    // 0x6e0cdc: DecompressPointer r0
    //     0x6e0cdc: add             x0, x0, HEAP, lsl #32
    // 0x6e0ce0: cmp             w0, NULL
    // 0x6e0ce4: b.eq            #0x6e0cf8
    // 0x6e0ce8: r16 = <Object?>
    //     0x6e0ce8: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6e0cec: stp             x1, x16, [SP]
    // 0x6e0cf0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6e0cf0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6e0cf4: r0 = pop()
    //     0x6e0cf4: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6e0cf8: r0 = Null
    //     0x6e0cf8: mov             x0, NULL
    // 0x6e0cfc: r0 = ReturnAsyncNotFuture()
    //     0x6e0cfc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e0d00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e0d00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e0d04: b               #0x6e0b4c
    // 0x6e0d08: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e0d08: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e0d0c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e0d0c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e15e4, size: 0x20
    // 0x6e15e4: ldr             x1, [SP]
    // 0x6e15e8: cmp             w1, NULL
    // 0x6e15ec: b.ne            #0x6e15fc
    // 0x6e15f0: r0 = "Cinsiyet türü seçiniz"
    //     0x6e15f0: add             x0, PP, #0x27, lsl #12  ; [pp+0x274b8] "Cinsiyet türü seçiniz"
    //     0x6e15f4: ldr             x0, [x0, #0x4b8]
    // 0x6e15f8: b               #0x6e1600
    // 0x6e15fc: r0 = Null
    //     0x6e15fc: mov             x0, NULL
    // 0x6e1600: ret
    //     0x6e1600: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e1604, size: 0x8c
    // 0x6e1604: EnterFrame
    //     0x6e1604: stp             fp, lr, [SP, #-0x10]!
    //     0x6e1608: mov             fp, SP
    // 0x6e160c: AllocStack(0x20)
    //     0x6e160c: sub             SP, SP, #0x20
    // 0x6e1610: SetupParameters([dynamic _ /* r0 */])
    //     0x6e1610: ldr             x0, [fp, #0x18]
    //     0x6e1614: ldur            w1, [x0, #0x17]
    //     0x6e1618: add             x1, x1, HEAP, lsl #32
    //     0x6e161c: stur            x1, [fp, #-8]
    // 0x6e1620: CheckStackOverflow
    //     0x6e1620: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e1624: cmp             SP, x16
    //     0x6e1628: b.ls            #0x6e1688
    // 0x6e162c: r1 = 1
    //     0x6e162c: mov             x1, #1
    // 0x6e1630: r0 = AllocateContext()
    //     0x6e1630: bl              #0x927010  ; AllocateContextStub
    // 0x6e1634: mov             x1, x0
    // 0x6e1638: ldur            x0, [fp, #-8]
    // 0x6e163c: StoreField: r1->field_b = r0
    //     0x6e163c: stur            w0, [x1, #0xb]
    // 0x6e1640: ldr             x2, [fp, #0x10]
    // 0x6e1644: StoreField: r1->field_f = r2
    //     0x6e1644: stur            w2, [x1, #0xf]
    // 0x6e1648: LoadField: r3 = r0->field_13
    //     0x6e1648: ldur            w3, [x0, #0x13]
    // 0x6e164c: DecompressPointer r3
    //     0x6e164c: add             x3, x3, HEAP, lsl #32
    // 0x6e1650: mov             x2, x1
    // 0x6e1654: stur            x3, [fp, #-0x10]
    // 0x6e1658: r1 = Function '<anonymous closure>':.
    //     0x6e1658: add             x1, PP, #0x27, lsl #12  ; [pp+0x274c0] AnonymousClosure: (0x6e1690), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e165c: ldr             x1, [x1, #0x4c0]
    // 0x6e1660: r0 = AllocateClosure()
    //     0x6e1660: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e1664: ldur            x16, [fp, #-0x10]
    // 0x6e1668: stp             x0, x16, [SP]
    // 0x6e166c: ldur            x0, [fp, #-0x10]
    // 0x6e1670: ClosureCall
    //     0x6e1670: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e1674: ldur            x2, [x0, #0x1f]
    //     0x6e1678: blr             x2
    // 0x6e167c: LeaveFrame
    //     0x6e167c: mov             SP, fp
    //     0x6e1680: ldp             fp, lr, [SP], #0x10
    // 0x6e1684: ret
    //     0x6e1684: ret             
    // 0x6e1688: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e1688: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e168c: b               #0x6e162c
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e4b54, size: 0x54
    // 0x6e4b54: EnterFrame
    //     0x6e4b54: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4b58: mov             fp, SP
    // 0x6e4b5c: CheckStackOverflow
    //     0x6e4b5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4b60: cmp             SP, x16
    //     0x6e4b64: b.ls            #0x6e4ba0
    // 0x6e4b68: ldr             x1, [fp, #0x10]
    // 0x6e4b6c: cmp             w1, NULL
    // 0x6e4b70: b.eq            #0x6e4b84
    // 0x6e4b74: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e4b74: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e4b78: r0 = tryParse()
    //     0x6e4b78: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6e4b7c: cmp             w0, NULL
    // 0x6e4b80: b.ne            #0x6e4b90
    // 0x6e4b84: r0 = "Geçerli kapasite girin"
    //     0x6e4b84: add             x0, PP, #0x27, lsl #12  ; [pp+0x274c8] "Geçerli kapasite girin"
    //     0x6e4b88: ldr             x0, [x0, #0x4c8]
    // 0x6e4b8c: b               #0x6e4b94
    // 0x6e4b90: r0 = Null
    //     0x6e4b90: mov             x0, NULL
    // 0x6e4b94: LeaveFrame
    //     0x6e4b94: mov             SP, fp
    //     0x6e4b98: ldp             fp, lr, [SP], #0x10
    // 0x6e4b9c: ret
    //     0x6e4b9c: ret             
    // 0x6e4ba0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4ba0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4ba4: b               #0x6e4b68
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e4ba8, size: 0x28
    // 0x6e4ba8: ldr             x1, [SP]
    // 0x6e4bac: cmp             w1, NULL
    // 0x6e4bb0: b.eq            #0x6e4bbc
    // 0x6e4bb4: LoadField: r2 = r1->field_7
    //     0x6e4bb4: ldur            w2, [x1, #7]
    // 0x6e4bb8: cbnz            w2, #0x6e4bc8
    // 0x6e4bbc: r0 = "Oda numarası girin"
    //     0x6e4bbc: add             x0, PP, #0x27, lsl #12  ; [pp+0x274d0] "Oda numarası girin"
    //     0x6e4bc0: ldr             x0, [x0, #0x4d0]
    // 0x6e4bc4: b               #0x6e4bcc
    // 0x6e4bc8: r0 = Null
    //     0x6e4bc8: mov             x0, NULL
    // 0x6e4bcc: ret
    //     0x6e4bcc: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e4bd0, size: 0x58
    // 0x6e4bd0: EnterFrame
    //     0x6e4bd0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4bd4: mov             fp, SP
    // 0x6e4bd8: ldr             x0, [fp, #0x10]
    // 0x6e4bdc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6e4bdc: ldur            w1, [x0, #0x17]
    // 0x6e4be0: DecompressPointer r1
    //     0x6e4be0: add             x1, x1, HEAP, lsl #32
    // 0x6e4be4: CheckStackOverflow
    //     0x6e4be4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4be8: cmp             SP, x16
    //     0x6e4bec: b.ls            #0x6e4c20
    // 0x6e4bf0: LoadField: r0 = r1->field_b
    //     0x6e4bf0: ldur            w0, [x1, #0xb]
    // 0x6e4bf4: DecompressPointer r0
    //     0x6e4bf4: add             x0, x0, HEAP, lsl #32
    // 0x6e4bf8: LoadField: r2 = r0->field_f
    //     0x6e4bf8: ldur            w2, [x0, #0xf]
    // 0x6e4bfc: DecompressPointer r2
    //     0x6e4bfc: add             x2, x2, HEAP, lsl #32
    // 0x6e4c00: LoadField: r0 = r1->field_f
    //     0x6e4c00: ldur            w0, [x1, #0xf]
    // 0x6e4c04: DecompressPointer r0
    //     0x6e4c04: add             x0, x0, HEAP, lsl #32
    // 0x6e4c08: mov             x1, x2
    // 0x6e4c0c: mov             x2, x0
    // 0x6e4c10: r0 = _openCreateRoomSheet()
    //     0x6e4c10: bl              #0x6e4c28  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openCreateRoomSheet
    // 0x6e4c14: LeaveFrame
    //     0x6e4c14: mov             SP, fp
    //     0x6e4c18: ldp             fp, lr, [SP], #0x10
    // 0x6e4c1c: ret
    //     0x6e4c1c: ret             
    // 0x6e4c20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4c20: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4c24: b               #0x6e4bf0
  }
  _ _openCreateRoomSheet(/* No info */) async {
    // ** addr: 0x6e4c28, size: 0x18c
    // 0x6e4c28: EnterFrame
    //     0x6e4c28: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4c2c: mov             fp, SP
    // 0x6e4c30: AllocStack(0x48)
    //     0x6e4c30: sub             SP, SP, #0x48
    // 0x6e4c34: SetupParameters(_RoomsManagementScreenState this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x6e4c34: stur            NULL, [fp, #-8]
    //     0x6e4c38: stur            x1, [fp, #-0x10]
    //     0x6e4c3c: stur            x2, [fp, #-0x18]
    // 0x6e4c40: CheckStackOverflow
    //     0x6e4c40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4c44: cmp             SP, x16
    //     0x6e4c48: b.ls            #0x6e4dac
    // 0x6e4c4c: r1 = 6
    //     0x6e4c4c: mov             x1, #6
    // 0x6e4c50: r0 = AllocateContext()
    //     0x6e4c50: bl              #0x927010  ; AllocateContextStub
    // 0x6e4c54: mov             x1, x0
    // 0x6e4c58: ldur            x0, [fp, #-0x10]
    // 0x6e4c5c: stur            x1, [fp, #-0x20]
    // 0x6e4c60: StoreField: r1->field_f = r0
    //     0x6e4c60: stur            w0, [x1, #0xf]
    // 0x6e4c64: InitAsync() -> Future<void?>
    //     0x6e4c64: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e4c68: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e4c6c: r1 = <FormState>
    //     0x6e4c6c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x6e4c70: ldr             x1, [x1, #0x590]
    // 0x6e4c74: r0 = LabeledGlobalKey()
    //     0x6e4c74: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x6e4c78: ldur            x2, [fp, #-0x20]
    // 0x6e4c7c: StoreField: r2->field_13 = r0
    //     0x6e4c7c: stur            w0, [x2, #0x13]
    //     0x6e4c80: ldurb           w16, [x2, #-1]
    //     0x6e4c84: ldurb           w17, [x0, #-1]
    //     0x6e4c88: and             x16, x17, x16, lsr #2
    //     0x6e4c8c: tst             x16, HEAP, lsr #32
    //     0x6e4c90: b.eq            #0x6e4c98
    //     0x6e4c94: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e4c98: r1 = <TextEditingValue>
    //     0x6e4c98: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6e4c9c: r0 = TextEditingController()
    //     0x6e4c9c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6e4ca0: mov             x1, x0
    // 0x6e4ca4: stur            x0, [fp, #-0x10]
    // 0x6e4ca8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e4ca8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e4cac: r0 = TextEditingController()
    //     0x6e4cac: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6e4cb0: ldur            x0, [fp, #-0x10]
    // 0x6e4cb4: ldur            x2, [fp, #-0x20]
    // 0x6e4cb8: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e4cb8: stur            w0, [x2, #0x17]
    //     0x6e4cbc: ldurb           w16, [x2, #-1]
    //     0x6e4cc0: ldurb           w17, [x0, #-1]
    //     0x6e4cc4: and             x16, x17, x16, lsr #2
    //     0x6e4cc8: tst             x16, HEAP, lsr #32
    //     0x6e4ccc: b.eq            #0x6e4cd4
    //     0x6e4cd0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e4cd4: r1 = <TextEditingValue>
    //     0x6e4cd4: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6e4cd8: r0 = TextEditingController()
    //     0x6e4cd8: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6e4cdc: stur            x0, [fp, #-0x10]
    // 0x6e4ce0: r16 = "1"
    //     0x6e4ce0: add             x16, PP, #0x27, lsl #12  ; [pp+0x274d8] "1"
    //     0x6e4ce4: ldr             x16, [x16, #0x4d8]
    // 0x6e4ce8: str             x16, [SP]
    // 0x6e4cec: mov             x1, x0
    // 0x6e4cf0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6e4cf0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6e4cf4: ldr             x4, [x4, #0xa20]
    // 0x6e4cf8: r0 = TextEditingController()
    //     0x6e4cf8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6e4cfc: ldur            x0, [fp, #-0x10]
    // 0x6e4d00: ldur            x2, [fp, #-0x20]
    // 0x6e4d04: StoreField: r2->field_1b = r0
    //     0x6e4d04: stur            w0, [x2, #0x1b]
    //     0x6e4d08: ldurb           w16, [x2, #-1]
    //     0x6e4d0c: ldurb           w17, [x0, #-1]
    //     0x6e4d10: and             x16, x17, x16, lsr #2
    //     0x6e4d14: tst             x16, HEAP, lsr #32
    //     0x6e4d18: b.eq            #0x6e4d20
    //     0x6e4d1c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e4d20: r1 = <TextEditingValue>
    //     0x6e4d20: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6e4d24: r0 = TextEditingController()
    //     0x6e4d24: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6e4d28: mov             x1, x0
    // 0x6e4d2c: stur            x0, [fp, #-0x10]
    // 0x6e4d30: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e4d30: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e4d34: r0 = TextEditingController()
    //     0x6e4d34: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6e4d38: ldur            x0, [fp, #-0x10]
    // 0x6e4d3c: ldur            x3, [fp, #-0x20]
    // 0x6e4d40: StoreField: r3->field_1f = r0
    //     0x6e4d40: stur            w0, [x3, #0x1f]
    //     0x6e4d44: ldurb           w16, [x3, #-1]
    //     0x6e4d48: ldurb           w17, [x0, #-1]
    //     0x6e4d4c: and             x16, x17, x16, lsr #2
    //     0x6e4d50: tst             x16, HEAP, lsr #32
    //     0x6e4d54: b.eq            #0x6e4d5c
    //     0x6e4d58: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e4d5c: StoreField: r3->field_23 = rNULL
    //     0x6e4d5c: stur            NULL, [x3, #0x23]
    // 0x6e4d60: mov             x2, x3
    // 0x6e4d64: r1 = Function '<anonymous closure>':.
    //     0x6e4d64: add             x1, PP, #0x27, lsl #12  ; [pp+0x274e0] AnonymousClosure: (0x6e4db4), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openCreateRoomSheet (0x6e4c28)
    //     0x6e4d68: ldr             x1, [x1, #0x4e0]
    // 0x6e4d6c: r0 = AllocateClosure()
    //     0x6e4d6c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4d70: stp             x0, NULL, [SP, #0x18]
    // 0x6e4d74: ldur            x16, [fp, #-0x18]
    // 0x6e4d78: r30 = true
    //     0x6e4d78: add             lr, NULL, #0x20  ; true
    // 0x6e4d7c: stp             lr, x16, [SP, #8]
    // 0x6e4d80: r16 = Instance_RoundedRectangleBorder
    //     0x6e4d80: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a30] Obj!RoundedRectangleBorder@a0f2a1
    //     0x6e4d84: ldr             x16, [x16, #0xa30]
    // 0x6e4d88: str             x16, [SP]
    // 0x6e4d8c: r4 = const [0x1, 0x4, 0x4, 0x2, isScrollControlled, 0x2, shape, 0x3, null]
    //     0x6e4d8c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a38] List(9) [0x1, 0x4, 0x4, 0x2, "isScrollControlled", 0x2, "shape", 0x3, Null]
    //     0x6e4d90: ldr             x4, [x4, #0xa38]
    // 0x6e4d94: r0 = showModalBottomSheet()
    //     0x6e4d94: bl              #0x6e0074  ; [package:flutter/src/material/bottom_sheet.dart] ::showModalBottomSheet
    // 0x6e4d98: mov             x1, x0
    // 0x6e4d9c: stur            x1, [fp, #-0x10]
    // 0x6e4da0: r0 = Await()
    //     0x6e4da0: bl              #0x3dd188  ; AwaitStub
    // 0x6e4da4: r0 = Null
    //     0x6e4da4: mov             x0, NULL
    // 0x6e4da8: r0 = ReturnAsyncNotFuture()
    //     0x6e4da8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e4dac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4dac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4db0: b               #0x6e4c4c
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6e4db4, size: 0x64
    // 0x6e4db4: EnterFrame
    //     0x6e4db4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4db8: mov             fp, SP
    // 0x6e4dbc: AllocStack(0x8)
    //     0x6e4dbc: sub             SP, SP, #8
    // 0x6e4dc0: SetupParameters([dynamic _ /* r0 */])
    //     0x6e4dc0: ldr             x0, [fp, #0x18]
    //     0x6e4dc4: ldur            w1, [x0, #0x17]
    //     0x6e4dc8: add             x1, x1, HEAP, lsl #32
    //     0x6e4dcc: stur            x1, [fp, #-8]
    // 0x6e4dd0: r1 = 1
    //     0x6e4dd0: mov             x1, #1
    // 0x6e4dd4: r0 = AllocateContext()
    //     0x6e4dd4: bl              #0x927010  ; AllocateContextStub
    // 0x6e4dd8: mov             x1, x0
    // 0x6e4ddc: ldur            x0, [fp, #-8]
    // 0x6e4de0: StoreField: r1->field_b = r0
    //     0x6e4de0: stur            w0, [x1, #0xb]
    // 0x6e4de4: ldr             x0, [fp, #0x10]
    // 0x6e4de8: StoreField: r1->field_f = r0
    //     0x6e4de8: stur            w0, [x1, #0xf]
    // 0x6e4dec: mov             x2, x1
    // 0x6e4df0: r1 = Function '<anonymous closure>':.
    //     0x6e4df0: add             x1, PP, #0x27, lsl #12  ; [pp+0x274e8] AnonymousClosure: (0x6e4e18), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openCreateRoomSheet (0x6e4c28)
    //     0x6e4df4: ldr             x1, [x1, #0x4e8]
    // 0x6e4df8: r0 = AllocateClosure()
    //     0x6e4df8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4dfc: stur            x0, [fp, #-8]
    // 0x6e4e00: r0 = StatefulBuilder()
    //     0x6e4e00: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6e4e04: ldur            x1, [fp, #-8]
    // 0x6e4e08: StoreField: r0->field_b = r1
    //     0x6e4e08: stur            w1, [x0, #0xb]
    // 0x6e4e0c: LeaveFrame
    //     0x6e4e0c: mov             SP, fp
    //     0x6e4e10: ldp             fp, lr, [SP], #0x10
    // 0x6e4e14: ret
    //     0x6e4e14: ret             
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6e4e18, size: 0x680
    // 0x6e4e18: EnterFrame
    //     0x6e4e18: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4e1c: mov             fp, SP
    // 0x6e4e20: AllocStack(0x68)
    //     0x6e4e20: sub             SP, SP, #0x68
    // 0x6e4e24: SetupParameters([dynamic _ /* r0 */])
    //     0x6e4e24: ldr             x0, [fp, #0x20]
    //     0x6e4e28: ldur            w1, [x0, #0x17]
    //     0x6e4e2c: add             x1, x1, HEAP, lsl #32
    //     0x6e4e30: stur            x1, [fp, #-8]
    // 0x6e4e34: CheckStackOverflow
    //     0x6e4e34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4e38: cmp             SP, x16
    //     0x6e4e3c: b.ls            #0x6e5484
    // 0x6e4e40: r1 = 2
    //     0x6e4e40: mov             x1, #2
    // 0x6e4e44: r0 = AllocateContext()
    //     0x6e4e44: bl              #0x927010  ; AllocateContextStub
    // 0x6e4e48: mov             x2, x0
    // 0x6e4e4c: ldur            x0, [fp, #-8]
    // 0x6e4e50: stur            x2, [fp, #-0x10]
    // 0x6e4e54: StoreField: r2->field_b = r0
    //     0x6e4e54: stur            w0, [x2, #0xb]
    // 0x6e4e58: ldr             x1, [fp, #0x18]
    // 0x6e4e5c: StoreField: r2->field_f = r1
    //     0x6e4e5c: stur            w1, [x2, #0xf]
    // 0x6e4e60: ldr             x1, [fp, #0x10]
    // 0x6e4e64: StoreField: r2->field_13 = r1
    //     0x6e4e64: stur            w1, [x2, #0x13]
    // 0x6e4e68: LoadField: r1 = r0->field_f
    //     0x6e4e68: ldur            w1, [x0, #0xf]
    // 0x6e4e6c: DecompressPointer r1
    //     0x6e4e6c: add             x1, x1, HEAP, lsl #32
    // 0x6e4e70: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e4e70: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e4e74: r0 = _of()
    //     0x6e4e74: bl              #0x485ba4  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x6e4e78: LoadField: r1 = r0->field_23
    //     0x6e4e78: ldur            w1, [x0, #0x23]
    // 0x6e4e7c: DecompressPointer r1
    //     0x6e4e7c: add             x1, x1, HEAP, lsl #32
    // 0x6e4e80: LoadField: d0 = r1->field_1f
    //     0x6e4e80: ldur            d0, [x1, #0x1f]
    // 0x6e4e84: stur            d0, [fp, #-0x48]
    // 0x6e4e88: r0 = EdgeInsets()
    //     0x6e4e88: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6e4e8c: d0 = 16.000000
    //     0x6e4e8c: fmov            d0, #16.00000000
    // 0x6e4e90: stur            x0, [fp, #-0x18]
    // 0x6e4e94: StoreField: r0->field_7 = d0
    //     0x6e4e94: stur            d0, [x0, #7]
    // 0x6e4e98: d1 = 20.000000
    //     0x6e4e98: fmov            d1, #20.00000000
    // 0x6e4e9c: StoreField: r0->field_f = d1
    //     0x6e4e9c: stur            d1, [x0, #0xf]
    // 0x6e4ea0: ArrayStore: r0[0] = d0  ; List_8
    //     0x6e4ea0: stur            d0, [x0, #0x17]
    // 0x6e4ea4: ldur            d0, [fp, #-0x48]
    // 0x6e4ea8: StoreField: r0->field_1f = d0
    //     0x6e4ea8: stur            d0, [x0, #0x1f]
    // 0x6e4eac: r1 = _ConstMap len:12
    //     0x6e4eac: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e4eb0: r2 = 600
    //     0x6e4eb0: mov             x2, #0x258
    // 0x6e4eb4: r0 = []()
    //     0x6e4eb4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e4eb8: stur            x0, [fp, #-0x20]
    // 0x6e4ebc: cmp             w0, NULL
    // 0x6e4ec0: b.eq            #0x6e548c
    // 0x6e4ec4: r0 = Radius()
    //     0x6e4ec4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e4ec8: d0 = 20.000000
    //     0x6e4ec8: fmov            d0, #20.00000000
    // 0x6e4ecc: stur            x0, [fp, #-0x28]
    // 0x6e4ed0: StoreField: r0->field_7 = d0
    //     0x6e4ed0: stur            d0, [x0, #7]
    // 0x6e4ed4: StoreField: r0->field_f = d0
    //     0x6e4ed4: stur            d0, [x0, #0xf]
    // 0x6e4ed8: r0 = BorderRadius()
    //     0x6e4ed8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e4edc: mov             x1, x0
    // 0x6e4ee0: ldur            x0, [fp, #-0x28]
    // 0x6e4ee4: stur            x1, [fp, #-0x30]
    // 0x6e4ee8: StoreField: r1->field_7 = r0
    //     0x6e4ee8: stur            w0, [x1, #7]
    // 0x6e4eec: StoreField: r1->field_b = r0
    //     0x6e4eec: stur            w0, [x1, #0xb]
    // 0x6e4ef0: StoreField: r1->field_f = r0
    //     0x6e4ef0: stur            w0, [x1, #0xf]
    // 0x6e4ef4: StoreField: r1->field_13 = r0
    //     0x6e4ef4: stur            w0, [x1, #0x13]
    // 0x6e4ef8: r0 = BoxDecoration()
    //     0x6e4ef8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e4efc: mov             x1, x0
    // 0x6e4f00: ldur            x0, [fp, #-0x20]
    // 0x6e4f04: stur            x1, [fp, #-0x28]
    // 0x6e4f08: StoreField: r1->field_7 = r0
    //     0x6e4f08: stur            w0, [x1, #7]
    // 0x6e4f0c: ldur            x0, [fp, #-0x30]
    // 0x6e4f10: StoreField: r1->field_13 = r0
    //     0x6e4f10: stur            w0, [x1, #0x13]
    // 0x6e4f14: r0 = Instance_BoxShape
    //     0x6e4f14: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e4f18: ldr             x0, [x0, #0x1c8]
    // 0x6e4f1c: StoreField: r1->field_23 = r0
    //     0x6e4f1c: stur            w0, [x1, #0x23]
    // 0x6e4f20: r0 = Container()
    //     0x6e4f20: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e4f24: stur            x0, [fp, #-0x20]
    // 0x6e4f28: r16 = 50.000000
    //     0x6e4f28: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6e4f2c: ldr             x16, [x16, #0xa48]
    // 0x6e4f30: r30 = 5.000000
    //     0x6e4f30: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a50] 5
    //     0x6e4f34: ldr             lr, [lr, #0xa50]
    // 0x6e4f38: stp             lr, x16, [SP, #8]
    // 0x6e4f3c: ldur            x16, [fp, #-0x28]
    // 0x6e4f40: str             x16, [SP]
    // 0x6e4f44: mov             x1, x0
    // 0x6e4f48: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6e4f48: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6e4f4c: ldr             x4, [x4, #0xa58]
    // 0x6e4f50: r0 = Container()
    //     0x6e4f50: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e4f54: r1 = <Widget>
    //     0x6e4f54: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e4f58: r2 = 28
    //     0x6e4f58: mov             x2, #0x1c
    // 0x6e4f5c: r0 = AllocateArray()
    //     0x6e4f5c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e4f60: mov             x2, x0
    // 0x6e4f64: ldur            x0, [fp, #-0x20]
    // 0x6e4f68: stur            x2, [fp, #-0x28]
    // 0x6e4f6c: StoreField: r2->field_f = r0
    //     0x6e4f6c: stur            w0, [x2, #0xf]
    // 0x6e4f70: r16 = Instance_SizedBox
    //     0x6e4f70: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e4f74: ldr             x16, [x16, #0x310]
    // 0x6e4f78: StoreField: r2->field_13 = r16
    //     0x6e4f78: stur            w16, [x2, #0x13]
    // 0x6e4f7c: r16 = Instance_Text
    //     0x6e4f7c: add             x16, PP, #0x27, lsl #12  ; [pp+0x274f0] Obj!Text@a1b9a1
    //     0x6e4f80: ldr             x16, [x16, #0x4f0]
    // 0x6e4f84: ArrayStore: r2[0] = r16  ; List_4
    //     0x6e4f84: stur            w16, [x2, #0x17]
    // 0x6e4f88: r16 = Instance_SizedBox
    //     0x6e4f88: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e4f8c: ldr             x16, [x16, #0x310]
    // 0x6e4f90: StoreField: r2->field_1b = r16
    //     0x6e4f90: stur            w16, [x2, #0x1b]
    // 0x6e4f94: ldur            x0, [fp, #-8]
    // 0x6e4f98: LoadField: r3 = r0->field_b
    //     0x6e4f98: ldur            w3, [x0, #0xb]
    // 0x6e4f9c: DecompressPointer r3
    //     0x6e4f9c: add             x3, x3, HEAP, lsl #32
    // 0x6e4fa0: stur            x3, [fp, #-0x20]
    // 0x6e4fa4: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x6e4fa4: ldur            w0, [x3, #0x17]
    // 0x6e4fa8: DecompressPointer r0
    //     0x6e4fa8: add             x0, x0, HEAP, lsl #32
    // 0x6e4fac: stur            x0, [fp, #-8]
    // 0x6e4fb0: r1 = <String>
    //     0x6e4fb0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e4fb4: r0 = TextFormField()
    //     0x6e4fb4: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e4fb8: r1 = Function '<anonymous closure>':.
    //     0x6e4fb8: add             x1, PP, #0x27, lsl #12  ; [pp+0x274f8] AnonymousClosure: (0x6e4ba8), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e4fbc: ldr             x1, [x1, #0x4f8]
    // 0x6e4fc0: r2 = Null
    //     0x6e4fc0: mov             x2, NULL
    // 0x6e4fc4: stur            x0, [fp, #-0x30]
    // 0x6e4fc8: r0 = AllocateClosure()
    //     0x6e4fc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4fcc: str             x0, [SP]
    // 0x6e4fd0: ldur            x1, [fp, #-0x30]
    // 0x6e4fd4: ldur            x2, [fp, #-8]
    // 0x6e4fd8: r3 = Instance_InputDecoration
    //     0x6e4fd8: add             x3, PP, #0x27, lsl #12  ; [pp+0x27438] Obj!InputDecoration@a0e1b1
    //     0x6e4fdc: ldr             x3, [x3, #0x438]
    // 0x6e4fe0: r4 = const [0, 0x4, 0x1, 0x3, validator, 0x3, null]
    //     0x6e4fe0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a88] List(7) [0, 0x4, 0x1, 0x3, "validator", 0x3, Null]
    //     0x6e4fe4: ldr             x4, [x4, #0xa88]
    // 0x6e4fe8: r0 = TextFormField()
    //     0x6e4fe8: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e4fec: ldur            x1, [fp, #-0x28]
    // 0x6e4ff0: ldur            x0, [fp, #-0x30]
    // 0x6e4ff4: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e4ff4: add             x25, x1, #0x1f
    //     0x6e4ff8: str             w0, [x25]
    //     0x6e4ffc: tbz             w0, #0, #0x6e5018
    //     0x6e5000: ldurb           w16, [x1, #-1]
    //     0x6e5004: ldurb           w17, [x0, #-1]
    //     0x6e5008: and             x16, x17, x16, lsr #2
    //     0x6e500c: tst             x16, HEAP, lsr #32
    //     0x6e5010: b.eq            #0x6e5018
    //     0x6e5014: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5018: ldur            x0, [fp, #-0x28]
    // 0x6e501c: r16 = Instance_SizedBox
    //     0x6e501c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e5020: ldr             x16, [x16, #0x318]
    // 0x6e5024: StoreField: r0->field_23 = r16
    //     0x6e5024: stur            w16, [x0, #0x23]
    // 0x6e5028: ldur            x2, [fp, #-0x20]
    // 0x6e502c: LoadField: r3 = r2->field_1b
    //     0x6e502c: ldur            w3, [x2, #0x1b]
    // 0x6e5030: DecompressPointer r3
    //     0x6e5030: add             x3, x3, HEAP, lsl #32
    // 0x6e5034: stur            x3, [fp, #-8]
    // 0x6e5038: r1 = <String>
    //     0x6e5038: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e503c: r0 = TextFormField()
    //     0x6e503c: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e5040: r1 = Function '<anonymous closure>':.
    //     0x6e5040: add             x1, PP, #0x27, lsl #12  ; [pp+0x27500] AnonymousClosure: (0x6e4b54), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e5044: ldr             x1, [x1, #0x500]
    // 0x6e5048: r2 = Null
    //     0x6e5048: mov             x2, NULL
    // 0x6e504c: stur            x0, [fp, #-0x30]
    // 0x6e5050: r0 = AllocateClosure()
    //     0x6e5050: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e5054: r16 = Instance_TextInputType
    //     0x6e5054: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6e5058: ldr             x16, [x16, #0x948]
    // 0x6e505c: stp             x0, x16, [SP]
    // 0x6e5060: ldur            x1, [fp, #-0x30]
    // 0x6e5064: ldur            x2, [fp, #-8]
    // 0x6e5068: r3 = Instance_InputDecoration
    //     0x6e5068: add             x3, PP, #0x27, lsl #12  ; [pp+0x27448] Obj!InputDecoration@a0e0c1
    //     0x6e506c: ldr             x3, [x3, #0x448]
    // 0x6e5070: r4 = const [0, 0x5, 0x2, 0x3, keyboardType, 0x3, validator, 0x4, null]
    //     0x6e5070: add             x4, PP, #0x18, lsl #12  ; [pp+0x18780] List(9) [0, 0x5, 0x2, 0x3, "keyboardType", 0x3, "validator", 0x4, Null]
    //     0x6e5074: ldr             x4, [x4, #0x780]
    // 0x6e5078: r0 = TextFormField()
    //     0x6e5078: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e507c: ldur            x1, [fp, #-0x28]
    // 0x6e5080: ldur            x0, [fp, #-0x30]
    // 0x6e5084: ArrayStore: r1[6] = r0  ; List_4
    //     0x6e5084: add             x25, x1, #0x27
    //     0x6e5088: str             w0, [x25]
    //     0x6e508c: tbz             w0, #0, #0x6e50a8
    //     0x6e5090: ldurb           w16, [x1, #-1]
    //     0x6e5094: ldurb           w17, [x0, #-1]
    //     0x6e5098: and             x16, x17, x16, lsr #2
    //     0x6e509c: tst             x16, HEAP, lsr #32
    //     0x6e50a0: b.eq            #0x6e50a8
    //     0x6e50a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e50a8: ldur            x0, [fp, #-0x28]
    // 0x6e50ac: r16 = Instance_SizedBox
    //     0x6e50ac: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e50b0: ldr             x16, [x16, #0x318]
    // 0x6e50b4: StoreField: r0->field_2b = r16
    //     0x6e50b4: stur            w16, [x0, #0x2b]
    // 0x6e50b8: ldur            x3, [fp, #-0x20]
    // 0x6e50bc: LoadField: r4 = r3->field_23
    //     0x6e50bc: ldur            w4, [x3, #0x23]
    // 0x6e50c0: DecompressPointer r4
    //     0x6e50c0: add             x4, x4, HEAP, lsl #32
    // 0x6e50c4: ldur            x2, [fp, #-0x10]
    // 0x6e50c8: stur            x4, [fp, #-8]
    // 0x6e50cc: r1 = Function '<anonymous closure>':.
    //     0x6e50cc: add             x1, PP, #0x27, lsl #12  ; [pp+0x27508] AnonymousClosure: (0x6e5bc4), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openCreateRoomSheet (0x6e4c28)
    //     0x6e50d0: ldr             x1, [x1, #0x508]
    // 0x6e50d4: r0 = AllocateClosure()
    //     0x6e50d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e50d8: r1 = Function '<anonymous closure>':.
    //     0x6e50d8: add             x1, PP, #0x27, lsl #12  ; [pp+0x27510] AnonymousClosure: (0x6e15e4), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openEditRoomSheet (0x6dfe10)
    //     0x6e50dc: ldr             x1, [x1, #0x510]
    // 0x6e50e0: r2 = Null
    //     0x6e50e0: mov             x2, NULL
    // 0x6e50e4: stur            x0, [fp, #-0x30]
    // 0x6e50e8: r0 = AllocateClosure()
    //     0x6e50e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e50ec: r1 = <String?>
    //     0x6e50ec: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6e50f0: stur            x0, [fp, #-0x38]
    // 0x6e50f4: r0 = DropdownButtonFormField()
    //     0x6e50f4: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6e50f8: stur            x0, [fp, #-0x40]
    // 0x6e50fc: ldur            x16, [fp, #-0x38]
    // 0x6e5100: str             x16, [SP]
    // 0x6e5104: mov             x1, x0
    // 0x6e5108: ldur            x3, [fp, #-8]
    // 0x6e510c: ldur            x6, [fp, #-0x30]
    // 0x6e5110: r2 = Instance_InputDecoration
    //     0x6e5110: add             x2, PP, #0x27, lsl #12  ; [pp+0x27460] Obj!InputDecoration@a0dd01
    //     0x6e5114: ldr             x2, [x2, #0x460]
    // 0x6e5118: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6e5118: add             x5, PP, #0x19, lsl #12  ; [pp+0x192a8] List<DropdownMenuItem<String?>>(4)
    //     0x6e511c: ldr             x5, [x5, #0x2a8]
    // 0x6e5120: r4 = const [0, 0x6, 0x1, 0x5, validator, 0x5, null]
    //     0x6e5120: add             x4, PP, #0x14, lsl #12  ; [pp+0x14908] List(7) [0, 0x6, 0x1, 0x5, "validator", 0x5, Null]
    //     0x6e5124: ldr             x4, [x4, #0x908]
    // 0x6e5128: r0 = DropdownButtonFormField()
    //     0x6e5128: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6e512c: ldur            x1, [fp, #-0x28]
    // 0x6e5130: ldur            x0, [fp, #-0x40]
    // 0x6e5134: ArrayStore: r1[8] = r0  ; List_4
    //     0x6e5134: add             x25, x1, #0x2f
    //     0x6e5138: str             w0, [x25]
    //     0x6e513c: tbz             w0, #0, #0x6e5158
    //     0x6e5140: ldurb           w16, [x1, #-1]
    //     0x6e5144: ldurb           w17, [x0, #-1]
    //     0x6e5148: and             x16, x17, x16, lsr #2
    //     0x6e514c: tst             x16, HEAP, lsr #32
    //     0x6e5150: b.eq            #0x6e5158
    //     0x6e5154: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5158: ldur            x0, [fp, #-0x28]
    // 0x6e515c: r16 = Instance_SizedBox
    //     0x6e515c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e5160: ldr             x16, [x16, #0x318]
    // 0x6e5164: StoreField: r0->field_33 = r16
    //     0x6e5164: stur            w16, [x0, #0x33]
    // 0x6e5168: ldur            x2, [fp, #-0x20]
    // 0x6e516c: LoadField: r3 = r2->field_1f
    //     0x6e516c: ldur            w3, [x2, #0x1f]
    // 0x6e5170: DecompressPointer r3
    //     0x6e5170: add             x3, x3, HEAP, lsl #32
    // 0x6e5174: stur            x3, [fp, #-8]
    // 0x6e5178: r1 = <String>
    //     0x6e5178: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e517c: r0 = TextFormField()
    //     0x6e517c: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e5180: stur            x0, [fp, #-0x30]
    // 0x6e5184: r16 = 4
    //     0x6e5184: mov             x16, #4
    // 0x6e5188: str             x16, [SP]
    // 0x6e518c: mov             x1, x0
    // 0x6e5190: ldur            x2, [fp, #-8]
    // 0x6e5194: r3 = Instance_InputDecoration
    //     0x6e5194: add             x3, PP, #0x27, lsl #12  ; [pp+0x27468] Obj!InputDecoration@a0dc11
    //     0x6e5198: ldr             x3, [x3, #0x468]
    // 0x6e519c: r4 = const [0, 0x4, 0x1, 0x3, maxLines, 0x3, null]
    //     0x6e519c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13ad0] List(7) [0, 0x4, 0x1, 0x3, "maxLines", 0x3, Null]
    //     0x6e51a0: ldr             x4, [x4, #0xad0]
    // 0x6e51a4: r0 = TextFormField()
    //     0x6e51a4: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e51a8: ldur            x1, [fp, #-0x28]
    // 0x6e51ac: ldur            x0, [fp, #-0x30]
    // 0x6e51b0: ArrayStore: r1[10] = r0  ; List_4
    //     0x6e51b0: add             x25, x1, #0x37
    //     0x6e51b4: str             w0, [x25]
    //     0x6e51b8: tbz             w0, #0, #0x6e51d4
    //     0x6e51bc: ldurb           w16, [x1, #-1]
    //     0x6e51c0: ldurb           w17, [x0, #-1]
    //     0x6e51c4: and             x16, x17, x16, lsr #2
    //     0x6e51c8: tst             x16, HEAP, lsr #32
    //     0x6e51cc: b.eq            #0x6e51d4
    //     0x6e51d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e51d4: ldur            x0, [fp, #-0x28]
    // 0x6e51d8: r16 = Instance_SizedBox
    //     0x6e51d8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e51dc: ldr             x16, [x16, #0x310]
    // 0x6e51e0: StoreField: r0->field_3b = r16
    //     0x6e51e0: stur            w16, [x0, #0x3b]
    // 0x6e51e4: ldur            x3, [fp, #-0x20]
    // 0x6e51e8: LoadField: r1 = r3->field_f
    //     0x6e51e8: ldur            w1, [x3, #0xf]
    // 0x6e51ec: DecompressPointer r1
    //     0x6e51ec: add             x1, x1, HEAP, lsl #32
    // 0x6e51f0: LoadField: r2 = r1->field_b
    //     0x6e51f0: ldur            w2, [x1, #0xb]
    // 0x6e51f4: DecompressPointer r2
    //     0x6e51f4: add             x2, x2, HEAP, lsl #32
    // 0x6e51f8: cmp             w2, NULL
    // 0x6e51fc: b.eq            #0x6e5490
    // 0x6e5200: LoadField: r1 = r2->field_b
    //     0x6e5200: ldur            w1, [x2, #0xb]
    // 0x6e5204: DecompressPointer r1
    //     0x6e5204: add             x1, x1, HEAP, lsl #32
    // 0x6e5208: LoadField: r2 = r1->field_2b
    //     0x6e5208: ldur            w2, [x1, #0x2b]
    // 0x6e520c: DecompressPointer r2
    //     0x6e520c: add             x2, x2, HEAP, lsl #32
    // 0x6e5210: tbnz            w2, #4, #0x6e5220
    // 0x6e5214: mov             x0, x3
    // 0x6e5218: r1 = Null
    //     0x6e5218: mov             x1, NULL
    // 0x6e521c: b               #0x6e5238
    // 0x6e5220: ldur            x2, [fp, #-0x10]
    // 0x6e5224: r1 = Function '<anonymous closure>':.
    //     0x6e5224: add             x1, PP, #0x27, lsl #12  ; [pp+0x27518] AnonymousClosure: (0x6e5498), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] _RoomsManagementScreenState::_openCreateRoomSheet (0x6e4c28)
    //     0x6e5228: ldr             x1, [x1, #0x518]
    // 0x6e522c: r0 = AllocateClosure()
    //     0x6e522c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e5230: mov             x1, x0
    // 0x6e5234: ldur            x0, [fp, #-0x20]
    // 0x6e5238: stur            x1, [fp, #-8]
    // 0x6e523c: r0 = Radius()
    //     0x6e523c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e5240: d0 = 12.000000
    //     0x6e5240: fmov            d0, #12.00000000
    // 0x6e5244: stur            x0, [fp, #-0x10]
    // 0x6e5248: StoreField: r0->field_7 = d0
    //     0x6e5248: stur            d0, [x0, #7]
    // 0x6e524c: StoreField: r0->field_f = d0
    //     0x6e524c: stur            d0, [x0, #0xf]
    // 0x6e5250: r0 = BorderRadius()
    //     0x6e5250: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e5254: mov             x1, x0
    // 0x6e5258: ldur            x0, [fp, #-0x10]
    // 0x6e525c: stur            x1, [fp, #-0x30]
    // 0x6e5260: StoreField: r1->field_7 = r0
    //     0x6e5260: stur            w0, [x1, #7]
    // 0x6e5264: StoreField: r1->field_b = r0
    //     0x6e5264: stur            w0, [x1, #0xb]
    // 0x6e5268: StoreField: r1->field_f = r0
    //     0x6e5268: stur            w0, [x1, #0xf]
    // 0x6e526c: StoreField: r1->field_13 = r0
    //     0x6e526c: stur            w0, [x1, #0x13]
    // 0x6e5270: r0 = RoundedRectangleBorder()
    //     0x6e5270: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6e5274: mov             x1, x0
    // 0x6e5278: ldur            x0, [fp, #-0x30]
    // 0x6e527c: StoreField: r1->field_b = r0
    //     0x6e527c: stur            w0, [x1, #0xb]
    // 0x6e5280: r0 = Instance_BorderSide
    //     0x6e5280: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6e5284: ldr             x0, [x0, #0xcb8]
    // 0x6e5288: StoreField: r1->field_7 = r0
    //     0x6e5288: stur            w0, [x1, #7]
    // 0x6e528c: r16 = Instance_Color
    //     0x6e528c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e5290: ldr             x16, [x16, #0xb78]
    // 0x6e5294: r30 = Instance_Color
    //     0x6e5294: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e5298: stp             lr, x16, [SP, #0x10]
    // 0x6e529c: r16 = Instance_EdgeInsets
    //     0x6e529c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b38] Obj!EdgeInsets@a0c081
    //     0x6e52a0: ldr             x16, [x16, #0xb38]
    // 0x6e52a4: stp             x1, x16, [SP]
    // 0x6e52a8: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x6e52a8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x6e52ac: ldr             x4, [x4, #0xbb0]
    // 0x6e52b0: r0 = styleFrom()
    //     0x6e52b0: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6e52b4: mov             x1, x0
    // 0x6e52b8: ldur            x0, [fp, #-0x20]
    // 0x6e52bc: stur            x1, [fp, #-0x30]
    // 0x6e52c0: LoadField: r2 = r0->field_f
    //     0x6e52c0: ldur            w2, [x0, #0xf]
    // 0x6e52c4: DecompressPointer r2
    //     0x6e52c4: add             x2, x2, HEAP, lsl #32
    // 0x6e52c8: LoadField: r3 = r2->field_b
    //     0x6e52c8: ldur            w3, [x2, #0xb]
    // 0x6e52cc: DecompressPointer r3
    //     0x6e52cc: add             x3, x3, HEAP, lsl #32
    // 0x6e52d0: cmp             w3, NULL
    // 0x6e52d4: b.eq            #0x6e5494
    // 0x6e52d8: LoadField: r2 = r3->field_b
    //     0x6e52d8: ldur            w2, [x3, #0xb]
    // 0x6e52dc: DecompressPointer r2
    //     0x6e52dc: add             x2, x2, HEAP, lsl #32
    // 0x6e52e0: LoadField: r3 = r2->field_2b
    //     0x6e52e0: ldur            w3, [x2, #0x2b]
    // 0x6e52e4: DecompressPointer r3
    //     0x6e52e4: add             x3, x3, HEAP, lsl #32
    // 0x6e52e8: tbnz            w3, #4, #0x6e52f8
    // 0x6e52ec: r5 = "Kaydediliyor..."
    //     0x6e52ec: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b40] "Kaydediliyor..."
    //     0x6e52f0: ldr             x5, [x5, #0xb40]
    // 0x6e52f4: b               #0x6e5300
    // 0x6e52f8: r5 = "Kaydet"
    //     0x6e52f8: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x6e52fc: ldr             x5, [x5, #0xb50]
    // 0x6e5300: ldur            x4, [fp, #-0x18]
    // 0x6e5304: ldur            x3, [fp, #-0x28]
    // 0x6e5308: ldur            x2, [fp, #-8]
    // 0x6e530c: stur            x5, [fp, #-0x10]
    // 0x6e5310: r0 = Text()
    //     0x6e5310: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e5314: mov             x1, x0
    // 0x6e5318: ldur            x0, [fp, #-0x10]
    // 0x6e531c: stur            x1, [fp, #-0x38]
    // 0x6e5320: StoreField: r1->field_b = r0
    //     0x6e5320: stur            w0, [x1, #0xb]
    // 0x6e5324: r0 = ElevatedButton()
    //     0x6e5324: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6e5328: mov             x1, x0
    // 0x6e532c: ldur            x0, [fp, #-8]
    // 0x6e5330: stur            x1, [fp, #-0x10]
    // 0x6e5334: StoreField: r1->field_b = r0
    //     0x6e5334: stur            w0, [x1, #0xb]
    // 0x6e5338: ldur            x0, [fp, #-0x30]
    // 0x6e533c: StoreField: r1->field_1b = r0
    //     0x6e533c: stur            w0, [x1, #0x1b]
    // 0x6e5340: r0 = false
    //     0x6e5340: add             x0, NULL, #0x30  ; false
    // 0x6e5344: StoreField: r1->field_27 = r0
    //     0x6e5344: stur            w0, [x1, #0x27]
    // 0x6e5348: r0 = true
    //     0x6e5348: add             x0, NULL, #0x20  ; true
    // 0x6e534c: StoreField: r1->field_2f = r0
    //     0x6e534c: stur            w0, [x1, #0x2f]
    // 0x6e5350: ldur            x0, [fp, #-0x38]
    // 0x6e5354: StoreField: r1->field_37 = r0
    //     0x6e5354: stur            w0, [x1, #0x37]
    // 0x6e5358: r0 = SizedBox()
    //     0x6e5358: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6e535c: mov             x1, x0
    // 0x6e5360: r0 = inf
    //     0x6e5360: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e5364: ldr             x0, [x0, #0xb20]
    // 0x6e5368: StoreField: r1->field_f = r0
    //     0x6e5368: stur            w0, [x1, #0xf]
    // 0x6e536c: ldur            x0, [fp, #-0x10]
    // 0x6e5370: StoreField: r1->field_b = r0
    //     0x6e5370: stur            w0, [x1, #0xb]
    // 0x6e5374: mov             x0, x1
    // 0x6e5378: ldur            x1, [fp, #-0x28]
    // 0x6e537c: ArrayStore: r1[12] = r0  ; List_4
    //     0x6e537c: add             x25, x1, #0x3f
    //     0x6e5380: str             w0, [x25]
    //     0x6e5384: tbz             w0, #0, #0x6e53a0
    //     0x6e5388: ldurb           w16, [x1, #-1]
    //     0x6e538c: ldurb           w17, [x0, #-1]
    //     0x6e5390: and             x16, x17, x16, lsr #2
    //     0x6e5394: tst             x16, HEAP, lsr #32
    //     0x6e5398: b.eq            #0x6e53a0
    //     0x6e539c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e53a0: ldur            x0, [fp, #-0x28]
    // 0x6e53a4: r16 = Instance_SizedBox
    //     0x6e53a4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b58] Obj!SizedBox@a1faf1
    //     0x6e53a8: ldr             x16, [x16, #0xb58]
    // 0x6e53ac: StoreField: r0->field_43 = r16
    //     0x6e53ac: stur            w16, [x0, #0x43]
    // 0x6e53b0: r1 = <Widget>
    //     0x6e53b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e53b4: r0 = AllocateGrowableArray()
    //     0x6e53b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e53b8: mov             x1, x0
    // 0x6e53bc: ldur            x0, [fp, #-0x28]
    // 0x6e53c0: stur            x1, [fp, #-8]
    // 0x6e53c4: StoreField: r1->field_f = r0
    //     0x6e53c4: stur            w0, [x1, #0xf]
    // 0x6e53c8: r0 = 28
    //     0x6e53c8: mov             x0, #0x1c
    // 0x6e53cc: StoreField: r1->field_b = r0
    //     0x6e53cc: stur            w0, [x1, #0xb]
    // 0x6e53d0: r0 = Column()
    //     0x6e53d0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e53d4: mov             x1, x0
    // 0x6e53d8: r0 = Instance_Axis
    //     0x6e53d8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e53dc: stur            x1, [fp, #-0x10]
    // 0x6e53e0: StoreField: r1->field_f = r0
    //     0x6e53e0: stur            w0, [x1, #0xf]
    // 0x6e53e4: r0 = Instance_MainAxisAlignment
    //     0x6e53e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e53e8: ldr             x0, [x0, #0x230]
    // 0x6e53ec: StoreField: r1->field_13 = r0
    //     0x6e53ec: stur            w0, [x1, #0x13]
    // 0x6e53f0: r0 = Instance_MainAxisSize
    //     0x6e53f0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6e53f4: ldr             x0, [x0, #0xb60]
    // 0x6e53f8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e53f8: stur            w0, [x1, #0x17]
    // 0x6e53fc: r0 = Instance_CrossAxisAlignment
    //     0x6e53fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e5400: ldr             x0, [x0, #0x338]
    // 0x6e5404: StoreField: r1->field_1b = r0
    //     0x6e5404: stur            w0, [x1, #0x1b]
    // 0x6e5408: r0 = Instance_VerticalDirection
    //     0x6e5408: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e540c: ldr             x0, [x0, #0x340]
    // 0x6e5410: StoreField: r1->field_23 = r0
    //     0x6e5410: stur            w0, [x1, #0x23]
    // 0x6e5414: r0 = Instance_Clip
    //     0x6e5414: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e5418: ldr             x0, [x0, #0x348]
    // 0x6e541c: StoreField: r1->field_2b = r0
    //     0x6e541c: stur            w0, [x1, #0x2b]
    // 0x6e5420: StoreField: r1->field_2f = rZR
    //     0x6e5420: stur            xzr, [x1, #0x2f]
    // 0x6e5424: ldur            x0, [fp, #-8]
    // 0x6e5428: StoreField: r1->field_b = r0
    //     0x6e5428: stur            w0, [x1, #0xb]
    // 0x6e542c: ldur            x0, [fp, #-0x20]
    // 0x6e5430: LoadField: r2 = r0->field_13
    //     0x6e5430: ldur            w2, [x0, #0x13]
    // 0x6e5434: DecompressPointer r2
    //     0x6e5434: add             x2, x2, HEAP, lsl #32
    // 0x6e5438: stur            x2, [fp, #-8]
    // 0x6e543c: r0 = Form()
    //     0x6e543c: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6e5440: mov             x1, x0
    // 0x6e5444: ldur            x0, [fp, #-0x10]
    // 0x6e5448: stur            x1, [fp, #-0x20]
    // 0x6e544c: StoreField: r1->field_b = r0
    //     0x6e544c: stur            w0, [x1, #0xb]
    // 0x6e5450: r0 = Instance_AutovalidateMode
    //     0x6e5450: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6e5454: ldr             x0, [x0, #0xb68]
    // 0x6e5458: StoreField: r1->field_23 = r0
    //     0x6e5458: stur            w0, [x1, #0x23]
    // 0x6e545c: ldur            x0, [fp, #-8]
    // 0x6e5460: StoreField: r1->field_7 = r0
    //     0x6e5460: stur            w0, [x1, #7]
    // 0x6e5464: r0 = Padding()
    //     0x6e5464: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e5468: ldur            x1, [fp, #-0x18]
    // 0x6e546c: StoreField: r0->field_f = r1
    //     0x6e546c: stur            w1, [x0, #0xf]
    // 0x6e5470: ldur            x1, [fp, #-0x20]
    // 0x6e5474: StoreField: r0->field_b = r1
    //     0x6e5474: stur            w1, [x0, #0xb]
    // 0x6e5478: LeaveFrame
    //     0x6e5478: mov             SP, fp
    //     0x6e547c: ldp             fp, lr, [SP], #0x10
    // 0x6e5480: ret
    //     0x6e5480: ret             
    // 0x6e5484: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e5484: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e5488: b               #0x6e4e40
    // 0x6e548c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e548c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e5490: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e5490: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e5494: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e5494: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6e5498, size: 0x1f8
    // 0x6e5498: EnterFrame
    //     0x6e5498: stp             fp, lr, [SP, #-0x10]!
    //     0x6e549c: mov             fp, SP
    // 0x6e54a0: AllocStack(0x58)
    //     0x6e54a0: sub             SP, SP, #0x58
    // 0x6e54a4: SetupParameters(_RoomsManagementScreenState this /* r1 */)
    //     0x6e54a4: stur            NULL, [fp, #-8]
    //     0x6e54a8: mov             x0, #0
    //     0x6e54ac: add             x1, fp, w0, sxtw #2
    //     0x6e54b0: ldr             x1, [x1, #0x10]
    //     0x6e54b4: ldur            w2, [x1, #0x17]
    //     0x6e54b8: add             x2, x2, HEAP, lsl #32
    //     0x6e54bc: stur            x2, [fp, #-0x10]
    // 0x6e54c0: CheckStackOverflow
    //     0x6e54c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e54c4: cmp             SP, x16
    //     0x6e54c8: b.ls            #0x6e5680
    // 0x6e54cc: InitAsync() -> Future<void?>
    //     0x6e54cc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e54d0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e54d4: ldur            x0, [fp, #-0x10]
    // 0x6e54d8: LoadField: r1 = r0->field_b
    //     0x6e54d8: ldur            w1, [x0, #0xb]
    // 0x6e54dc: DecompressPointer r1
    //     0x6e54dc: add             x1, x1, HEAP, lsl #32
    // 0x6e54e0: LoadField: r2 = r1->field_b
    //     0x6e54e0: ldur            w2, [x1, #0xb]
    // 0x6e54e4: DecompressPointer r2
    //     0x6e54e4: add             x2, x2, HEAP, lsl #32
    // 0x6e54e8: stur            x2, [fp, #-0x18]
    // 0x6e54ec: LoadField: r1 = r2->field_13
    //     0x6e54ec: ldur            w1, [x2, #0x13]
    // 0x6e54f0: DecompressPointer r1
    //     0x6e54f0: add             x1, x1, HEAP, lsl #32
    // 0x6e54f4: r0 = currentState()
    //     0x6e54f4: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6e54f8: cmp             w0, NULL
    // 0x6e54fc: b.eq            #0x6e5688
    // 0x6e5500: mov             x1, x0
    // 0x6e5504: r0 = validate()
    //     0x6e5504: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x6e5508: tbz             w0, #4, #0x6e5514
    // 0x6e550c: r0 = Null
    //     0x6e550c: mov             x0, NULL
    // 0x6e5510: r0 = ReturnAsyncNotFuture()
    //     0x6e5510: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e5514: ldur            x0, [fp, #-0x18]
    // 0x6e5518: LoadField: r1 = r0->field_1b
    //     0x6e5518: ldur            w1, [x0, #0x1b]
    // 0x6e551c: DecompressPointer r1
    //     0x6e551c: add             x1, x1, HEAP, lsl #32
    // 0x6e5520: LoadField: r2 = r1->field_27
    //     0x6e5520: ldur            w2, [x1, #0x27]
    // 0x6e5524: DecompressPointer r2
    //     0x6e5524: add             x2, x2, HEAP, lsl #32
    // 0x6e5528: LoadField: r1 = r2->field_7
    //     0x6e5528: ldur            w1, [x2, #7]
    // 0x6e552c: DecompressPointer r1
    //     0x6e552c: add             x1, x1, HEAP, lsl #32
    // 0x6e5530: r0 = trim()
    //     0x6e5530: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e5534: mov             x1, x0
    // 0x6e5538: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e5538: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e553c: r0 = tryParse()
    //     0x6e553c: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6e5540: cmp             w0, NULL
    // 0x6e5544: b.ne            #0x6e5550
    // 0x6e5548: r2 = 1
    //     0x6e5548: mov             x2, #1
    // 0x6e554c: b               #0x6e5560
    // 0x6e5550: r1 = LoadInt32Instr(r0)
    //     0x6e5550: sbfx            x1, x0, #1, #0x1f
    //     0x6e5554: tbz             w0, #0, #0x6e555c
    //     0x6e5558: ldur            x1, [x0, #7]
    // 0x6e555c: mov             x2, x1
    // 0x6e5560: ldur            x0, [fp, #-0x18]
    // 0x6e5564: stur            x2, [fp, #-0x30]
    // 0x6e5568: LoadField: r1 = r0->field_f
    //     0x6e5568: ldur            w1, [x0, #0xf]
    // 0x6e556c: DecompressPointer r1
    //     0x6e556c: add             x1, x1, HEAP, lsl #32
    // 0x6e5570: LoadField: r3 = r1->field_b
    //     0x6e5570: ldur            w3, [x1, #0xb]
    // 0x6e5574: DecompressPointer r3
    //     0x6e5574: add             x3, x3, HEAP, lsl #32
    // 0x6e5578: cmp             w3, NULL
    // 0x6e557c: b.eq            #0x6e568c
    // 0x6e5580: LoadField: r4 = r3->field_b
    //     0x6e5580: ldur            w4, [x3, #0xb]
    // 0x6e5584: DecompressPointer r4
    //     0x6e5584: add             x4, x4, HEAP, lsl #32
    // 0x6e5588: stur            x4, [fp, #-0x28]
    // 0x6e558c: LoadField: r1 = r3->field_f
    //     0x6e558c: ldur            w1, [x3, #0xf]
    // 0x6e5590: DecompressPointer r1
    //     0x6e5590: add             x1, x1, HEAP, lsl #32
    // 0x6e5594: LoadField: r5 = r1->field_7
    //     0x6e5594: ldur            w5, [x1, #7]
    // 0x6e5598: DecompressPointer r5
    //     0x6e5598: add             x5, x5, HEAP, lsl #32
    // 0x6e559c: stur            x5, [fp, #-0x20]
    // 0x6e55a0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6e55a0: ldur            w1, [x0, #0x17]
    // 0x6e55a4: DecompressPointer r1
    //     0x6e55a4: add             x1, x1, HEAP, lsl #32
    // 0x6e55a8: LoadField: r3 = r1->field_27
    //     0x6e55a8: ldur            w3, [x1, #0x27]
    // 0x6e55ac: DecompressPointer r3
    //     0x6e55ac: add             x3, x3, HEAP, lsl #32
    // 0x6e55b0: LoadField: r1 = r3->field_7
    //     0x6e55b0: ldur            w1, [x3, #7]
    // 0x6e55b4: DecompressPointer r1
    //     0x6e55b4: add             x1, x1, HEAP, lsl #32
    // 0x6e55b8: r0 = trim()
    //     0x6e55b8: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e55bc: mov             x2, x0
    // 0x6e55c0: ldur            x0, [fp, #-0x18]
    // 0x6e55c4: stur            x2, [fp, #-0x48]
    // 0x6e55c8: LoadField: r3 = r0->field_23
    //     0x6e55c8: ldur            w3, [x0, #0x23]
    // 0x6e55cc: DecompressPointer r3
    //     0x6e55cc: add             x3, x3, HEAP, lsl #32
    // 0x6e55d0: stur            x3, [fp, #-0x40]
    // 0x6e55d4: LoadField: r4 = r0->field_1f
    //     0x6e55d4: ldur            w4, [x0, #0x1f]
    // 0x6e55d8: DecompressPointer r4
    //     0x6e55d8: add             x4, x4, HEAP, lsl #32
    // 0x6e55dc: stur            x4, [fp, #-0x38]
    // 0x6e55e0: LoadField: r0 = r4->field_27
    //     0x6e55e0: ldur            w0, [x4, #0x27]
    // 0x6e55e4: DecompressPointer r0
    //     0x6e55e4: add             x0, x0, HEAP, lsl #32
    // 0x6e55e8: LoadField: r1 = r0->field_7
    //     0x6e55e8: ldur            w1, [x0, #7]
    // 0x6e55ec: DecompressPointer r1
    //     0x6e55ec: add             x1, x1, HEAP, lsl #32
    // 0x6e55f0: r0 = trim()
    //     0x6e55f0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e55f4: LoadField: r1 = r0->field_7
    //     0x6e55f4: ldur            w1, [x0, #7]
    // 0x6e55f8: cbnz            w1, #0x6e5604
    // 0x6e55fc: r6 = Null
    //     0x6e55fc: mov             x6, NULL
    // 0x6e5600: b               #0x6e5624
    // 0x6e5604: ldur            x0, [fp, #-0x38]
    // 0x6e5608: LoadField: r1 = r0->field_27
    //     0x6e5608: ldur            w1, [x0, #0x27]
    // 0x6e560c: DecompressPointer r1
    //     0x6e560c: add             x1, x1, HEAP, lsl #32
    // 0x6e5610: LoadField: r0 = r1->field_7
    //     0x6e5610: ldur            w0, [x1, #7]
    // 0x6e5614: DecompressPointer r0
    //     0x6e5614: add             x0, x0, HEAP, lsl #32
    // 0x6e5618: mov             x1, x0
    // 0x6e561c: r0 = trim()
    //     0x6e561c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e5620: mov             x6, x0
    // 0x6e5624: ldur            x0, [fp, #-0x10]
    // 0x6e5628: ldur            x1, [fp, #-0x28]
    // 0x6e562c: ldur            x2, [fp, #-0x30]
    // 0x6e5630: ldur            x3, [fp, #-0x40]
    // 0x6e5634: ldur            x5, [fp, #-0x20]
    // 0x6e5638: ldur            x7, [fp, #-0x48]
    // 0x6e563c: r0 = createRoom()
    //     0x6e563c: bl              #0x6e5690  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createRoom
    // 0x6e5640: mov             x1, x0
    // 0x6e5644: stur            x1, [fp, #-0x18]
    // 0x6e5648: r0 = Await()
    //     0x6e5648: bl              #0x3dd188  ; AwaitStub
    // 0x6e564c: ldur            x0, [fp, #-0x10]
    // 0x6e5650: LoadField: r1 = r0->field_f
    //     0x6e5650: ldur            w1, [x0, #0xf]
    // 0x6e5654: DecompressPointer r1
    //     0x6e5654: add             x1, x1, HEAP, lsl #32
    // 0x6e5658: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6e5658: ldur            w0, [x1, #0x17]
    // 0x6e565c: DecompressPointer r0
    //     0x6e565c: add             x0, x0, HEAP, lsl #32
    // 0x6e5660: cmp             w0, NULL
    // 0x6e5664: b.eq            #0x6e5678
    // 0x6e5668: r16 = <Object?>
    //     0x6e5668: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6e566c: stp             x1, x16, [SP]
    // 0x6e5670: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6e5670: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6e5674: r0 = pop()
    //     0x6e5674: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6e5678: r0 = Null
    //     0x6e5678: mov             x0, NULL
    // 0x6e567c: r0 = ReturnAsyncNotFuture()
    //     0x6e567c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e5680: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e5680: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e5684: b               #0x6e54cc
    // 0x6e5688: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e5688: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e568c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e568c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e5bc4, size: 0x8c
    // 0x6e5bc4: EnterFrame
    //     0x6e5bc4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e5bc8: mov             fp, SP
    // 0x6e5bcc: AllocStack(0x20)
    //     0x6e5bcc: sub             SP, SP, #0x20
    // 0x6e5bd0: SetupParameters([dynamic _ /* r0 */])
    //     0x6e5bd0: ldr             x0, [fp, #0x18]
    //     0x6e5bd4: ldur            w1, [x0, #0x17]
    //     0x6e5bd8: add             x1, x1, HEAP, lsl #32
    //     0x6e5bdc: stur            x1, [fp, #-8]
    // 0x6e5be0: CheckStackOverflow
    //     0x6e5be0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e5be4: cmp             SP, x16
    //     0x6e5be8: b.ls            #0x6e5c48
    // 0x6e5bec: r1 = 1
    //     0x6e5bec: mov             x1, #1
    // 0x6e5bf0: r0 = AllocateContext()
    //     0x6e5bf0: bl              #0x927010  ; AllocateContextStub
    // 0x6e5bf4: mov             x1, x0
    // 0x6e5bf8: ldur            x0, [fp, #-8]
    // 0x6e5bfc: StoreField: r1->field_b = r0
    //     0x6e5bfc: stur            w0, [x1, #0xb]
    // 0x6e5c00: ldr             x2, [fp, #0x10]
    // 0x6e5c04: StoreField: r1->field_f = r2
    //     0x6e5c04: stur            w2, [x1, #0xf]
    // 0x6e5c08: LoadField: r3 = r0->field_13
    //     0x6e5c08: ldur            w3, [x0, #0x13]
    // 0x6e5c0c: DecompressPointer r3
    //     0x6e5c0c: add             x3, x3, HEAP, lsl #32
    // 0x6e5c10: mov             x2, x1
    // 0x6e5c14: stur            x3, [fp, #-0x10]
    // 0x6e5c18: r1 = Function '<anonymous closure>':.
    //     0x6e5c18: add             x1, PP, #0x27, lsl #12  ; [pp+0x27538] AnonymousClosure: (0x6e5c50), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x6e5c1c: ldr             x1, [x1, #0x538]
    // 0x6e5c20: r0 = AllocateClosure()
    //     0x6e5c20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e5c24: ldur            x16, [fp, #-0x10]
    // 0x6e5c28: stp             x0, x16, [SP]
    // 0x6e5c2c: ldur            x0, [fp, #-0x10]
    // 0x6e5c30: ClosureCall
    //     0x6e5c30: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e5c34: ldur            x2, [x0, #0x1f]
    //     0x6e5c38: blr             x2
    // 0x6e5c3c: LeaveFrame
    //     0x6e5c3c: mov             SP, fp
    //     0x6e5c40: ldp             fp, lr, [SP], #0x10
    // 0x6e5c44: ret
    //     0x6e5c44: ret             
    // 0x6e5c48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e5c48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e5c4c: b               #0x6e5bec
  }
}

// class id: 2930, size: 0x1c, field offset: 0xc
//   const constructor, 
class RoomCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7de9ac, size: 0xd78
    // 0x7de9ac: EnterFrame
    //     0x7de9ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7de9b0: mov             fp, SP
    // 0x7de9b4: AllocStack(0x80)
    //     0x7de9b4: sub             SP, SP, #0x80
    // 0x7de9b8: SetupParameters(RoomCard this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7de9b8: stur            x1, [fp, #-8]
    //     0x7de9bc: stur            x2, [fp, #-0x10]
    // 0x7de9c0: CheckStackOverflow
    //     0x7de9c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7de9c4: cmp             SP, x16
    //     0x7de9c8: b.ls            #0x7df6e4
    // 0x7de9cc: r1 = 2
    //     0x7de9cc: mov             x1, #2
    // 0x7de9d0: r0 = AllocateContext()
    //     0x7de9d0: bl              #0x927010  ; AllocateContextStub
    // 0x7de9d4: mov             x2, x0
    // 0x7de9d8: ldur            x0, [fp, #-8]
    // 0x7de9dc: stur            x2, [fp, #-0x18]
    // 0x7de9e0: StoreField: r2->field_f = r0
    //     0x7de9e0: stur            w0, [x2, #0xf]
    // 0x7de9e4: ldur            x1, [fp, #-0x10]
    // 0x7de9e8: StoreField: r2->field_13 = r1
    //     0x7de9e8: stur            w1, [x2, #0x13]
    // 0x7de9ec: mov             x1, x0
    // 0x7de9f0: r0 = _getRoomOccupants()
    //     0x7de9f0: bl              #0x7df724  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_getRoomOccupants
    // 0x7de9f4: stur            x0, [fp, #-0x20]
    // 0x7de9f8: LoadField: r1 = r0->field_b
    //     0x7de9f8: ldur            w1, [x0, #0xb]
    // 0x7de9fc: stur            x1, [fp, #-0x10]
    // 0x7dea00: r0 = Radius()
    //     0x7dea00: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dea04: d0 = 12.000000
    //     0x7dea04: fmov            d0, #12.00000000
    // 0x7dea08: stur            x0, [fp, #-0x28]
    // 0x7dea0c: StoreField: r0->field_7 = d0
    //     0x7dea0c: stur            d0, [x0, #7]
    // 0x7dea10: StoreField: r0->field_f = d0
    //     0x7dea10: stur            d0, [x0, #0xf]
    // 0x7dea14: r0 = BorderRadius()
    //     0x7dea14: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dea18: mov             x1, x0
    // 0x7dea1c: ldur            x0, [fp, #-0x28]
    // 0x7dea20: stur            x1, [fp, #-0x30]
    // 0x7dea24: StoreField: r1->field_7 = r0
    //     0x7dea24: stur            w0, [x1, #7]
    // 0x7dea28: StoreField: r1->field_b = r0
    //     0x7dea28: stur            w0, [x1, #0xb]
    // 0x7dea2c: StoreField: r1->field_f = r0
    //     0x7dea2c: stur            w0, [x1, #0xf]
    // 0x7dea30: StoreField: r1->field_13 = r0
    //     0x7dea30: stur            w0, [x1, #0x13]
    // 0x7dea34: r0 = BorderSide()
    //     0x7dea34: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7dea38: mov             x1, x0
    // 0x7dea3c: r0 = Instance_Color
    //     0x7dea3c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7dea40: ldr             x0, [x0, #0xb78]
    // 0x7dea44: stur            x1, [fp, #-0x28]
    // 0x7dea48: StoreField: r1->field_7 = r0
    //     0x7dea48: stur            w0, [x1, #7]
    // 0x7dea4c: d0 = 4.000000
    //     0x7dea4c: fmov            d0, #4.00000000
    // 0x7dea50: StoreField: r1->field_b = d0
    //     0x7dea50: stur            d0, [x1, #0xb]
    // 0x7dea54: r0 = Instance_BorderStyle
    //     0x7dea54: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7dea58: ldr             x0, [x0, #0x738]
    // 0x7dea5c: StoreField: r1->field_13 = r0
    //     0x7dea5c: stur            w0, [x1, #0x13]
    // 0x7dea60: d0 = -1.000000
    //     0x7dea60: fmov            d0, #-1.00000000
    // 0x7dea64: ArrayStore: r1[0] = d0  ; List_8
    //     0x7dea64: stur            d0, [x1, #0x17]
    // 0x7dea68: r0 = Border()
    //     0x7dea68: bl              #0x55c8fc  ; AllocateBorderStub -> Border (size=0x18)
    // 0x7dea6c: mov             x2, x0
    // 0x7dea70: r0 = Instance_BorderSide
    //     0x7dea70: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7dea74: ldr             x0, [x0, #0xcb8]
    // 0x7dea78: stur            x2, [fp, #-0x38]
    // 0x7dea7c: StoreField: r2->field_7 = r0
    //     0x7dea7c: stur            w0, [x2, #7]
    // 0x7dea80: StoreField: r2->field_b = r0
    //     0x7dea80: stur            w0, [x2, #0xb]
    // 0x7dea84: StoreField: r2->field_f = r0
    //     0x7dea84: stur            w0, [x2, #0xf]
    // 0x7dea88: ldur            x0, [fp, #-0x28]
    // 0x7dea8c: StoreField: r2->field_13 = r0
    //     0x7dea8c: stur            w0, [x2, #0x13]
    // 0x7dea90: r16 = 0.050000
    //     0x7dea90: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x7dea94: str             x16, [SP]
    // 0x7dea98: r1 = Instance_Color
    //     0x7dea98: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7dea9c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7dea9c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7deaa0: ldr             x4, [x4, #0x198]
    // 0x7deaa4: r0 = withValues()
    //     0x7deaa4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7deaa8: stur            x0, [fp, #-0x28]
    // 0x7deaac: r0 = BoxShadow()
    //     0x7deaac: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7deab0: stur            x0, [fp, #-0x40]
    // 0x7deab4: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7deab4: stur            xzr, [x0, #0x17]
    // 0x7deab8: r1 = Instance_BlurStyle
    //     0x7deab8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7deabc: ldr             x1, [x1, #0x9b0]
    // 0x7deac0: StoreField: r0->field_1f = r1
    //     0x7deac0: stur            w1, [x0, #0x1f]
    // 0x7deac4: ldur            x1, [fp, #-0x28]
    // 0x7deac8: StoreField: r0->field_7 = r1
    //     0x7deac8: stur            w1, [x0, #7]
    // 0x7deacc: r1 = Instance_Offset
    //     0x7deacc: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x7dead0: ldr             x1, [x1, #0x4e8]
    // 0x7dead4: StoreField: r0->field_b = r1
    //     0x7dead4: stur            w1, [x0, #0xb]
    // 0x7dead8: d0 = 8.000000
    //     0x7dead8: fmov            d0, #8.00000000
    // 0x7deadc: StoreField: r0->field_f = d0
    //     0x7deadc: stur            d0, [x0, #0xf]
    // 0x7deae0: r1 = Null
    //     0x7deae0: mov             x1, NULL
    // 0x7deae4: r2 = 2
    //     0x7deae4: mov             x2, #2
    // 0x7deae8: r0 = AllocateArray()
    //     0x7deae8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7deaec: mov             x2, x0
    // 0x7deaf0: ldur            x0, [fp, #-0x40]
    // 0x7deaf4: stur            x2, [fp, #-0x28]
    // 0x7deaf8: StoreField: r2->field_f = r0
    //     0x7deaf8: stur            w0, [x2, #0xf]
    // 0x7deafc: r1 = <BoxShadow>
    //     0x7deafc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7deb00: ldr             x1, [x1, #0x9c0]
    // 0x7deb04: r0 = AllocateGrowableArray()
    //     0x7deb04: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7deb08: mov             x1, x0
    // 0x7deb0c: ldur            x0, [fp, #-0x28]
    // 0x7deb10: stur            x1, [fp, #-0x40]
    // 0x7deb14: StoreField: r1->field_f = r0
    //     0x7deb14: stur            w0, [x1, #0xf]
    // 0x7deb18: r2 = 2
    //     0x7deb18: mov             x2, #2
    // 0x7deb1c: StoreField: r1->field_b = r2
    //     0x7deb1c: stur            w2, [x1, #0xb]
    // 0x7deb20: r0 = BoxDecoration()
    //     0x7deb20: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7deb24: mov             x3, x0
    // 0x7deb28: r0 = Instance_Color
    //     0x7deb28: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7deb2c: stur            x3, [fp, #-0x28]
    // 0x7deb30: StoreField: r3->field_7 = r0
    //     0x7deb30: stur            w0, [x3, #7]
    // 0x7deb34: ldur            x0, [fp, #-0x38]
    // 0x7deb38: StoreField: r3->field_f = r0
    //     0x7deb38: stur            w0, [x3, #0xf]
    // 0x7deb3c: ldur            x0, [fp, #-0x30]
    // 0x7deb40: StoreField: r3->field_13 = r0
    //     0x7deb40: stur            w0, [x3, #0x13]
    // 0x7deb44: ldur            x0, [fp, #-0x40]
    // 0x7deb48: ArrayStore: r3[0] = r0  ; List_4
    //     0x7deb48: stur            w0, [x3, #0x17]
    // 0x7deb4c: r0 = Instance_BoxShape
    //     0x7deb4c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7deb50: ldr             x0, [x0, #0x1c8]
    // 0x7deb54: StoreField: r3->field_23 = r0
    //     0x7deb54: stur            w0, [x3, #0x23]
    // 0x7deb58: r1 = Null
    //     0x7deb58: mov             x1, NULL
    // 0x7deb5c: r2 = 4
    //     0x7deb5c: mov             x2, #4
    // 0x7deb60: r0 = AllocateArray()
    //     0x7deb60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7deb64: r16 = "Oda "
    //     0x7deb64: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb0] "Oda "
    //     0x7deb68: ldr             x16, [x16, #0xcb0]
    // 0x7deb6c: StoreField: r0->field_f = r16
    //     0x7deb6c: stur            w16, [x0, #0xf]
    // 0x7deb70: ldur            x1, [fp, #-8]
    // 0x7deb74: LoadField: r2 = r1->field_b
    //     0x7deb74: ldur            w2, [x1, #0xb]
    // 0x7deb78: DecompressPointer r2
    //     0x7deb78: add             x2, x2, HEAP, lsl #32
    // 0x7deb7c: stur            x2, [fp, #-0x30]
    // 0x7deb80: LoadField: r1 = r2->field_f
    //     0x7deb80: ldur            w1, [x2, #0xf]
    // 0x7deb84: DecompressPointer r1
    //     0x7deb84: add             x1, x1, HEAP, lsl #32
    // 0x7deb88: StoreField: r0->field_13 = r1
    //     0x7deb88: stur            w1, [x0, #0x13]
    // 0x7deb8c: str             x0, [SP]
    // 0x7deb90: r0 = _interpolate()
    //     0x7deb90: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7deb94: stur            x0, [fp, #-8]
    // 0x7deb98: r0 = Text()
    //     0x7deb98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7deb9c: mov             x3, x0
    // 0x7deba0: ldur            x0, [fp, #-8]
    // 0x7deba4: stur            x3, [fp, #-0x38]
    // 0x7deba8: StoreField: r3->field_b = r0
    //     0x7deba8: stur            w0, [x3, #0xb]
    // 0x7debac: r0 = Instance_TextStyle
    //     0x7debac: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x7debb0: ldr             x0, [x0, #0xa70]
    // 0x7debb4: StoreField: r3->field_13 = r0
    //     0x7debb4: stur            w0, [x3, #0x13]
    // 0x7debb8: ldur            x4, [fp, #-0x30]
    // 0x7debbc: LoadField: r5 = r4->field_13
    //     0x7debbc: ldur            x5, [x4, #0x13]
    // 0x7debc0: stur            x5, [fp, #-0x48]
    // 0x7debc4: r0 = BoxInt64Instr(r5)
    //     0x7debc4: sbfiz           x0, x5, #1, #0x1f
    //     0x7debc8: cmp             x5, x0, asr #1
    //     0x7debcc: b.eq            #0x7debd8
    //     0x7debd0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7debd4: stur            x5, [x0, #7]
    // 0x7debd8: r1 = Null
    //     0x7debd8: mov             x1, NULL
    // 0x7debdc: r2 = 6
    //     0x7debdc: mov             x2, #6
    // 0x7debe0: stur            x0, [fp, #-8]
    // 0x7debe4: r0 = AllocateArray()
    //     0x7debe4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7debe8: mov             x3, x0
    // 0x7debec: ldur            x0, [fp, #-8]
    // 0x7debf0: stur            x3, [fp, #-0x50]
    // 0x7debf4: StoreField: r3->field_f = r0
    //     0x7debf4: stur            w0, [x3, #0xf]
    // 0x7debf8: r16 = " kişilik"
    //     0x7debf8: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0f0] " kişilik"
    //     0x7debfc: ldr             x16, [x16, #0xf0]
    // 0x7dec00: StoreField: r3->field_13 = r16
    //     0x7dec00: stur            w16, [x3, #0x13]
    // 0x7dec04: ldur            x4, [fp, #-0x30]
    // 0x7dec08: LoadField: r5 = r4->field_1b
    //     0x7dec08: ldur            w5, [x4, #0x1b]
    // 0x7dec0c: DecompressPointer r5
    //     0x7dec0c: add             x5, x5, HEAP, lsl #32
    // 0x7dec10: stur            x5, [fp, #-0x40]
    // 0x7dec14: cmp             w5, NULL
    // 0x7dec18: b.eq            #0x7dec48
    // 0x7dec1c: r1 = Null
    //     0x7dec1c: mov             x1, NULL
    // 0x7dec20: r2 = 4
    //     0x7dec20: mov             x2, #4
    // 0x7dec24: r0 = AllocateArray()
    //     0x7dec24: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dec28: r16 = " • "
    //     0x7dec28: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7dec2c: ldr             x16, [x16, #0x9d8]
    // 0x7dec30: StoreField: r0->field_f = r16
    //     0x7dec30: stur            w16, [x0, #0xf]
    // 0x7dec34: ldur            x1, [fp, #-0x40]
    // 0x7dec38: StoreField: r0->field_13 = r1
    //     0x7dec38: stur            w1, [x0, #0x13]
    // 0x7dec3c: str             x0, [SP]
    // 0x7dec40: r0 = _interpolate()
    //     0x7dec40: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dec44: b               #0x7dec4c
    // 0x7dec48: r0 = ""
    //     0x7dec48: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7dec4c: ldur            x3, [fp, #-0x38]
    // 0x7dec50: ldur            x2, [fp, #-0x30]
    // 0x7dec54: ldur            x1, [fp, #-0x50]
    // 0x7dec58: ArrayStore: r1[2] = r0  ; List_4
    //     0x7dec58: add             x25, x1, #0x17
    //     0x7dec5c: str             w0, [x25]
    //     0x7dec60: tbz             w0, #0, #0x7dec7c
    //     0x7dec64: ldurb           w16, [x1, #-1]
    //     0x7dec68: ldurb           w17, [x0, #-1]
    //     0x7dec6c: and             x16, x17, x16, lsr #2
    //     0x7dec70: tst             x16, HEAP, lsr #32
    //     0x7dec74: b.eq            #0x7dec7c
    //     0x7dec78: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7dec7c: ldur            x16, [fp, #-0x50]
    // 0x7dec80: str             x16, [SP]
    // 0x7dec84: r0 = _interpolate()
    //     0x7dec84: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dec88: r1 = _ConstMap len:12
    //     0x7dec88: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dec8c: r2 = 1200
    //     0x7dec8c: mov             x2, #0x4b0
    // 0x7dec90: stur            x0, [fp, #-0x40]
    // 0x7dec94: r0 = []()
    //     0x7dec94: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dec98: stur            x0, [fp, #-0x50]
    // 0x7dec9c: cmp             w0, NULL
    // 0x7deca0: b.eq            #0x7df6ec
    // 0x7deca4: r0 = TextStyle()
    //     0x7deca4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7deca8: mov             x1, x0
    // 0x7decac: r0 = true
    //     0x7decac: add             x0, NULL, #0x20  ; true
    // 0x7decb0: stur            x1, [fp, #-0x58]
    // 0x7decb4: StoreField: r1->field_7 = r0
    //     0x7decb4: stur            w0, [x1, #7]
    // 0x7decb8: ldur            x2, [fp, #-0x50]
    // 0x7decbc: StoreField: r1->field_b = r2
    //     0x7decbc: stur            w2, [x1, #0xb]
    // 0x7decc0: r2 = 14.000000
    //     0x7decc0: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7decc4: ldr             x2, [x2, #0x1c8]
    // 0x7decc8: StoreField: r1->field_1f = r2
    //     0x7decc8: stur            w2, [x1, #0x1f]
    // 0x7deccc: r0 = Text()
    //     0x7deccc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7decd0: mov             x3, x0
    // 0x7decd4: ldur            x0, [fp, #-0x40]
    // 0x7decd8: stur            x3, [fp, #-0x50]
    // 0x7decdc: StoreField: r3->field_b = r0
    //     0x7decdc: stur            w0, [x3, #0xb]
    // 0x7dece0: ldur            x0, [fp, #-0x58]
    // 0x7dece4: StoreField: r3->field_13 = r0
    //     0x7dece4: stur            w0, [x3, #0x13]
    // 0x7dece8: r1 = Null
    //     0x7dece8: mov             x1, NULL
    // 0x7decec: r2 = 6
    //     0x7decec: mov             x2, #6
    // 0x7decf0: r0 = AllocateArray()
    //     0x7decf0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7decf4: mov             x2, x0
    // 0x7decf8: ldur            x0, [fp, #-0x38]
    // 0x7decfc: stur            x2, [fp, #-0x40]
    // 0x7ded00: StoreField: r2->field_f = r0
    //     0x7ded00: stur            w0, [x2, #0xf]
    // 0x7ded04: r16 = Instance_SizedBox
    //     0x7ded04: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7ded08: ldr             x16, [x16, #0x338]
    // 0x7ded0c: StoreField: r2->field_13 = r16
    //     0x7ded0c: stur            w16, [x2, #0x13]
    // 0x7ded10: ldur            x0, [fp, #-0x50]
    // 0x7ded14: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ded14: stur            w0, [x2, #0x17]
    // 0x7ded18: r1 = <Widget>
    //     0x7ded18: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ded1c: r0 = AllocateGrowableArray()
    //     0x7ded1c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ded20: mov             x3, x0
    // 0x7ded24: ldur            x0, [fp, #-0x40]
    // 0x7ded28: stur            x3, [fp, #-0x50]
    // 0x7ded2c: StoreField: r3->field_f = r0
    //     0x7ded2c: stur            w0, [x3, #0xf]
    // 0x7ded30: r0 = 6
    //     0x7ded30: mov             x0, #6
    // 0x7ded34: StoreField: r3->field_b = r0
    //     0x7ded34: stur            w0, [x3, #0xb]
    // 0x7ded38: ldur            x1, [fp, #-0x30]
    // 0x7ded3c: LoadField: r4 = r1->field_1f
    //     0x7ded3c: ldur            w4, [x1, #0x1f]
    // 0x7ded40: DecompressPointer r4
    //     0x7ded40: add             x4, x4, HEAP, lsl #32
    // 0x7ded44: stur            x4, [fp, #-0x38]
    // 0x7ded48: cmp             w4, NULL
    // 0x7ded4c: b.eq            #0x7deed0
    // 0x7ded50: LoadField: r1 = r4->field_7
    //     0x7ded50: ldur            w1, [x4, #7]
    // 0x7ded54: cbz             w1, #0x7deed0
    // 0x7ded58: r1 = _ConstMap len:10
    //     0x7ded58: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x7ded5c: r2 = 100
    //     0x7ded5c: mov             x2, #0x64
    // 0x7ded60: r0 = []()
    //     0x7ded60: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ded64: stur            x0, [fp, #-0x30]
    // 0x7ded68: cmp             w0, NULL
    // 0x7ded6c: b.eq            #0x7df6f0
    // 0x7ded70: r0 = Radius()
    //     0x7ded70: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ded74: d0 = 8.000000
    //     0x7ded74: fmov            d0, #8.00000000
    // 0x7ded78: stur            x0, [fp, #-0x40]
    // 0x7ded7c: StoreField: r0->field_7 = d0
    //     0x7ded7c: stur            d0, [x0, #7]
    // 0x7ded80: StoreField: r0->field_f = d0
    //     0x7ded80: stur            d0, [x0, #0xf]
    // 0x7ded84: r0 = BorderRadius()
    //     0x7ded84: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ded88: mov             x1, x0
    // 0x7ded8c: ldur            x0, [fp, #-0x40]
    // 0x7ded90: stur            x1, [fp, #-0x58]
    // 0x7ded94: StoreField: r1->field_7 = r0
    //     0x7ded94: stur            w0, [x1, #7]
    // 0x7ded98: StoreField: r1->field_b = r0
    //     0x7ded98: stur            w0, [x1, #0xb]
    // 0x7ded9c: StoreField: r1->field_f = r0
    //     0x7ded9c: stur            w0, [x1, #0xf]
    // 0x7deda0: StoreField: r1->field_13 = r0
    //     0x7deda0: stur            w0, [x1, #0x13]
    // 0x7deda4: r0 = BoxDecoration()
    //     0x7deda4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7deda8: mov             x3, x0
    // 0x7dedac: ldur            x0, [fp, #-0x30]
    // 0x7dedb0: stur            x3, [fp, #-0x40]
    // 0x7dedb4: StoreField: r3->field_7 = r0
    //     0x7dedb4: stur            w0, [x3, #7]
    // 0x7dedb8: ldur            x0, [fp, #-0x58]
    // 0x7dedbc: StoreField: r3->field_13 = r0
    //     0x7dedbc: stur            w0, [x3, #0x13]
    // 0x7dedc0: r0 = Instance_BoxShape
    //     0x7dedc0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7dedc4: ldr             x0, [x0, #0x1c8]
    // 0x7dedc8: StoreField: r3->field_23 = r0
    //     0x7dedc8: stur            w0, [x3, #0x23]
    // 0x7dedcc: r1 = Null
    //     0x7dedcc: mov             x1, NULL
    // 0x7dedd0: r2 = 4
    //     0x7dedd0: mov             x2, #4
    // 0x7dedd4: r0 = AllocateArray()
    //     0x7dedd4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dedd8: r16 = "Not: "
    //     0x7dedd8: add             x16, PP, #0x2c, lsl #12  ; [pp+0x2c818] "Not: "
    //     0x7deddc: ldr             x16, [x16, #0x818]
    // 0x7dede0: StoreField: r0->field_f = r16
    //     0x7dede0: stur            w16, [x0, #0xf]
    // 0x7dede4: ldur            x1, [fp, #-0x38]
    // 0x7dede8: StoreField: r0->field_13 = r1
    //     0x7dede8: stur            w1, [x0, #0x13]
    // 0x7dedec: str             x0, [SP]
    // 0x7dedf0: r0 = _interpolate()
    //     0x7dedf0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dedf4: r1 = _ConstMap len:10
    //     0x7dedf4: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x7dedf8: r2 = 1400
    //     0x7dedf8: mov             x2, #0x578
    // 0x7dedfc: stur            x0, [fp, #-0x30]
    // 0x7dee00: r0 = []()
    //     0x7dee00: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dee04: stur            x0, [fp, #-0x38]
    // 0x7dee08: cmp             w0, NULL
    // 0x7dee0c: b.eq            #0x7df6f4
    // 0x7dee10: r0 = TextStyle()
    //     0x7dee10: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7dee14: mov             x1, x0
    // 0x7dee18: r0 = true
    //     0x7dee18: add             x0, NULL, #0x20  ; true
    // 0x7dee1c: stur            x1, [fp, #-0x58]
    // 0x7dee20: StoreField: r1->field_7 = r0
    //     0x7dee20: stur            w0, [x1, #7]
    // 0x7dee24: ldur            x2, [fp, #-0x38]
    // 0x7dee28: StoreField: r1->field_b = r2
    //     0x7dee28: stur            w2, [x1, #0xb]
    // 0x7dee2c: r2 = 13.000000
    //     0x7dee2c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7dee30: ldr             x2, [x2, #0xb00]
    // 0x7dee34: StoreField: r1->field_1f = r2
    //     0x7dee34: stur            w2, [x1, #0x1f]
    // 0x7dee38: r0 = Text()
    //     0x7dee38: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7dee3c: mov             x1, x0
    // 0x7dee40: ldur            x0, [fp, #-0x30]
    // 0x7dee44: stur            x1, [fp, #-0x38]
    // 0x7dee48: StoreField: r1->field_b = r0
    //     0x7dee48: stur            w0, [x1, #0xb]
    // 0x7dee4c: ldur            x0, [fp, #-0x58]
    // 0x7dee50: StoreField: r1->field_13 = r0
    //     0x7dee50: stur            w0, [x1, #0x13]
    // 0x7dee54: r0 = Container()
    //     0x7dee54: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7dee58: stur            x0, [fp, #-0x30]
    // 0x7dee5c: r16 = Instance_EdgeInsets
    //     0x7dee5c: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7dee60: ldr             x16, [x16, #0xde8]
    // 0x7dee64: ldur            lr, [fp, #-0x40]
    // 0x7dee68: stp             lr, x16, [SP, #8]
    // 0x7dee6c: ldur            x16, [fp, #-0x38]
    // 0x7dee70: str             x16, [SP]
    // 0x7dee74: mov             x1, x0
    // 0x7dee78: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7dee78: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7dee7c: ldr             x4, [x4, #0x1e8]
    // 0x7dee80: r0 = Container()
    //     0x7dee80: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7dee84: r1 = Null
    //     0x7dee84: mov             x1, NULL
    // 0x7dee88: r2 = 4
    //     0x7dee88: mov             x2, #4
    // 0x7dee8c: r0 = AllocateArray()
    //     0x7dee8c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dee90: stur            x0, [fp, #-0x38]
    // 0x7dee94: r16 = Instance_SizedBox
    //     0x7dee94: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7dee98: ldr             x16, [x16, #0x318]
    // 0x7dee9c: StoreField: r0->field_f = r16
    //     0x7dee9c: stur            w16, [x0, #0xf]
    // 0x7deea0: ldur            x1, [fp, #-0x30]
    // 0x7deea4: StoreField: r0->field_13 = r1
    //     0x7deea4: stur            w1, [x0, #0x13]
    // 0x7deea8: r1 = <Widget>
    //     0x7deea8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7deeac: r0 = AllocateGrowableArray()
    //     0x7deeac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7deeb0: mov             x1, x0
    // 0x7deeb4: ldur            x0, [fp, #-0x38]
    // 0x7deeb8: StoreField: r1->field_f = r0
    //     0x7deeb8: stur            w0, [x1, #0xf]
    // 0x7deebc: r0 = 4
    //     0x7deebc: mov             x0, #4
    // 0x7deec0: StoreField: r1->field_b = r0
    //     0x7deec0: stur            w0, [x1, #0xb]
    // 0x7deec4: mov             x2, x1
    // 0x7deec8: ldur            x1, [fp, #-0x50]
    // 0x7deecc: r0 = addAll()
    //     0x7deecc: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7deed0: ldur            x1, [fp, #-0x48]
    // 0x7deed4: ldur            x2, [fp, #-0x10]
    // 0x7deed8: ldur            x0, [fp, #-0x50]
    // 0x7deedc: r0 = Column()
    //     0x7deedc: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7deee0: mov             x2, x0
    // 0x7deee4: r0 = Instance_Axis
    //     0x7deee4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7deee8: stur            x2, [fp, #-0x30]
    // 0x7deeec: StoreField: r2->field_f = r0
    //     0x7deeec: stur            w0, [x2, #0xf]
    // 0x7deef0: r3 = Instance_MainAxisAlignment
    //     0x7deef0: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7deef4: ldr             x3, [x3, #0x230]
    // 0x7deef8: StoreField: r2->field_13 = r3
    //     0x7deef8: stur            w3, [x2, #0x13]
    // 0x7deefc: r4 = Instance_MainAxisSize
    //     0x7deefc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7def00: ldr             x4, [x4, #0x330]
    // 0x7def04: ArrayStore: r2[0] = r4  ; List_4
    //     0x7def04: stur            w4, [x2, #0x17]
    // 0x7def08: r5 = Instance_CrossAxisAlignment
    //     0x7def08: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7def0c: ldr             x5, [x5, #0x238]
    // 0x7def10: StoreField: r2->field_1b = r5
    //     0x7def10: stur            w5, [x2, #0x1b]
    // 0x7def14: r6 = Instance_VerticalDirection
    //     0x7def14: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7def18: ldr             x6, [x6, #0x340]
    // 0x7def1c: StoreField: r2->field_23 = r6
    //     0x7def1c: stur            w6, [x2, #0x23]
    // 0x7def20: r7 = Instance_Clip
    //     0x7def20: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7def24: ldr             x7, [x7, #0x348]
    // 0x7def28: StoreField: r2->field_2b = r7
    //     0x7def28: stur            w7, [x2, #0x2b]
    // 0x7def2c: StoreField: r2->field_2f = rZR
    //     0x7def2c: stur            xzr, [x2, #0x2f]
    // 0x7def30: ldur            x1, [fp, #-0x50]
    // 0x7def34: StoreField: r2->field_b = r1
    //     0x7def34: stur            w1, [x2, #0xb]
    // 0x7def38: r1 = <FlexParentData>
    //     0x7def38: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7def3c: ldr             x1, [x1, #0x340]
    // 0x7def40: r0 = Expanded()
    //     0x7def40: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7def44: mov             x3, x0
    // 0x7def48: r0 = 1
    //     0x7def48: mov             x0, #1
    // 0x7def4c: stur            x3, [fp, #-0x38]
    // 0x7def50: StoreField: r3->field_13 = r0
    //     0x7def50: stur            x0, [x3, #0x13]
    // 0x7def54: r0 = Instance_FlexFit
    //     0x7def54: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7def58: ldr             x0, [x0, #0x348]
    // 0x7def5c: StoreField: r3->field_1b = r0
    //     0x7def5c: stur            w0, [x3, #0x1b]
    // 0x7def60: ldur            x0, [fp, #-0x30]
    // 0x7def64: StoreField: r3->field_b = r0
    //     0x7def64: stur            w0, [x3, #0xb]
    // 0x7def68: ldur            x0, [fp, #-0x10]
    // 0x7def6c: r4 = LoadInt32Instr(r0)
    //     0x7def6c: sbfx            x4, x0, #1, #0x1f
    // 0x7def70: ldur            x5, [fp, #-0x48]
    // 0x7def74: stur            x4, [fp, #-0x60]
    // 0x7def78: cmp             x4, x5
    // 0x7def7c: b.lt            #0x7def9c
    // 0x7def80: r1 = _ConstMap len:10
    //     0x7def80: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7def84: r2 = 200
    //     0x7def84: mov             x2, #0xc8
    // 0x7def88: r0 = []()
    //     0x7def88: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7def8c: cmp             w0, NULL
    // 0x7def90: b.eq            #0x7df6f8
    // 0x7def94: mov             x2, x0
    // 0x7def98: b               #0x7defdc
    // 0x7def9c: mov             x0, x4
    // 0x7defa0: cmp             x0, #0
    // 0x7defa4: b.le            #0x7defc4
    // 0x7defa8: r1 = _ConstMap len:10
    //     0x7defa8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7defac: ldr             x1, [x1, #0xf30]
    // 0x7defb0: r2 = 200
    //     0x7defb0: mov             x2, #0xc8
    // 0x7defb4: r0 = []()
    //     0x7defb4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7defb8: cmp             w0, NULL
    // 0x7defbc: b.eq            #0x7df6fc
    // 0x7defc0: b               #0x7defd8
    // 0x7defc4: r1 = _ConstMap len:12
    //     0x7defc4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7defc8: r2 = 200
    //     0x7defc8: mov             x2, #0xc8
    // 0x7defcc: r0 = []()
    //     0x7defcc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7defd0: cmp             w0, NULL
    // 0x7defd4: b.eq            #0x7df700
    // 0x7defd8: mov             x2, x0
    // 0x7defdc: ldur            x1, [fp, #-0x48]
    // 0x7defe0: ldur            x0, [fp, #-0x60]
    // 0x7defe4: stur            x2, [fp, #-0x30]
    // 0x7defe8: r0 = Radius()
    //     0x7defe8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7defec: d0 = 20.000000
    //     0x7defec: fmov            d0, #20.00000000
    // 0x7deff0: stur            x0, [fp, #-0x40]
    // 0x7deff4: StoreField: r0->field_7 = d0
    //     0x7deff4: stur            d0, [x0, #7]
    // 0x7deff8: StoreField: r0->field_f = d0
    //     0x7deff8: stur            d0, [x0, #0xf]
    // 0x7deffc: r0 = BorderRadius()
    //     0x7deffc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7df000: mov             x1, x0
    // 0x7df004: ldur            x0, [fp, #-0x40]
    // 0x7df008: stur            x1, [fp, #-0x50]
    // 0x7df00c: StoreField: r1->field_7 = r0
    //     0x7df00c: stur            w0, [x1, #7]
    // 0x7df010: StoreField: r1->field_b = r0
    //     0x7df010: stur            w0, [x1, #0xb]
    // 0x7df014: StoreField: r1->field_f = r0
    //     0x7df014: stur            w0, [x1, #0xf]
    // 0x7df018: StoreField: r1->field_13 = r0
    //     0x7df018: stur            w0, [x1, #0x13]
    // 0x7df01c: r0 = BoxDecoration()
    //     0x7df01c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7df020: mov             x3, x0
    // 0x7df024: ldur            x0, [fp, #-0x30]
    // 0x7df028: stur            x3, [fp, #-0x40]
    // 0x7df02c: StoreField: r3->field_7 = r0
    //     0x7df02c: stur            w0, [x3, #7]
    // 0x7df030: ldur            x0, [fp, #-0x50]
    // 0x7df034: StoreField: r3->field_13 = r0
    //     0x7df034: stur            w0, [x3, #0x13]
    // 0x7df038: r0 = Instance_BoxShape
    //     0x7df038: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7df03c: ldr             x0, [x0, #0x1c8]
    // 0x7df040: StoreField: r3->field_23 = r0
    //     0x7df040: stur            w0, [x3, #0x23]
    // 0x7df044: ldur            x4, [fp, #-0x48]
    // 0x7df048: ldur            x0, [fp, #-0x60]
    // 0x7df04c: cmp             x0, x4
    // 0x7df050: b.lt            #0x7df070
    // 0x7df054: r1 = _ConstMap len:10
    //     0x7df054: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7df058: r2 = 1400
    //     0x7df058: mov             x2, #0x578
    // 0x7df05c: r0 = []()
    //     0x7df05c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df060: cmp             w0, NULL
    // 0x7df064: b.eq            #0x7df704
    // 0x7df068: mov             x4, x0
    // 0x7df06c: b               #0x7df0ac
    // 0x7df070: cmp             x0, #0
    // 0x7df074: b.le            #0x7df094
    // 0x7df078: r1 = _ConstMap len:10
    //     0x7df078: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7df07c: ldr             x1, [x1, #0xf30]
    // 0x7df080: r2 = 1400
    //     0x7df080: mov             x2, #0x578
    // 0x7df084: r0 = []()
    //     0x7df084: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df088: cmp             w0, NULL
    // 0x7df08c: b.eq            #0x7df708
    // 0x7df090: b               #0x7df0a8
    // 0x7df094: r1 = _ConstMap len:12
    //     0x7df094: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7df098: r2 = 1200
    //     0x7df098: mov             x2, #0x4b0
    // 0x7df09c: r0 = []()
    //     0x7df09c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df0a0: cmp             w0, NULL
    // 0x7df0a4: b.eq            #0x7df70c
    // 0x7df0a8: mov             x4, x0
    // 0x7df0ac: ldur            x1, [fp, #-0x48]
    // 0x7df0b0: ldur            x2, [fp, #-0x10]
    // 0x7df0b4: ldur            x0, [fp, #-0x60]
    // 0x7df0b8: ldur            x3, [fp, #-8]
    // 0x7df0bc: stur            x4, [fp, #-0x30]
    // 0x7df0c0: r0 = Icon()
    //     0x7df0c0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7df0c4: mov             x3, x0
    // 0x7df0c8: r0 = Instance_IconData
    //     0x7df0c8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ee8] Obj!IconData@a0a141
    //     0x7df0cc: ldr             x0, [x0, #0xee8]
    // 0x7df0d0: stur            x3, [fp, #-0x50]
    // 0x7df0d4: StoreField: r3->field_b = r0
    //     0x7df0d4: stur            w0, [x3, #0xb]
    // 0x7df0d8: r0 = 16.000000
    //     0x7df0d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7df0dc: ldr             x0, [x0, #0x358]
    // 0x7df0e0: StoreField: r3->field_f = r0
    //     0x7df0e0: stur            w0, [x3, #0xf]
    // 0x7df0e4: ldur            x0, [fp, #-0x30]
    // 0x7df0e8: StoreField: r3->field_23 = r0
    //     0x7df0e8: stur            w0, [x3, #0x23]
    // 0x7df0ec: r1 = Null
    //     0x7df0ec: mov             x1, NULL
    // 0x7df0f0: r2 = 6
    //     0x7df0f0: mov             x2, #6
    // 0x7df0f4: r0 = AllocateArray()
    //     0x7df0f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df0f8: mov             x1, x0
    // 0x7df0fc: ldur            x0, [fp, #-0x10]
    // 0x7df100: StoreField: r1->field_f = r0
    //     0x7df100: stur            w0, [x1, #0xf]
    // 0x7df104: r16 = "/"
    //     0x7df104: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7df108: StoreField: r1->field_13 = r16
    //     0x7df108: stur            w16, [x1, #0x13]
    // 0x7df10c: ldur            x0, [fp, #-8]
    // 0x7df110: ArrayStore: r1[0] = r0  ; List_4
    //     0x7df110: stur            w0, [x1, #0x17]
    // 0x7df114: str             x1, [SP]
    // 0x7df118: r0 = _interpolate()
    //     0x7df118: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7df11c: mov             x3, x0
    // 0x7df120: ldur            x1, [fp, #-0x48]
    // 0x7df124: ldur            x0, [fp, #-0x60]
    // 0x7df128: stur            x3, [fp, #-8]
    // 0x7df12c: cmp             x0, x1
    // 0x7df130: b.lt            #0x7df150
    // 0x7df134: r1 = _ConstMap len:10
    //     0x7df134: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7df138: r2 = 1400
    //     0x7df138: mov             x2, #0x578
    // 0x7df13c: r0 = []()
    //     0x7df13c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df140: cmp             w0, NULL
    // 0x7df144: b.eq            #0x7df710
    // 0x7df148: mov             x4, x0
    // 0x7df14c: b               #0x7df18c
    // 0x7df150: cmp             x0, #0
    // 0x7df154: b.le            #0x7df174
    // 0x7df158: r1 = _ConstMap len:10
    //     0x7df158: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7df15c: ldr             x1, [x1, #0xf30]
    // 0x7df160: r2 = 1400
    //     0x7df160: mov             x2, #0x578
    // 0x7df164: r0 = []()
    //     0x7df164: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df168: cmp             w0, NULL
    // 0x7df16c: b.eq            #0x7df714
    // 0x7df170: b               #0x7df188
    // 0x7df174: r1 = _ConstMap len:12
    //     0x7df174: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7df178: r2 = 1200
    //     0x7df178: mov             x2, #0x4b0
    // 0x7df17c: r0 = []()
    //     0x7df17c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df180: cmp             w0, NULL
    // 0x7df184: b.eq            #0x7df718
    // 0x7df188: mov             x4, x0
    // 0x7df18c: ldur            x3, [fp, #-0x20]
    // 0x7df190: ldur            x2, [fp, #-0x38]
    // 0x7df194: ldur            x1, [fp, #-0x50]
    // 0x7df198: ldur            x0, [fp, #-8]
    // 0x7df19c: stur            x4, [fp, #-0x10]
    // 0x7df1a0: r0 = TextStyle()
    //     0x7df1a0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7df1a4: mov             x1, x0
    // 0x7df1a8: r0 = true
    //     0x7df1a8: add             x0, NULL, #0x20  ; true
    // 0x7df1ac: stur            x1, [fp, #-0x30]
    // 0x7df1b0: StoreField: r1->field_7 = r0
    //     0x7df1b0: stur            w0, [x1, #7]
    // 0x7df1b4: ldur            x2, [fp, #-0x10]
    // 0x7df1b8: StoreField: r1->field_b = r2
    //     0x7df1b8: stur            w2, [x1, #0xb]
    // 0x7df1bc: r2 = 13.000000
    //     0x7df1bc: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7df1c0: ldr             x2, [x2, #0xb00]
    // 0x7df1c4: StoreField: r1->field_1f = r2
    //     0x7df1c4: stur            w2, [x1, #0x1f]
    // 0x7df1c8: r2 = Instance_FontWeight
    //     0x7df1c8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7df1cc: ldr             x2, [x2, #0x990]
    // 0x7df1d0: StoreField: r1->field_23 = r2
    //     0x7df1d0: stur            w2, [x1, #0x23]
    // 0x7df1d4: r0 = Text()
    //     0x7df1d4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7df1d8: mov             x3, x0
    // 0x7df1dc: ldur            x0, [fp, #-8]
    // 0x7df1e0: stur            x3, [fp, #-0x10]
    // 0x7df1e4: StoreField: r3->field_b = r0
    //     0x7df1e4: stur            w0, [x3, #0xb]
    // 0x7df1e8: ldur            x0, [fp, #-0x30]
    // 0x7df1ec: StoreField: r3->field_13 = r0
    //     0x7df1ec: stur            w0, [x3, #0x13]
    // 0x7df1f0: r1 = Null
    //     0x7df1f0: mov             x1, NULL
    // 0x7df1f4: r2 = 6
    //     0x7df1f4: mov             x2, #6
    // 0x7df1f8: r0 = AllocateArray()
    //     0x7df1f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df1fc: mov             x2, x0
    // 0x7df200: ldur            x0, [fp, #-0x50]
    // 0x7df204: stur            x2, [fp, #-8]
    // 0x7df208: StoreField: r2->field_f = r0
    //     0x7df208: stur            w0, [x2, #0xf]
    // 0x7df20c: r16 = Instance_SizedBox
    //     0x7df20c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7df210: ldr             x16, [x16, #0xf68]
    // 0x7df214: StoreField: r2->field_13 = r16
    //     0x7df214: stur            w16, [x2, #0x13]
    // 0x7df218: ldur            x0, [fp, #-0x10]
    // 0x7df21c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7df21c: stur            w0, [x2, #0x17]
    // 0x7df220: r1 = <Widget>
    //     0x7df220: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7df224: r0 = AllocateGrowableArray()
    //     0x7df224: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7df228: mov             x1, x0
    // 0x7df22c: ldur            x0, [fp, #-8]
    // 0x7df230: stur            x1, [fp, #-0x10]
    // 0x7df234: StoreField: r1->field_f = r0
    //     0x7df234: stur            w0, [x1, #0xf]
    // 0x7df238: r2 = 6
    //     0x7df238: mov             x2, #6
    // 0x7df23c: StoreField: r1->field_b = r2
    //     0x7df23c: stur            w2, [x1, #0xb]
    // 0x7df240: r0 = Row()
    //     0x7df240: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7df244: mov             x1, x0
    // 0x7df248: r0 = Instance_Axis
    //     0x7df248: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7df24c: stur            x1, [fp, #-8]
    // 0x7df250: StoreField: r1->field_f = r0
    //     0x7df250: stur            w0, [x1, #0xf]
    // 0x7df254: r2 = Instance_MainAxisAlignment
    //     0x7df254: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7df258: ldr             x2, [x2, #0x230]
    // 0x7df25c: StoreField: r1->field_13 = r2
    //     0x7df25c: stur            w2, [x1, #0x13]
    // 0x7df260: r3 = Instance_MainAxisSize
    //     0x7df260: add             x3, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7df264: ldr             x3, [x3, #0xb60]
    // 0x7df268: ArrayStore: r1[0] = r3  ; List_4
    //     0x7df268: stur            w3, [x1, #0x17]
    // 0x7df26c: r3 = Instance_CrossAxisAlignment
    //     0x7df26c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7df270: ldr             x3, [x3, #0x338]
    // 0x7df274: StoreField: r1->field_1b = r3
    //     0x7df274: stur            w3, [x1, #0x1b]
    // 0x7df278: r4 = Instance_VerticalDirection
    //     0x7df278: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7df27c: ldr             x4, [x4, #0x340]
    // 0x7df280: StoreField: r1->field_23 = r4
    //     0x7df280: stur            w4, [x1, #0x23]
    // 0x7df284: r5 = Instance_Clip
    //     0x7df284: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7df288: ldr             x5, [x5, #0x348]
    // 0x7df28c: StoreField: r1->field_2b = r5
    //     0x7df28c: stur            w5, [x1, #0x2b]
    // 0x7df290: StoreField: r1->field_2f = rZR
    //     0x7df290: stur            xzr, [x1, #0x2f]
    // 0x7df294: ldur            x6, [fp, #-0x10]
    // 0x7df298: StoreField: r1->field_b = r6
    //     0x7df298: stur            w6, [x1, #0xb]
    // 0x7df29c: r0 = Container()
    //     0x7df29c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7df2a0: stur            x0, [fp, #-0x10]
    // 0x7df2a4: r16 = Instance_EdgeInsets
    //     0x7df2a4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x7df2a8: ldr             x16, [x16, #0xf70]
    // 0x7df2ac: ldur            lr, [fp, #-0x40]
    // 0x7df2b0: stp             lr, x16, [SP, #8]
    // 0x7df2b4: ldur            x16, [fp, #-8]
    // 0x7df2b8: str             x16, [SP]
    // 0x7df2bc: mov             x1, x0
    // 0x7df2c0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7df2c0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7df2c4: ldr             x4, [x4, #0x1e8]
    // 0x7df2c8: r0 = Container()
    //     0x7df2c8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7df2cc: r1 = Function '<anonymous closure>':.
    //     0x7df2cc: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c820] AnonymousClosure: (0x7e05e0), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::build (0x7de9ac)
    //     0x7df2d0: ldr             x1, [x1, #0x820]
    // 0x7df2d4: r2 = Null
    //     0x7df2d4: mov             x2, NULL
    // 0x7df2d8: r0 = AllocateClosure()
    //     0x7df2d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df2dc: r1 = <String>
    //     0x7df2dc: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7df2e0: stur            x0, [fp, #-8]
    // 0x7df2e4: r0 = PopupMenuButton()
    //     0x7df2e4: bl              #0x6ebd70  ; AllocatePopupMenuButtonStub -> PopupMenuButton<X0> (size=0x84)
    // 0x7df2e8: mov             x3, x0
    // 0x7df2ec: ldur            x0, [fp, #-8]
    // 0x7df2f0: stur            x3, [fp, #-0x30]
    // 0x7df2f4: StoreField: r3->field_f = r0
    //     0x7df2f4: stur            w0, [x3, #0xf]
    // 0x7df2f8: ldur            x2, [fp, #-0x18]
    // 0x7df2fc: r1 = Function '<anonymous closure>':.
    //     0x7df2fc: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c828] AnonymousClosure: (0x7e04f8), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::build (0x7de9ac)
    //     0x7df300: ldr             x1, [x1, #0x828]
    // 0x7df304: r0 = AllocateClosure()
    //     0x7df304: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df308: mov             x1, x0
    // 0x7df30c: ldur            x0, [fp, #-0x30]
    // 0x7df310: StoreField: r0->field_1b = r1
    //     0x7df310: stur            w1, [x0, #0x1b]
    // 0x7df314: r1 = Instance_EdgeInsets
    //     0x7df314: add             x1, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7df318: ldr             x1, [x1, #0xde8]
    // 0x7df31c: StoreField: r0->field_33 = r1
    //     0x7df31c: stur            w1, [x0, #0x33]
    // 0x7df320: r1 = Instance_Offset
    //     0x7df320: ldr             x1, [PP, #0x2ca0]  ; [pp+0x2ca0] Obj!Offset@a26711
    // 0x7df324: StoreField: r0->field_47 = r1
    //     0x7df324: stur            w1, [x0, #0x47]
    // 0x7df328: r3 = true
    //     0x7df328: add             x3, NULL, #0x20  ; true
    // 0x7df32c: StoreField: r0->field_4b = r3
    //     0x7df32c: stur            w3, [x0, #0x4b]
    // 0x7df330: r4 = Instance_Clip
    //     0x7df330: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7df334: ldr             x4, [x4, #0x348]
    // 0x7df338: StoreField: r0->field_6b = r4
    //     0x7df338: stur            w4, [x0, #0x6b]
    // 0x7df33c: r1 = false
    //     0x7df33c: add             x1, NULL, #0x30  ; false
    // 0x7df340: StoreField: r0->field_6f = r1
    //     0x7df340: stur            w1, [x0, #0x6f]
    // 0x7df344: r1 = Null
    //     0x7df344: mov             x1, NULL
    // 0x7df348: r2 = 10
    //     0x7df348: mov             x2, #0xa
    // 0x7df34c: r0 = AllocateArray()
    //     0x7df34c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df350: mov             x2, x0
    // 0x7df354: ldur            x0, [fp, #-0x38]
    // 0x7df358: stur            x2, [fp, #-8]
    // 0x7df35c: StoreField: r2->field_f = r0
    //     0x7df35c: stur            w0, [x2, #0xf]
    // 0x7df360: r16 = Instance_SizedBox
    //     0x7df360: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7df364: ldr             x16, [x16, #0x368]
    // 0x7df368: StoreField: r2->field_13 = r16
    //     0x7df368: stur            w16, [x2, #0x13]
    // 0x7df36c: ldur            x0, [fp, #-0x10]
    // 0x7df370: ArrayStore: r2[0] = r0  ; List_4
    //     0x7df370: stur            w0, [x2, #0x17]
    // 0x7df374: r16 = Instance_SizedBox
    //     0x7df374: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7df378: ldr             x16, [x16, #0xf68]
    // 0x7df37c: StoreField: r2->field_1b = r16
    //     0x7df37c: stur            w16, [x2, #0x1b]
    // 0x7df380: ldur            x0, [fp, #-0x30]
    // 0x7df384: StoreField: r2->field_1f = r0
    //     0x7df384: stur            w0, [x2, #0x1f]
    // 0x7df388: r1 = <Widget>
    //     0x7df388: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7df38c: r0 = AllocateGrowableArray()
    //     0x7df38c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7df390: mov             x1, x0
    // 0x7df394: ldur            x0, [fp, #-8]
    // 0x7df398: stur            x1, [fp, #-0x10]
    // 0x7df39c: StoreField: r1->field_f = r0
    //     0x7df39c: stur            w0, [x1, #0xf]
    // 0x7df3a0: r0 = 10
    //     0x7df3a0: mov             x0, #0xa
    // 0x7df3a4: StoreField: r1->field_b = r0
    //     0x7df3a4: stur            w0, [x1, #0xb]
    // 0x7df3a8: r0 = Row()
    //     0x7df3a8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7df3ac: mov             x3, x0
    // 0x7df3b0: r0 = Instance_Axis
    //     0x7df3b0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7df3b4: stur            x3, [fp, #-8]
    // 0x7df3b8: StoreField: r3->field_f = r0
    //     0x7df3b8: stur            w0, [x3, #0xf]
    // 0x7df3bc: r4 = Instance_MainAxisAlignment
    //     0x7df3bc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7df3c0: ldr             x4, [x4, #0x230]
    // 0x7df3c4: StoreField: r3->field_13 = r4
    //     0x7df3c4: stur            w4, [x3, #0x13]
    // 0x7df3c8: r5 = Instance_MainAxisSize
    //     0x7df3c8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7df3cc: ldr             x5, [x5, #0x330]
    // 0x7df3d0: ArrayStore: r3[0] = r5  ; List_4
    //     0x7df3d0: stur            w5, [x3, #0x17]
    // 0x7df3d4: r6 = Instance_CrossAxisAlignment
    //     0x7df3d4: add             x6, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7df3d8: ldr             x6, [x6, #0x238]
    // 0x7df3dc: StoreField: r3->field_1b = r6
    //     0x7df3dc: stur            w6, [x3, #0x1b]
    // 0x7df3e0: r7 = Instance_VerticalDirection
    //     0x7df3e0: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7df3e4: ldr             x7, [x7, #0x340]
    // 0x7df3e8: StoreField: r3->field_23 = r7
    //     0x7df3e8: stur            w7, [x3, #0x23]
    // 0x7df3ec: r8 = Instance_Clip
    //     0x7df3ec: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7df3f0: ldr             x8, [x8, #0x348]
    // 0x7df3f4: StoreField: r3->field_2b = r8
    //     0x7df3f4: stur            w8, [x3, #0x2b]
    // 0x7df3f8: StoreField: r3->field_2f = rZR
    //     0x7df3f8: stur            xzr, [x3, #0x2f]
    // 0x7df3fc: ldur            x1, [fp, #-0x10]
    // 0x7df400: StoreField: r3->field_b = r1
    //     0x7df400: stur            w1, [x3, #0xb]
    // 0x7df404: r1 = Null
    //     0x7df404: mov             x1, NULL
    // 0x7df408: r2 = 2
    //     0x7df408: mov             x2, #2
    // 0x7df40c: r0 = AllocateArray()
    //     0x7df40c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df410: mov             x2, x0
    // 0x7df414: ldur            x0, [fp, #-8]
    // 0x7df418: stur            x2, [fp, #-0x10]
    // 0x7df41c: StoreField: r2->field_f = r0
    //     0x7df41c: stur            w0, [x2, #0xf]
    // 0x7df420: r1 = <Widget>
    //     0x7df420: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7df424: r0 = AllocateGrowableArray()
    //     0x7df424: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7df428: mov             x3, x0
    // 0x7df42c: ldur            x0, [fp, #-0x10]
    // 0x7df430: stur            x3, [fp, #-8]
    // 0x7df434: StoreField: r3->field_f = r0
    //     0x7df434: stur            w0, [x3, #0xf]
    // 0x7df438: r0 = 2
    //     0x7df438: mov             x0, #2
    // 0x7df43c: StoreField: r3->field_b = r0
    //     0x7df43c: stur            w0, [x3, #0xb]
    // 0x7df440: ldur            x0, [fp, #-0x20]
    // 0x7df444: LoadField: r1 = r0->field_b
    //     0x7df444: ldur            w1, [x0, #0xb]
    // 0x7df448: cbz             w1, #0x7df60c
    // 0x7df44c: r1 = _ConstMap len:12
    //     0x7df44c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7df450: r2 = 1000
    //     0x7df450: mov             x2, #0x3e8
    // 0x7df454: r0 = []()
    //     0x7df454: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df458: stur            x0, [fp, #-0x10]
    // 0x7df45c: cmp             w0, NULL
    // 0x7df460: b.eq            #0x7df71c
    // 0x7df464: r0 = Icon()
    //     0x7df464: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7df468: mov             x3, x0
    // 0x7df46c: r0 = Instance_IconData
    //     0x7df46c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fbd8] Obj!IconData@a0a281
    //     0x7df470: ldr             x0, [x0, #0xbd8]
    // 0x7df474: stur            x3, [fp, #-0x20]
    // 0x7df478: StoreField: r3->field_b = r0
    //     0x7df478: stur            w0, [x3, #0xb]
    // 0x7df47c: r0 = 14.000000
    //     0x7df47c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7df480: ldr             x0, [x0, #0x1c8]
    // 0x7df484: StoreField: r3->field_f = r0
    //     0x7df484: stur            w0, [x3, #0xf]
    // 0x7df488: ldur            x0, [fp, #-0x10]
    // 0x7df48c: StoreField: r3->field_23 = r0
    //     0x7df48c: stur            w0, [x3, #0x23]
    // 0x7df490: r1 = _ConstMap len:12
    //     0x7df490: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7df494: r2 = 1000
    //     0x7df494: mov             x2, #0x3e8
    // 0x7df498: r0 = []()
    //     0x7df498: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7df49c: stur            x0, [fp, #-0x10]
    // 0x7df4a0: cmp             w0, NULL
    // 0x7df4a4: b.eq            #0x7df720
    // 0x7df4a8: r0 = TextStyle()
    //     0x7df4a8: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7df4ac: mov             x1, x0
    // 0x7df4b0: r0 = true
    //     0x7df4b0: add             x0, NULL, #0x20  ; true
    // 0x7df4b4: stur            x1, [fp, #-0x30]
    // 0x7df4b8: StoreField: r1->field_7 = r0
    //     0x7df4b8: stur            w0, [x1, #7]
    // 0x7df4bc: ldur            x0, [fp, #-0x10]
    // 0x7df4c0: StoreField: r1->field_b = r0
    //     0x7df4c0: stur            w0, [x1, #0xb]
    // 0x7df4c4: r0 = 12.000000
    //     0x7df4c4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7df4c8: ldr             x0, [x0, #0xae0]
    // 0x7df4cc: StoreField: r1->field_1f = r0
    //     0x7df4cc: stur            w0, [x1, #0x1f]
    // 0x7df4d0: r0 = Instance_FontStyle
    //     0x7df4d0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fa0] Obj!FontStyle@a2cfd1
    //     0x7df4d4: ldr             x0, [x0, #0xfa0]
    // 0x7df4d8: StoreField: r1->field_27 = r0
    //     0x7df4d8: stur            w0, [x1, #0x27]
    // 0x7df4dc: r0 = Text()
    //     0x7df4dc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7df4e0: mov             x3, x0
    // 0x7df4e4: r0 = "Kişileri görmek için tıklayın"
    //     0x7df4e4: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fbe0] "Kişileri görmek için tıklayın"
    //     0x7df4e8: ldr             x0, [x0, #0xbe0]
    // 0x7df4ec: stur            x3, [fp, #-0x10]
    // 0x7df4f0: StoreField: r3->field_b = r0
    //     0x7df4f0: stur            w0, [x3, #0xb]
    // 0x7df4f4: ldur            x0, [fp, #-0x30]
    // 0x7df4f8: StoreField: r3->field_13 = r0
    //     0x7df4f8: stur            w0, [x3, #0x13]
    // 0x7df4fc: r1 = Null
    //     0x7df4fc: mov             x1, NULL
    // 0x7df500: r2 = 6
    //     0x7df500: mov             x2, #6
    // 0x7df504: r0 = AllocateArray()
    //     0x7df504: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df508: mov             x2, x0
    // 0x7df50c: ldur            x0, [fp, #-0x20]
    // 0x7df510: stur            x2, [fp, #-0x30]
    // 0x7df514: StoreField: r2->field_f = r0
    //     0x7df514: stur            w0, [x2, #0xf]
    // 0x7df518: r16 = Instance_SizedBox
    //     0x7df518: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7df51c: ldr             x16, [x16, #0xf68]
    // 0x7df520: StoreField: r2->field_13 = r16
    //     0x7df520: stur            w16, [x2, #0x13]
    // 0x7df524: ldur            x0, [fp, #-0x10]
    // 0x7df528: ArrayStore: r2[0] = r0  ; List_4
    //     0x7df528: stur            w0, [x2, #0x17]
    // 0x7df52c: r1 = <Widget>
    //     0x7df52c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7df530: r0 = AllocateGrowableArray()
    //     0x7df530: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7df534: mov             x1, x0
    // 0x7df538: ldur            x0, [fp, #-0x30]
    // 0x7df53c: stur            x1, [fp, #-0x10]
    // 0x7df540: StoreField: r1->field_f = r0
    //     0x7df540: stur            w0, [x1, #0xf]
    // 0x7df544: r0 = 6
    //     0x7df544: mov             x0, #6
    // 0x7df548: StoreField: r1->field_b = r0
    //     0x7df548: stur            w0, [x1, #0xb]
    // 0x7df54c: r0 = Row()
    //     0x7df54c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7df550: mov             x3, x0
    // 0x7df554: r0 = Instance_Axis
    //     0x7df554: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7df558: stur            x3, [fp, #-0x20]
    // 0x7df55c: StoreField: r3->field_f = r0
    //     0x7df55c: stur            w0, [x3, #0xf]
    // 0x7df560: r0 = Instance_MainAxisAlignment
    //     0x7df560: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7df564: ldr             x0, [x0, #0x230]
    // 0x7df568: StoreField: r3->field_13 = r0
    //     0x7df568: stur            w0, [x3, #0x13]
    // 0x7df56c: r4 = Instance_MainAxisSize
    //     0x7df56c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7df570: ldr             x4, [x4, #0x330]
    // 0x7df574: ArrayStore: r3[0] = r4  ; List_4
    //     0x7df574: stur            w4, [x3, #0x17]
    // 0x7df578: r1 = Instance_CrossAxisAlignment
    //     0x7df578: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7df57c: ldr             x1, [x1, #0x338]
    // 0x7df580: StoreField: r3->field_1b = r1
    //     0x7df580: stur            w1, [x3, #0x1b]
    // 0x7df584: r5 = Instance_VerticalDirection
    //     0x7df584: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7df588: ldr             x5, [x5, #0x340]
    // 0x7df58c: StoreField: r3->field_23 = r5
    //     0x7df58c: stur            w5, [x3, #0x23]
    // 0x7df590: r6 = Instance_Clip
    //     0x7df590: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7df594: ldr             x6, [x6, #0x348]
    // 0x7df598: StoreField: r3->field_2b = r6
    //     0x7df598: stur            w6, [x3, #0x2b]
    // 0x7df59c: StoreField: r3->field_2f = rZR
    //     0x7df59c: stur            xzr, [x3, #0x2f]
    // 0x7df5a0: ldur            x1, [fp, #-0x10]
    // 0x7df5a4: StoreField: r3->field_b = r1
    //     0x7df5a4: stur            w1, [x3, #0xb]
    // 0x7df5a8: r1 = Null
    //     0x7df5a8: mov             x1, NULL
    // 0x7df5ac: r2 = 8
    //     0x7df5ac: mov             x2, #8
    // 0x7df5b0: r0 = AllocateArray()
    //     0x7df5b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7df5b4: stur            x0, [fp, #-0x10]
    // 0x7df5b8: r16 = Instance_SizedBox
    //     0x7df5b8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7df5bc: ldr             x16, [x16, #0x220]
    // 0x7df5c0: StoreField: r0->field_f = r16
    //     0x7df5c0: stur            w16, [x0, #0xf]
    // 0x7df5c4: r16 = Instance_Divider
    //     0x7df5c4: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c450] Obj!Divider@a1f7d1
    //     0x7df5c8: ldr             x16, [x16, #0x450]
    // 0x7df5cc: StoreField: r0->field_13 = r16
    //     0x7df5cc: stur            w16, [x0, #0x13]
    // 0x7df5d0: r16 = Instance_SizedBox
    //     0x7df5d0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7df5d4: ldr             x16, [x16, #0x318]
    // 0x7df5d8: ArrayStore: r0[0] = r16  ; List_4
    //     0x7df5d8: stur            w16, [x0, #0x17]
    // 0x7df5dc: ldur            x1, [fp, #-0x20]
    // 0x7df5e0: StoreField: r0->field_1b = r1
    //     0x7df5e0: stur            w1, [x0, #0x1b]
    // 0x7df5e4: r1 = <Widget>
    //     0x7df5e4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7df5e8: r0 = AllocateGrowableArray()
    //     0x7df5e8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7df5ec: mov             x1, x0
    // 0x7df5f0: ldur            x0, [fp, #-0x10]
    // 0x7df5f4: StoreField: r1->field_f = r0
    //     0x7df5f4: stur            w0, [x1, #0xf]
    // 0x7df5f8: r0 = 8
    //     0x7df5f8: mov             x0, #8
    // 0x7df5fc: StoreField: r1->field_b = r0
    //     0x7df5fc: stur            w0, [x1, #0xb]
    // 0x7df600: mov             x2, x1
    // 0x7df604: ldur            x1, [fp, #-8]
    // 0x7df608: r0 = addAll()
    //     0x7df608: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7df60c: ldur            x0, [fp, #-8]
    // 0x7df610: r0 = Column()
    //     0x7df610: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7df614: mov             x1, x0
    // 0x7df618: r0 = Instance_Axis
    //     0x7df618: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7df61c: stur            x1, [fp, #-0x10]
    // 0x7df620: StoreField: r1->field_f = r0
    //     0x7df620: stur            w0, [x1, #0xf]
    // 0x7df624: r0 = Instance_MainAxisAlignment
    //     0x7df624: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7df628: ldr             x0, [x0, #0x230]
    // 0x7df62c: StoreField: r1->field_13 = r0
    //     0x7df62c: stur            w0, [x1, #0x13]
    // 0x7df630: r0 = Instance_MainAxisSize
    //     0x7df630: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7df634: ldr             x0, [x0, #0x330]
    // 0x7df638: ArrayStore: r1[0] = r0  ; List_4
    //     0x7df638: stur            w0, [x1, #0x17]
    // 0x7df63c: r0 = Instance_CrossAxisAlignment
    //     0x7df63c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7df640: ldr             x0, [x0, #0x238]
    // 0x7df644: StoreField: r1->field_1b = r0
    //     0x7df644: stur            w0, [x1, #0x1b]
    // 0x7df648: r0 = Instance_VerticalDirection
    //     0x7df648: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7df64c: ldr             x0, [x0, #0x340]
    // 0x7df650: StoreField: r1->field_23 = r0
    //     0x7df650: stur            w0, [x1, #0x23]
    // 0x7df654: r0 = Instance_Clip
    //     0x7df654: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7df658: ldr             x0, [x0, #0x348]
    // 0x7df65c: StoreField: r1->field_2b = r0
    //     0x7df65c: stur            w0, [x1, #0x2b]
    // 0x7df660: StoreField: r1->field_2f = rZR
    //     0x7df660: stur            xzr, [x1, #0x2f]
    // 0x7df664: ldur            x0, [fp, #-8]
    // 0x7df668: StoreField: r1->field_b = r0
    //     0x7df668: stur            w0, [x1, #0xb]
    // 0x7df66c: r0 = Container()
    //     0x7df66c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7df670: stur            x0, [fp, #-8]
    // 0x7df674: r16 = Instance_EdgeInsets
    //     0x7df674: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7df678: ldr             x16, [x16, #0xf18]
    // 0x7df67c: r30 = Instance_EdgeInsets
    //     0x7df67c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7df680: ldr             lr, [lr, #0x240]
    // 0x7df684: stp             lr, x16, [SP, #0x10]
    // 0x7df688: ldur            x16, [fp, #-0x28]
    // 0x7df68c: ldur            lr, [fp, #-0x10]
    // 0x7df690: stp             lr, x16, [SP]
    // 0x7df694: mov             x1, x0
    // 0x7df698: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x7df698: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x7df69c: ldr             x4, [x4, #0x628]
    // 0x7df6a0: r0 = Container()
    //     0x7df6a0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7df6a4: r0 = GestureDetector()
    //     0x7df6a4: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x7df6a8: ldur            x2, [fp, #-0x18]
    // 0x7df6ac: r1 = Function '<anonymous closure>':.
    //     0x7df6ac: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c830] AnonymousClosure: (0x7df88c), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::build (0x7de9ac)
    //     0x7df6b0: ldr             x1, [x1, #0x830]
    // 0x7df6b4: stur            x0, [fp, #-0x10]
    // 0x7df6b8: r0 = AllocateClosure()
    //     0x7df6b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df6bc: ldur            x16, [fp, #-8]
    // 0x7df6c0: stp             x16, x0, [SP]
    // 0x7df6c4: ldur            x1, [fp, #-0x10]
    // 0x7df6c8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7df6c8: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7df6cc: ldr             x4, [x4, #0xd50]
    // 0x7df6d0: r0 = GestureDetector()
    //     0x7df6d0: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7df6d4: ldur            x0, [fp, #-0x10]
    // 0x7df6d8: LeaveFrame
    //     0x7df6d8: mov             SP, fp
    //     0x7df6dc: ldp             fp, lr, [SP], #0x10
    // 0x7df6e0: ret
    //     0x7df6e0: ret             
    // 0x7df6e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7df6e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7df6e8: b               #0x7de9cc
    // 0x7df6ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df6ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df6f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df6f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df6f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df6f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df6f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df6f8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df6fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df6fc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df700: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df700: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df704: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df704: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df708: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df708: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df70c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df70c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df710: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df710: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df714: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df714: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df718: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df718: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df71c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df71c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7df720: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7df720: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _getRoomOccupants(/* No info */) {
    // ** addr: 0x7df724, size: 0xa0
    // 0x7df724: EnterFrame
    //     0x7df724: stp             fp, lr, [SP, #-0x10]!
    //     0x7df728: mov             fp, SP
    // 0x7df72c: AllocStack(0x8)
    //     0x7df72c: sub             SP, SP, #8
    // 0x7df730: SetupParameters(RoomCard this /* r1 => r1, fp-0x8 */)
    //     0x7df730: stur            x1, [fp, #-8]
    // 0x7df734: CheckStackOverflow
    //     0x7df734: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7df738: cmp             SP, x16
    //     0x7df73c: b.ls            #0x7df7bc
    // 0x7df740: r1 = 1
    //     0x7df740: mov             x1, #1
    // 0x7df744: r0 = AllocateContext()
    //     0x7df744: bl              #0x927010  ; AllocateContextStub
    // 0x7df748: mov             x1, x0
    // 0x7df74c: ldur            x0, [fp, #-8]
    // 0x7df750: StoreField: r1->field_f = r0
    //     0x7df750: stur            w0, [x1, #0xf]
    // 0x7df754: LoadField: r2 = r0->field_f
    //     0x7df754: ldur            w2, [x0, #0xf]
    // 0x7df758: DecompressPointer r2
    //     0x7df758: add             x2, x2, HEAP, lsl #32
    // 0x7df75c: LoadField: r0 = r2->field_33
    //     0x7df75c: ldur            w0, [x2, #0x33]
    // 0x7df760: DecompressPointer r0
    //     0x7df760: add             x0, x0, HEAP, lsl #32
    // 0x7df764: mov             x2, x1
    // 0x7df768: stur            x0, [fp, #-8]
    // 0x7df76c: r1 = Function '<anonymous closure>':.
    //     0x7df76c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c8c0] AnonymousClosure: (0x7df7c4), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_getRoomOccupants (0x7df724)
    //     0x7df770: ldr             x1, [x1, #0x8c0]
    // 0x7df774: r0 = AllocateClosure()
    //     0x7df774: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df778: ldur            x1, [fp, #-8]
    // 0x7df77c: r2 = LoadClassIdInstr(r1)
    //     0x7df77c: ldur            x2, [x1, #-1]
    //     0x7df780: ubfx            x2, x2, #0xc, #0x14
    // 0x7df784: mov             x16, x0
    // 0x7df788: mov             x0, x2
    // 0x7df78c: mov             x2, x16
    // 0x7df790: r0 = GDT[cid_x0 + 0xd348]()
    //     0x7df790: mov             x17, #0xd348
    //     0x7df794: add             lr, x0, x17
    //     0x7df798: ldr             lr, [x21, lr, lsl #3]
    //     0x7df79c: blr             lr
    // 0x7df7a0: LoadField: r1 = r0->field_7
    //     0x7df7a0: ldur            w1, [x0, #7]
    // 0x7df7a4: DecompressPointer r1
    //     0x7df7a4: add             x1, x1, HEAP, lsl #32
    // 0x7df7a8: mov             x2, x0
    // 0x7df7ac: r0 = _GrowableList.of()
    //     0x7df7ac: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7df7b0: LeaveFrame
    //     0x7df7b0: mov             SP, fp
    //     0x7df7b4: ldp             fp, lr, [SP], #0x10
    // 0x7df7b8: ret
    //     0x7df7b8: ret             
    // 0x7df7bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7df7bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7df7c0: b               #0x7df740
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x7df7c4, size: 0xc8
    // 0x7df7c4: EnterFrame
    //     0x7df7c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7df7c8: mov             fp, SP
    // 0x7df7cc: AllocStack(0x18)
    //     0x7df7cc: sub             SP, SP, #0x18
    // 0x7df7d0: SetupParameters([dynamic _ /* r0 */])
    //     0x7df7d0: ldr             x0, [fp, #0x18]
    //     0x7df7d4: ldur            w1, [x0, #0x17]
    //     0x7df7d8: add             x1, x1, HEAP, lsl #32
    //     0x7df7dc: stur            x1, [fp, #-8]
    // 0x7df7e0: CheckStackOverflow
    //     0x7df7e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7df7e4: cmp             SP, x16
    //     0x7df7e8: b.ls            #0x7df884
    // 0x7df7ec: ldr             x2, [fp, #0x10]
    // 0x7df7f0: LoadField: r0 = r2->field_2b
    //     0x7df7f0: ldur            w0, [x2, #0x2b]
    // 0x7df7f4: DecompressPointer r0
    //     0x7df7f4: add             x0, x0, HEAP, lsl #32
    // 0x7df7f8: LoadField: r3 = r1->field_f
    //     0x7df7f8: ldur            w3, [x1, #0xf]
    // 0x7df7fc: DecompressPointer r3
    //     0x7df7fc: add             x3, x3, HEAP, lsl #32
    // 0x7df800: LoadField: r4 = r3->field_b
    //     0x7df800: ldur            w4, [x3, #0xb]
    // 0x7df804: DecompressPointer r4
    //     0x7df804: add             x4, x4, HEAP, lsl #32
    // 0x7df808: LoadField: r3 = r4->field_7
    //     0x7df808: ldur            w3, [x4, #7]
    // 0x7df80c: DecompressPointer r3
    //     0x7df80c: add             x3, x3, HEAP, lsl #32
    // 0x7df810: r4 = LoadClassIdInstr(r0)
    //     0x7df810: ldur            x4, [x0, #-1]
    //     0x7df814: ubfx            x4, x4, #0xc, #0x14
    // 0x7df818: stp             x3, x0, [SP]
    // 0x7df81c: mov             x0, x4
    // 0x7df820: mov             lr, x0
    // 0x7df824: ldr             lr, [x21, lr, lsl #3]
    // 0x7df828: blr             lr
    // 0x7df82c: tbnz            w0, #4, #0x7df838
    // 0x7df830: r0 = true
    //     0x7df830: add             x0, NULL, #0x20  ; true
    // 0x7df834: b               #0x7df878
    // 0x7df838: ldr             x1, [fp, #0x10]
    // 0x7df83c: ldur            x0, [fp, #-8]
    // 0x7df840: LoadField: r2 = r1->field_2f
    //     0x7df840: ldur            w2, [x1, #0x2f]
    // 0x7df844: DecompressPointer r2
    //     0x7df844: add             x2, x2, HEAP, lsl #32
    // 0x7df848: LoadField: r1 = r0->field_f
    //     0x7df848: ldur            w1, [x0, #0xf]
    // 0x7df84c: DecompressPointer r1
    //     0x7df84c: add             x1, x1, HEAP, lsl #32
    // 0x7df850: LoadField: r0 = r1->field_b
    //     0x7df850: ldur            w0, [x1, #0xb]
    // 0x7df854: DecompressPointer r0
    //     0x7df854: add             x0, x0, HEAP, lsl #32
    // 0x7df858: LoadField: r1 = r0->field_7
    //     0x7df858: ldur            w1, [x0, #7]
    // 0x7df85c: DecompressPointer r1
    //     0x7df85c: add             x1, x1, HEAP, lsl #32
    // 0x7df860: r0 = LoadClassIdInstr(r2)
    //     0x7df860: ldur            x0, [x2, #-1]
    //     0x7df864: ubfx            x0, x0, #0xc, #0x14
    // 0x7df868: stp             x1, x2, [SP]
    // 0x7df86c: mov             lr, x0
    // 0x7df870: ldr             lr, [x21, lr, lsl #3]
    // 0x7df874: blr             lr
    // 0x7df878: LeaveFrame
    //     0x7df878: mov             SP, fp
    //     0x7df87c: ldp             fp, lr, [SP], #0x10
    // 0x7df880: ret
    //     0x7df880: ret             
    // 0x7df884: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7df884: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7df888: b               #0x7df7ec
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7df88c, size: 0x50
    // 0x7df88c: EnterFrame
    //     0x7df88c: stp             fp, lr, [SP, #-0x10]!
    //     0x7df890: mov             fp, SP
    // 0x7df894: ldr             x0, [fp, #0x10]
    // 0x7df898: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7df898: ldur            w1, [x0, #0x17]
    // 0x7df89c: DecompressPointer r1
    //     0x7df89c: add             x1, x1, HEAP, lsl #32
    // 0x7df8a0: CheckStackOverflow
    //     0x7df8a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7df8a4: cmp             SP, x16
    //     0x7df8a8: b.ls            #0x7df8d4
    // 0x7df8ac: LoadField: r0 = r1->field_f
    //     0x7df8ac: ldur            w0, [x1, #0xf]
    // 0x7df8b0: DecompressPointer r0
    //     0x7df8b0: add             x0, x0, HEAP, lsl #32
    // 0x7df8b4: LoadField: r2 = r1->field_13
    //     0x7df8b4: ldur            w2, [x1, #0x13]
    // 0x7df8b8: DecompressPointer r2
    //     0x7df8b8: add             x2, x2, HEAP, lsl #32
    // 0x7df8bc: mov             x1, x0
    // 0x7df8c0: r0 = _showRoomOccupantsDialog()
    //     0x7df8c0: bl              #0x7df8dc  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog
    // 0x7df8c4: r0 = Null
    //     0x7df8c4: mov             x0, NULL
    // 0x7df8c8: LeaveFrame
    //     0x7df8c8: mov             SP, fp
    //     0x7df8cc: ldp             fp, lr, [SP], #0x10
    // 0x7df8d0: ret
    //     0x7df8d0: ret             
    // 0x7df8d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7df8d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7df8d8: b               #0x7df8ac
  }
  _ _showRoomOccupantsDialog(/* No info */) {
    // ** addr: 0x7df8dc, size: 0x70
    // 0x7df8dc: EnterFrame
    //     0x7df8dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7df8e0: mov             fp, SP
    // 0x7df8e4: AllocStack(0x28)
    //     0x7df8e4: sub             SP, SP, #0x28
    // 0x7df8e8: SetupParameters(RoomCard this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7df8e8: stur            x1, [fp, #-8]
    //     0x7df8ec: stur            x2, [fp, #-0x10]
    // 0x7df8f0: CheckStackOverflow
    //     0x7df8f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7df8f4: cmp             SP, x16
    //     0x7df8f8: b.ls            #0x7df944
    // 0x7df8fc: r1 = 1
    //     0x7df8fc: mov             x1, #1
    // 0x7df900: r0 = AllocateContext()
    //     0x7df900: bl              #0x927010  ; AllocateContextStub
    // 0x7df904: mov             x1, x0
    // 0x7df908: ldur            x0, [fp, #-8]
    // 0x7df90c: StoreField: r1->field_f = r0
    //     0x7df90c: stur            w0, [x1, #0xf]
    // 0x7df910: mov             x2, x1
    // 0x7df914: r1 = Function '<anonymous closure>':.
    //     0x7df914: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c838] AnonymousClosure: (0x7df94c), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog (0x7df8dc)
    //     0x7df918: ldr             x1, [x1, #0x838]
    // 0x7df91c: r0 = AllocateClosure()
    //     0x7df91c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df920: stp             x0, NULL, [SP, #8]
    // 0x7df924: ldur            x16, [fp, #-0x10]
    // 0x7df928: str             x16, [SP]
    // 0x7df92c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7df92c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7df930: r0 = showDialog()
    //     0x7df930: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7df934: r0 = Null
    //     0x7df934: mov             x0, NULL
    // 0x7df938: LeaveFrame
    //     0x7df938: mov             SP, fp
    //     0x7df93c: ldp             fp, lr, [SP], #0x10
    // 0x7df940: ret
    //     0x7df940: ret             
    // 0x7df944: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7df944: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7df948: b               #0x7df8fc
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7df94c, size: 0x64
    // 0x7df94c: EnterFrame
    //     0x7df94c: stp             fp, lr, [SP, #-0x10]!
    //     0x7df950: mov             fp, SP
    // 0x7df954: AllocStack(0x8)
    //     0x7df954: sub             SP, SP, #8
    // 0x7df958: SetupParameters([dynamic _ /* r0 */])
    //     0x7df958: ldr             x0, [fp, #0x18]
    //     0x7df95c: ldur            w1, [x0, #0x17]
    //     0x7df960: add             x1, x1, HEAP, lsl #32
    //     0x7df964: stur            x1, [fp, #-8]
    // 0x7df968: r1 = 1
    //     0x7df968: mov             x1, #1
    // 0x7df96c: r0 = AllocateContext()
    //     0x7df96c: bl              #0x927010  ; AllocateContextStub
    // 0x7df970: mov             x1, x0
    // 0x7df974: ldur            x0, [fp, #-8]
    // 0x7df978: StoreField: r1->field_b = r0
    //     0x7df978: stur            w0, [x1, #0xb]
    // 0x7df97c: ldr             x0, [fp, #0x10]
    // 0x7df980: StoreField: r1->field_f = r0
    //     0x7df980: stur            w0, [x1, #0xf]
    // 0x7df984: mov             x2, x1
    // 0x7df988: r1 = Function '<anonymous closure>':.
    //     0x7df988: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c840] AnonymousClosure: (0x7df9b0), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog (0x7df8dc)
    //     0x7df98c: ldr             x1, [x1, #0x840]
    // 0x7df990: r0 = AllocateClosure()
    //     0x7df990: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7df994: stur            x0, [fp, #-8]
    // 0x7df998: r0 = StatefulBuilder()
    //     0x7df998: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x7df99c: ldur            x1, [fp, #-8]
    // 0x7df9a0: StoreField: r0->field_b = r1
    //     0x7df9a0: stur            w1, [x0, #0xb]
    // 0x7df9a4: LeaveFrame
    //     0x7df9a4: mov             SP, fp
    //     0x7df9a8: ldp             fp, lr, [SP], #0x10
    // 0x7df9ac: ret
    //     0x7df9ac: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x7df9b0, size: 0x230
    // 0x7df9b0: EnterFrame
    //     0x7df9b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7df9b4: mov             fp, SP
    // 0x7df9b8: AllocStack(0x30)
    //     0x7df9b8: sub             SP, SP, #0x30
    // 0x7df9bc: SetupParameters([dynamic _ /* r0 */])
    //     0x7df9bc: ldr             x0, [fp, #0x20]
    //     0x7df9c0: ldur            w1, [x0, #0x17]
    //     0x7df9c4: add             x1, x1, HEAP, lsl #32
    //     0x7df9c8: stur            x1, [fp, #-8]
    // 0x7df9cc: CheckStackOverflow
    //     0x7df9cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7df9d0: cmp             SP, x16
    //     0x7df9d4: b.ls            #0x7dfbd8
    // 0x7df9d8: r1 = 2
    //     0x7df9d8: mov             x1, #2
    // 0x7df9dc: r0 = AllocateContext()
    //     0x7df9dc: bl              #0x927010  ; AllocateContextStub
    // 0x7df9e0: mov             x2, x0
    // 0x7df9e4: ldur            x0, [fp, #-8]
    // 0x7df9e8: stur            x2, [fp, #-0x18]
    // 0x7df9ec: StoreField: r2->field_b = r0
    //     0x7df9ec: stur            w0, [x2, #0xb]
    // 0x7df9f0: ldr             x1, [fp, #0x10]
    // 0x7df9f4: StoreField: r2->field_f = r1
    //     0x7df9f4: stur            w1, [x2, #0xf]
    // 0x7df9f8: LoadField: r3 = r0->field_b
    //     0x7df9f8: ldur            w3, [x0, #0xb]
    // 0x7df9fc: DecompressPointer r3
    //     0x7df9fc: add             x3, x3, HEAP, lsl #32
    // 0x7dfa00: stur            x3, [fp, #-0x10]
    // 0x7dfa04: LoadField: r1 = r3->field_f
    //     0x7dfa04: ldur            w1, [x3, #0xf]
    // 0x7dfa08: DecompressPointer r1
    //     0x7dfa08: add             x1, x1, HEAP, lsl #32
    // 0x7dfa0c: r0 = _getRoomOccupants()
    //     0x7dfa0c: bl              #0x7df724  ; [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_getRoomOccupants
    // 0x7dfa10: mov             x4, x0
    // 0x7dfa14: ldur            x3, [fp, #-0x18]
    // 0x7dfa18: stur            x4, [fp, #-8]
    // 0x7dfa1c: StoreField: r3->field_13 = r0
    //     0x7dfa1c: stur            w0, [x3, #0x13]
    //     0x7dfa20: ldurb           w16, [x3, #-1]
    //     0x7dfa24: ldurb           w17, [x0, #-1]
    //     0x7dfa28: and             x16, x17, x16, lsr #2
    //     0x7dfa2c: tst             x16, HEAP, lsr #32
    //     0x7dfa30: b.eq            #0x7dfa38
    //     0x7dfa34: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7dfa38: r1 = Null
    //     0x7dfa38: mov             x1, NULL
    // 0x7dfa3c: r2 = 6
    //     0x7dfa3c: mov             x2, #6
    // 0x7dfa40: r0 = AllocateArray()
    //     0x7dfa40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dfa44: r16 = "Oda "
    //     0x7dfa44: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb0] "Oda "
    //     0x7dfa48: ldr             x16, [x16, #0xcb0]
    // 0x7dfa4c: StoreField: r0->field_f = r16
    //     0x7dfa4c: stur            w16, [x0, #0xf]
    // 0x7dfa50: ldur            x1, [fp, #-0x10]
    // 0x7dfa54: LoadField: r2 = r1->field_f
    //     0x7dfa54: ldur            w2, [x1, #0xf]
    // 0x7dfa58: DecompressPointer r2
    //     0x7dfa58: add             x2, x2, HEAP, lsl #32
    // 0x7dfa5c: LoadField: r1 = r2->field_b
    //     0x7dfa5c: ldur            w1, [x2, #0xb]
    // 0x7dfa60: DecompressPointer r1
    //     0x7dfa60: add             x1, x1, HEAP, lsl #32
    // 0x7dfa64: LoadField: r2 = r1->field_f
    //     0x7dfa64: ldur            w2, [x1, #0xf]
    // 0x7dfa68: DecompressPointer r2
    //     0x7dfa68: add             x2, x2, HEAP, lsl #32
    // 0x7dfa6c: StoreField: r0->field_13 = r2
    //     0x7dfa6c: stur            w2, [x0, #0x13]
    // 0x7dfa70: r16 = " - Kişiler"
    //     0x7dfa70: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc08] " - Kişiler"
    //     0x7dfa74: ldr             x16, [x16, #0xc08]
    // 0x7dfa78: ArrayStore: r0[0] = r16  ; List_4
    //     0x7dfa78: stur            w16, [x0, #0x17]
    // 0x7dfa7c: str             x0, [SP]
    // 0x7dfa80: r0 = _interpolate()
    //     0x7dfa80: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dfa84: stur            x0, [fp, #-0x10]
    // 0x7dfa88: r0 = Text()
    //     0x7dfa88: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7dfa8c: mov             x3, x0
    // 0x7dfa90: ldur            x0, [fp, #-0x10]
    // 0x7dfa94: stur            x3, [fp, #-0x28]
    // 0x7dfa98: StoreField: r3->field_b = r0
    //     0x7dfa98: stur            w0, [x3, #0xb]
    // 0x7dfa9c: ldur            x0, [fp, #-8]
    // 0x7dfaa0: LoadField: r1 = r0->field_b
    //     0x7dfaa0: ldur            w1, [x0, #0xb]
    // 0x7dfaa4: r0 = LoadInt32Instr(r1)
    //     0x7dfaa4: sbfx            x0, x1, #1, #0x1f
    // 0x7dfaa8: stur            x0, [fp, #-0x20]
    // 0x7dfaac: cbnz            w1, #0x7dfac0
    // 0x7dfab0: mov             x0, x3
    // 0x7dfab4: r1 = Instance_Padding
    //     0x7dfab4: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c848] Obj!Padding@a1ff71
    //     0x7dfab8: ldr             x1, [x1, #0x848]
    // 0x7dfabc: b               #0x7dfb04
    // 0x7dfac0: ldur            x2, [fp, #-0x18]
    // 0x7dfac4: r1 = Function '<anonymous closure>':.
    //     0x7dfac4: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c850] AnonymousClosure: (0x7dfbe0), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog (0x7df8dc)
    //     0x7dfac8: ldr             x1, [x1, #0x850]
    // 0x7dfacc: r0 = AllocateClosure()
    //     0x7dfacc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dfad0: stur            x0, [fp, #-8]
    // 0x7dfad4: r0 = ListView()
    //     0x7dfad4: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x7dfad8: stur            x0, [fp, #-0x10]
    // 0x7dfadc: r16 = true
    //     0x7dfadc: add             x16, NULL, #0x20  ; true
    // 0x7dfae0: str             x16, [SP]
    // 0x7dfae4: mov             x1, x0
    // 0x7dfae8: ldur            x2, [fp, #-8]
    // 0x7dfaec: ldur            x3, [fp, #-0x20]
    // 0x7dfaf0: r4 = const [0, 0x4, 0x1, 0x3, shrinkWrap, 0x3, null]
    //     0x7dfaf0: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fc20] List(7) [0, 0x4, 0x1, 0x3, "shrinkWrap", 0x3, Null]
    //     0x7dfaf4: ldr             x4, [x4, #0xc20]
    // 0x7dfaf8: r0 = ListView.builder()
    //     0x7dfaf8: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x7dfafc: ldur            x1, [fp, #-0x10]
    // 0x7dfb00: ldur            x0, [fp, #-0x28]
    // 0x7dfb04: stur            x1, [fp, #-8]
    // 0x7dfb08: r0 = SizedBox()
    //     0x7dfb08: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x7dfb0c: mov             x3, x0
    // 0x7dfb10: r0 = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000
    //     0x7dfb10: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc28] 1.7976931348623157e+308
    //     0x7dfb14: ldr             x0, [x0, #0xc28]
    // 0x7dfb18: stur            x3, [fp, #-0x10]
    // 0x7dfb1c: StoreField: r3->field_f = r0
    //     0x7dfb1c: stur            w0, [x3, #0xf]
    // 0x7dfb20: ldur            x0, [fp, #-8]
    // 0x7dfb24: StoreField: r3->field_b = r0
    //     0x7dfb24: stur            w0, [x3, #0xb]
    // 0x7dfb28: ldur            x2, [fp, #-0x18]
    // 0x7dfb2c: r1 = Function '<anonymous closure>':.
    //     0x7dfb2c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c858] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x7dfb30: ldr             x1, [x1, #0x858]
    // 0x7dfb34: r0 = AllocateClosure()
    //     0x7dfb34: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dfb38: stur            x0, [fp, #-8]
    // 0x7dfb3c: r0 = TextButton()
    //     0x7dfb3c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7dfb40: mov             x3, x0
    // 0x7dfb44: ldur            x0, [fp, #-8]
    // 0x7dfb48: stur            x3, [fp, #-0x18]
    // 0x7dfb4c: StoreField: r3->field_b = r0
    //     0x7dfb4c: stur            w0, [x3, #0xb]
    // 0x7dfb50: r0 = false
    //     0x7dfb50: add             x0, NULL, #0x30  ; false
    // 0x7dfb54: StoreField: r3->field_27 = r0
    //     0x7dfb54: stur            w0, [x3, #0x27]
    // 0x7dfb58: r1 = true
    //     0x7dfb58: add             x1, NULL, #0x20  ; true
    // 0x7dfb5c: StoreField: r3->field_2f = r1
    //     0x7dfb5c: stur            w1, [x3, #0x2f]
    // 0x7dfb60: r1 = Instance_Text
    //     0x7dfb60: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c860] Obj!Text@a1d701
    //     0x7dfb64: ldr             x1, [x1, #0x860]
    // 0x7dfb68: StoreField: r3->field_37 = r1
    //     0x7dfb68: stur            w1, [x3, #0x37]
    // 0x7dfb6c: r1 = Null
    //     0x7dfb6c: mov             x1, NULL
    // 0x7dfb70: r2 = 2
    //     0x7dfb70: mov             x2, #2
    // 0x7dfb74: r0 = AllocateArray()
    //     0x7dfb74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dfb78: mov             x2, x0
    // 0x7dfb7c: ldur            x0, [fp, #-0x18]
    // 0x7dfb80: stur            x2, [fp, #-8]
    // 0x7dfb84: StoreField: r2->field_f = r0
    //     0x7dfb84: stur            w0, [x2, #0xf]
    // 0x7dfb88: r1 = <Widget>
    //     0x7dfb88: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7dfb8c: r0 = AllocateGrowableArray()
    //     0x7dfb8c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7dfb90: mov             x1, x0
    // 0x7dfb94: ldur            x0, [fp, #-8]
    // 0x7dfb98: stur            x1, [fp, #-0x18]
    // 0x7dfb9c: StoreField: r1->field_f = r0
    //     0x7dfb9c: stur            w0, [x1, #0xf]
    // 0x7dfba0: r0 = 2
    //     0x7dfba0: mov             x0, #2
    // 0x7dfba4: StoreField: r1->field_b = r0
    //     0x7dfba4: stur            w0, [x1, #0xb]
    // 0x7dfba8: r0 = AlertDialog()
    //     0x7dfba8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7dfbac: ldur            x1, [fp, #-0x28]
    // 0x7dfbb0: StoreField: r0->field_f = r1
    //     0x7dfbb0: stur            w1, [x0, #0xf]
    // 0x7dfbb4: ldur            x1, [fp, #-0x10]
    // 0x7dfbb8: StoreField: r0->field_1b = r1
    //     0x7dfbb8: stur            w1, [x0, #0x1b]
    // 0x7dfbbc: ldur            x1, [fp, #-0x18]
    // 0x7dfbc0: StoreField: r0->field_27 = r1
    //     0x7dfbc0: stur            w1, [x0, #0x27]
    // 0x7dfbc4: r1 = false
    //     0x7dfbc4: add             x1, NULL, #0x30  ; false
    // 0x7dfbc8: StoreField: r0->field_6b = r1
    //     0x7dfbc8: stur            w1, [x0, #0x6b]
    // 0x7dfbcc: LeaveFrame
    //     0x7dfbcc: mov             SP, fp
    //     0x7dfbd0: ldp             fp, lr, [SP], #0x10
    // 0x7dfbd4: ret
    //     0x7dfbd4: ret             
    // 0x7dfbd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dfbd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dfbdc: b               #0x7df9d8
  }
  [closure] Container <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7dfbe0, size: 0x53c
    // 0x7dfbe0: EnterFrame
    //     0x7dfbe0: stp             fp, lr, [SP, #-0x10]!
    //     0x7dfbe4: mov             fp, SP
    // 0x7dfbe8: AllocStack(0x58)
    //     0x7dfbe8: sub             SP, SP, #0x58
    // 0x7dfbec: SetupParameters([dynamic _ /* r0 */])
    //     0x7dfbec: ldr             x0, [fp, #0x20]
    //     0x7dfbf0: ldur            w1, [x0, #0x17]
    //     0x7dfbf4: add             x1, x1, HEAP, lsl #32
    //     0x7dfbf8: stur            x1, [fp, #-8]
    // 0x7dfbfc: CheckStackOverflow
    //     0x7dfbfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dfc00: cmp             SP, x16
    //     0x7dfc04: b.ls            #0x7e0108
    // 0x7dfc08: r1 = 4
    //     0x7dfc08: mov             x1, #4
    // 0x7dfc0c: r0 = AllocateContext()
    //     0x7dfc0c: bl              #0x927010  ; AllocateContextStub
    // 0x7dfc10: mov             x3, x0
    // 0x7dfc14: ldur            x2, [fp, #-8]
    // 0x7dfc18: stur            x3, [fp, #-0x18]
    // 0x7dfc1c: StoreField: r3->field_b = r2
    //     0x7dfc1c: stur            w2, [x3, #0xb]
    // 0x7dfc20: ldr             x0, [fp, #0x18]
    // 0x7dfc24: StoreField: r3->field_f = r0
    //     0x7dfc24: stur            w0, [x3, #0xf]
    // 0x7dfc28: LoadField: r4 = r2->field_13
    //     0x7dfc28: ldur            w4, [x2, #0x13]
    // 0x7dfc2c: DecompressPointer r4
    //     0x7dfc2c: add             x4, x4, HEAP, lsl #32
    // 0x7dfc30: LoadField: r0 = r4->field_b
    //     0x7dfc30: ldur            w0, [x4, #0xb]
    // 0x7dfc34: ldr             x1, [fp, #0x10]
    // 0x7dfc38: r5 = LoadInt32Instr(r1)
    //     0x7dfc38: sbfx            x5, x1, #1, #0x1f
    //     0x7dfc3c: tbz             w1, #0, #0x7dfc44
    //     0x7dfc40: ldur            x5, [x1, #7]
    // 0x7dfc44: r1 = LoadInt32Instr(r0)
    //     0x7dfc44: sbfx            x1, x0, #1, #0x1f
    // 0x7dfc48: mov             x0, x1
    // 0x7dfc4c: mov             x1, x5
    // 0x7dfc50: cmp             x1, x0
    // 0x7dfc54: b.hs            #0x7e0110
    // 0x7dfc58: LoadField: r0 = r4->field_f
    //     0x7dfc58: ldur            w0, [x4, #0xf]
    // 0x7dfc5c: DecompressPointer r0
    //     0x7dfc5c: add             x0, x0, HEAP, lsl #32
    // 0x7dfc60: ArrayLoad: r1 = r0[r5]  ; Unknown_4
    //     0x7dfc60: add             x16, x0, x5, lsl #2
    //     0x7dfc64: ldur            w1, [x16, #0xf]
    // 0x7dfc68: DecompressPointer r1
    //     0x7dfc68: add             x1, x1, HEAP, lsl #32
    // 0x7dfc6c: stur            x1, [fp, #-0x10]
    // 0x7dfc70: StoreField: r3->field_13 = r1
    //     0x7dfc70: stur            w1, [x3, #0x13]
    // 0x7dfc74: LoadField: r0 = r1->field_2b
    //     0x7dfc74: ldur            w0, [x1, #0x2b]
    // 0x7dfc78: DecompressPointer r0
    //     0x7dfc78: add             x0, x0, HEAP, lsl #32
    // 0x7dfc7c: LoadField: r4 = r2->field_b
    //     0x7dfc7c: ldur            w4, [x2, #0xb]
    // 0x7dfc80: DecompressPointer r4
    //     0x7dfc80: add             x4, x4, HEAP, lsl #32
    // 0x7dfc84: LoadField: r2 = r4->field_b
    //     0x7dfc84: ldur            w2, [x4, #0xb]
    // 0x7dfc88: DecompressPointer r2
    //     0x7dfc88: add             x2, x2, HEAP, lsl #32
    // 0x7dfc8c: LoadField: r4 = r2->field_f
    //     0x7dfc8c: ldur            w4, [x2, #0xf]
    // 0x7dfc90: DecompressPointer r4
    //     0x7dfc90: add             x4, x4, HEAP, lsl #32
    // 0x7dfc94: LoadField: r2 = r4->field_b
    //     0x7dfc94: ldur            w2, [x4, #0xb]
    // 0x7dfc98: DecompressPointer r2
    //     0x7dfc98: add             x2, x2, HEAP, lsl #32
    // 0x7dfc9c: LoadField: r4 = r2->field_7
    //     0x7dfc9c: ldur            w4, [x2, #7]
    // 0x7dfca0: DecompressPointer r4
    //     0x7dfca0: add             x4, x4, HEAP, lsl #32
    // 0x7dfca4: r2 = LoadClassIdInstr(r0)
    //     0x7dfca4: ldur            x2, [x0, #-1]
    //     0x7dfca8: ubfx            x2, x2, #0xc, #0x14
    // 0x7dfcac: stp             x4, x0, [SP]
    // 0x7dfcb0: mov             x0, x2
    // 0x7dfcb4: mov             lr, x0
    // 0x7dfcb8: ldr             lr, [x21, lr, lsl #3]
    // 0x7dfcbc: blr             lr
    // 0x7dfcc0: ldur            x3, [fp, #-0x18]
    // 0x7dfcc4: ArrayStore: r3[0] = r0  ; List_4
    //     0x7dfcc4: stur            w0, [x3, #0x17]
    // 0x7dfcc8: tbnz            w0, #4, #0x7dfcd8
    // 0x7dfccc: r5 = "Mekke"
    //     0x7dfccc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7dfcd0: ldr             x5, [x5, #0xdf0]
    // 0x7dfcd4: b               #0x7dfce0
    // 0x7dfcd8: r5 = "Medine"
    //     0x7dfcd8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x7dfcdc: ldr             x5, [x5, #0xe00]
    // 0x7dfce0: ldur            x4, [fp, #-0x10]
    // 0x7dfce4: mov             x0, x5
    // 0x7dfce8: stur            x5, [fp, #-8]
    // 0x7dfcec: StoreField: r3->field_1b = r0
    //     0x7dfcec: stur            w0, [x3, #0x1b]
    //     0x7dfcf0: ldurb           w16, [x3, #-1]
    //     0x7dfcf4: ldurb           w17, [x0, #-1]
    //     0x7dfcf8: and             x16, x17, x16, lsr #2
    //     0x7dfcfc: tst             x16, HEAP, lsr #32
    //     0x7dfd00: b.eq            #0x7dfd08
    //     0x7dfd04: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7dfd08: r1 = _ConstMap len:12
    //     0x7dfd08: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dfd0c: r2 = 200
    //     0x7dfd0c: mov             x2, #0xc8
    // 0x7dfd10: r0 = []()
    //     0x7dfd10: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dfd14: stur            x0, [fp, #-0x20]
    // 0x7dfd18: cmp             w0, NULL
    // 0x7dfd1c: b.eq            #0x7e0114
    // 0x7dfd20: r0 = Radius()
    //     0x7dfd20: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dfd24: d0 = 8.000000
    //     0x7dfd24: fmov            d0, #8.00000000
    // 0x7dfd28: stur            x0, [fp, #-0x28]
    // 0x7dfd2c: StoreField: r0->field_7 = d0
    //     0x7dfd2c: stur            d0, [x0, #7]
    // 0x7dfd30: StoreField: r0->field_f = d0
    //     0x7dfd30: stur            d0, [x0, #0xf]
    // 0x7dfd34: r0 = BorderRadius()
    //     0x7dfd34: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dfd38: mov             x1, x0
    // 0x7dfd3c: ldur            x0, [fp, #-0x28]
    // 0x7dfd40: stur            x1, [fp, #-0x30]
    // 0x7dfd44: StoreField: r1->field_7 = r0
    //     0x7dfd44: stur            w0, [x1, #7]
    // 0x7dfd48: StoreField: r1->field_b = r0
    //     0x7dfd48: stur            w0, [x1, #0xb]
    // 0x7dfd4c: StoreField: r1->field_f = r0
    //     0x7dfd4c: stur            w0, [x1, #0xf]
    // 0x7dfd50: StoreField: r1->field_13 = r0
    //     0x7dfd50: stur            w0, [x1, #0x13]
    // 0x7dfd54: r0 = BoxDecoration()
    //     0x7dfd54: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7dfd58: mov             x1, x0
    // 0x7dfd5c: ldur            x0, [fp, #-0x20]
    // 0x7dfd60: stur            x1, [fp, #-0x28]
    // 0x7dfd64: StoreField: r1->field_7 = r0
    //     0x7dfd64: stur            w0, [x1, #7]
    // 0x7dfd68: ldur            x0, [fp, #-0x30]
    // 0x7dfd6c: StoreField: r1->field_13 = r0
    //     0x7dfd6c: stur            w0, [x1, #0x13]
    // 0x7dfd70: r0 = Instance_BoxShape
    //     0x7dfd70: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7dfd74: ldr             x0, [x0, #0x1c8]
    // 0x7dfd78: StoreField: r1->field_23 = r0
    //     0x7dfd78: stur            w0, [x1, #0x23]
    // 0x7dfd7c: ldur            x0, [fp, #-0x10]
    // 0x7dfd80: LoadField: r2 = r0->field_b
    //     0x7dfd80: ldur            w2, [x0, #0xb]
    // 0x7dfd84: DecompressPointer r2
    //     0x7dfd84: add             x2, x2, HEAP, lsl #32
    // 0x7dfd88: stur            x2, [fp, #-0x20]
    // 0x7dfd8c: LoadField: r3 = r2->field_7
    //     0x7dfd8c: ldur            w3, [x2, #7]
    // 0x7dfd90: cbz             w3, #0x7dfdc0
    // 0x7dfd94: stp             xzr, x2, [SP]
    // 0x7dfd98: r0 = []()
    //     0x7dfd98: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x7dfd9c: r1 = LoadClassIdInstr(r0)
    //     0x7dfd9c: ldur            x1, [x0, #-1]
    //     0x7dfda0: ubfx            x1, x1, #0xc, #0x14
    // 0x7dfda4: str             x0, [SP]
    // 0x7dfda8: mov             x0, x1
    // 0x7dfdac: r0 = GDT[cid_x0 + -0xff6]()
    //     0x7dfdac: sub             lr, x0, #0xff6
    //     0x7dfdb0: ldr             lr, [x21, lr, lsl #3]
    //     0x7dfdb4: blr             lr
    // 0x7dfdb8: mov             x3, x0
    // 0x7dfdbc: b               #0x7dfdc4
    // 0x7dfdc0: r3 = "\?"
    //     0x7dfdc0: ldr             x3, [PP, #0xf08]  ; [pp+0xf08] "\?"
    // 0x7dfdc4: ldur            x2, [fp, #-8]
    // 0x7dfdc8: ldur            x1, [fp, #-0x20]
    // 0x7dfdcc: ldur            x0, [fp, #-0x10]
    // 0x7dfdd0: stur            x3, [fp, #-0x30]
    // 0x7dfdd4: r0 = Text()
    //     0x7dfdd4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7dfdd8: mov             x1, x0
    // 0x7dfddc: ldur            x0, [fp, #-0x30]
    // 0x7dfde0: stur            x1, [fp, #-0x38]
    // 0x7dfde4: StoreField: r1->field_b = r0
    //     0x7dfde4: stur            w0, [x1, #0xb]
    // 0x7dfde8: r0 = Instance_TextStyle
    //     0x7dfde8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ed8] Obj!TextStyle@a17441
    //     0x7dfdec: ldr             x0, [x0, #0xed8]
    // 0x7dfdf0: StoreField: r1->field_13 = r0
    //     0x7dfdf0: stur            w0, [x1, #0x13]
    // 0x7dfdf4: r0 = CircleAvatar()
    //     0x7dfdf4: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x7dfdf8: mov             x1, x0
    // 0x7dfdfc: ldur            x0, [fp, #-0x38]
    // 0x7dfe00: stur            x1, [fp, #-0x30]
    // 0x7dfe04: StoreField: r1->field_b = r0
    //     0x7dfe04: stur            w0, [x1, #0xb]
    // 0x7dfe08: r0 = Instance_Color
    //     0x7dfe08: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7dfe0c: ldr             x0, [x0, #0xb78]
    // 0x7dfe10: StoreField: r1->field_f = r0
    //     0x7dfe10: stur            w0, [x1, #0xf]
    // 0x7dfe14: r0 = 20.000000
    //     0x7dfe14: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7dfe18: ldr             x0, [x0, #0xe48]
    // 0x7dfe1c: StoreField: r1->field_1f = r0
    //     0x7dfe1c: stur            w0, [x1, #0x1f]
    // 0x7dfe20: r0 = Text()
    //     0x7dfe20: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7dfe24: mov             x3, x0
    // 0x7dfe28: ldur            x0, [fp, #-0x20]
    // 0x7dfe2c: stur            x3, [fp, #-0x38]
    // 0x7dfe30: StoreField: r3->field_b = r0
    //     0x7dfe30: stur            w0, [x3, #0xb]
    // 0x7dfe34: r0 = Instance_TextStyle
    //     0x7dfe34: add             x0, PP, #0x15, lsl #12  ; [pp+0x15610] Obj!TextStyle@a177c1
    //     0x7dfe38: ldr             x0, [x0, #0x610]
    // 0x7dfe3c: StoreField: r3->field_13 = r0
    //     0x7dfe3c: stur            w0, [x3, #0x13]
    // 0x7dfe40: r1 = Null
    //     0x7dfe40: mov             x1, NULL
    // 0x7dfe44: r2 = 6
    //     0x7dfe44: mov             x2, #6
    // 0x7dfe48: r0 = AllocateArray()
    //     0x7dfe48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dfe4c: mov             x1, x0
    // 0x7dfe50: ldur            x0, [fp, #-8]
    // 0x7dfe54: StoreField: r1->field_f = r0
    //     0x7dfe54: stur            w0, [x1, #0xf]
    // 0x7dfe58: r16 = " • "
    //     0x7dfe58: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7dfe5c: ldr             x16, [x16, #0x9d8]
    // 0x7dfe60: StoreField: r1->field_13 = r16
    //     0x7dfe60: stur            w16, [x1, #0x13]
    // 0x7dfe64: ldur            x0, [fp, #-0x10]
    // 0x7dfe68: LoadField: r2 = r0->field_13
    //     0x7dfe68: ldur            w2, [x0, #0x13]
    // 0x7dfe6c: DecompressPointer r2
    //     0x7dfe6c: add             x2, x2, HEAP, lsl #32
    // 0x7dfe70: ArrayStore: r1[0] = r2  ; List_4
    //     0x7dfe70: stur            w2, [x1, #0x17]
    // 0x7dfe74: str             x1, [SP]
    // 0x7dfe78: r0 = _interpolate()
    //     0x7dfe78: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dfe7c: r1 = _ConstMap len:12
    //     0x7dfe7c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dfe80: r2 = 1200
    //     0x7dfe80: mov             x2, #0x4b0
    // 0x7dfe84: stur            x0, [fp, #-8]
    // 0x7dfe88: r0 = []()
    //     0x7dfe88: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dfe8c: stur            x0, [fp, #-0x10]
    // 0x7dfe90: cmp             w0, NULL
    // 0x7dfe94: b.eq            #0x7e0118
    // 0x7dfe98: r0 = TextStyle()
    //     0x7dfe98: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7dfe9c: mov             x1, x0
    // 0x7dfea0: r0 = true
    //     0x7dfea0: add             x0, NULL, #0x20  ; true
    // 0x7dfea4: stur            x1, [fp, #-0x20]
    // 0x7dfea8: StoreField: r1->field_7 = r0
    //     0x7dfea8: stur            w0, [x1, #7]
    // 0x7dfeac: ldur            x0, [fp, #-0x10]
    // 0x7dfeb0: StoreField: r1->field_b = r0
    //     0x7dfeb0: stur            w0, [x1, #0xb]
    // 0x7dfeb4: r0 = 12.000000
    //     0x7dfeb4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7dfeb8: ldr             x0, [x0, #0xae0]
    // 0x7dfebc: StoreField: r1->field_1f = r0
    //     0x7dfebc: stur            w0, [x1, #0x1f]
    // 0x7dfec0: r0 = Text()
    //     0x7dfec0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7dfec4: mov             x3, x0
    // 0x7dfec8: ldur            x0, [fp, #-8]
    // 0x7dfecc: stur            x3, [fp, #-0x10]
    // 0x7dfed0: StoreField: r3->field_b = r0
    //     0x7dfed0: stur            w0, [x3, #0xb]
    // 0x7dfed4: ldur            x0, [fp, #-0x20]
    // 0x7dfed8: StoreField: r3->field_13 = r0
    //     0x7dfed8: stur            w0, [x3, #0x13]
    // 0x7dfedc: r1 = Null
    //     0x7dfedc: mov             x1, NULL
    // 0x7dfee0: r2 = 6
    //     0x7dfee0: mov             x2, #6
    // 0x7dfee4: r0 = AllocateArray()
    //     0x7dfee4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dfee8: mov             x2, x0
    // 0x7dfeec: ldur            x0, [fp, #-0x38]
    // 0x7dfef0: stur            x2, [fp, #-8]
    // 0x7dfef4: StoreField: r2->field_f = r0
    //     0x7dfef4: stur            w0, [x2, #0xf]
    // 0x7dfef8: r16 = Instance_SizedBox
    //     0x7dfef8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15620] Obj!SizedBox@a1f9b1
    //     0x7dfefc: ldr             x16, [x16, #0x620]
    // 0x7dff00: StoreField: r2->field_13 = r16
    //     0x7dff00: stur            w16, [x2, #0x13]
    // 0x7dff04: ldur            x0, [fp, #-0x10]
    // 0x7dff08: ArrayStore: r2[0] = r0  ; List_4
    //     0x7dff08: stur            w0, [x2, #0x17]
    // 0x7dff0c: r1 = <Widget>
    //     0x7dff0c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7dff10: r0 = AllocateGrowableArray()
    //     0x7dff10: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7dff14: mov             x1, x0
    // 0x7dff18: ldur            x0, [fp, #-8]
    // 0x7dff1c: stur            x1, [fp, #-0x10]
    // 0x7dff20: StoreField: r1->field_f = r0
    //     0x7dff20: stur            w0, [x1, #0xf]
    // 0x7dff24: r0 = 6
    //     0x7dff24: mov             x0, #6
    // 0x7dff28: StoreField: r1->field_b = r0
    //     0x7dff28: stur            w0, [x1, #0xb]
    // 0x7dff2c: r0 = Column()
    //     0x7dff2c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7dff30: mov             x2, x0
    // 0x7dff34: r0 = Instance_Axis
    //     0x7dff34: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7dff38: stur            x2, [fp, #-8]
    // 0x7dff3c: StoreField: r2->field_f = r0
    //     0x7dff3c: stur            w0, [x2, #0xf]
    // 0x7dff40: r0 = Instance_MainAxisAlignment
    //     0x7dff40: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7dff44: ldr             x0, [x0, #0x230]
    // 0x7dff48: StoreField: r2->field_13 = r0
    //     0x7dff48: stur            w0, [x2, #0x13]
    // 0x7dff4c: r3 = Instance_MainAxisSize
    //     0x7dff4c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7dff50: ldr             x3, [x3, #0x330]
    // 0x7dff54: ArrayStore: r2[0] = r3  ; List_4
    //     0x7dff54: stur            w3, [x2, #0x17]
    // 0x7dff58: r1 = Instance_CrossAxisAlignment
    //     0x7dff58: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7dff5c: ldr             x1, [x1, #0x238]
    // 0x7dff60: StoreField: r2->field_1b = r1
    //     0x7dff60: stur            w1, [x2, #0x1b]
    // 0x7dff64: r4 = Instance_VerticalDirection
    //     0x7dff64: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7dff68: ldr             x4, [x4, #0x340]
    // 0x7dff6c: StoreField: r2->field_23 = r4
    //     0x7dff6c: stur            w4, [x2, #0x23]
    // 0x7dff70: r5 = Instance_Clip
    //     0x7dff70: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7dff74: ldr             x5, [x5, #0x348]
    // 0x7dff78: StoreField: r2->field_2b = r5
    //     0x7dff78: stur            w5, [x2, #0x2b]
    // 0x7dff7c: StoreField: r2->field_2f = rZR
    //     0x7dff7c: stur            xzr, [x2, #0x2f]
    // 0x7dff80: ldur            x1, [fp, #-0x10]
    // 0x7dff84: StoreField: r2->field_b = r1
    //     0x7dff84: stur            w1, [x2, #0xb]
    // 0x7dff88: r1 = <FlexParentData>
    //     0x7dff88: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7dff8c: ldr             x1, [x1, #0x340]
    // 0x7dff90: r0 = Expanded()
    //     0x7dff90: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7dff94: mov             x3, x0
    // 0x7dff98: r0 = 1
    //     0x7dff98: mov             x0, #1
    // 0x7dff9c: stur            x3, [fp, #-0x10]
    // 0x7dffa0: StoreField: r3->field_13 = r0
    //     0x7dffa0: stur            x0, [x3, #0x13]
    // 0x7dffa4: r0 = Instance_FlexFit
    //     0x7dffa4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7dffa8: ldr             x0, [x0, #0x348]
    // 0x7dffac: StoreField: r3->field_1b = r0
    //     0x7dffac: stur            w0, [x3, #0x1b]
    // 0x7dffb0: ldur            x0, [fp, #-8]
    // 0x7dffb4: StoreField: r3->field_b = r0
    //     0x7dffb4: stur            w0, [x3, #0xb]
    // 0x7dffb8: ldur            x2, [fp, #-0x18]
    // 0x7dffbc: r1 = Function '<anonymous closure>':.
    //     0x7dffbc: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c868] AnonymousClosure: (0x7e011c), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog (0x7df8dc)
    //     0x7dffc0: ldr             x1, [x1, #0x868]
    // 0x7dffc4: r0 = AllocateClosure()
    //     0x7dffc4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dffc8: stur            x0, [fp, #-8]
    // 0x7dffcc: r0 = IconButton()
    //     0x7dffcc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7dffd0: mov             x3, x0
    // 0x7dffd4: ldur            x0, [fp, #-8]
    // 0x7dffd8: stur            x3, [fp, #-0x18]
    // 0x7dffdc: StoreField: r3->field_3b = r0
    //     0x7dffdc: stur            w0, [x3, #0x3b]
    // 0x7dffe0: r0 = false
    //     0x7dffe0: add             x0, NULL, #0x30  ; false
    // 0x7dffe4: StoreField: r3->field_4f = r0
    //     0x7dffe4: stur            w0, [x3, #0x4f]
    // 0x7dffe8: r0 = "Odadan Çıkar"
    //     0x7dffe8: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc50] "Odadan Çıkar"
    //     0x7dffec: ldr             x0, [x0, #0xc50]
    // 0x7dfff0: StoreField: r3->field_53 = r0
    //     0x7dfff0: stur            w0, [x3, #0x53]
    // 0x7dfff4: r0 = Instance_Icon
    //     0x7dfff4: add             x0, PP, #0x2c, lsl #12  ; [pp+0x2c870] Obj!Icon@a1ef31
    //     0x7dfff8: ldr             x0, [x0, #0x870]
    // 0x7dfffc: StoreField: r3->field_1f = r0
    //     0x7dfffc: stur            w0, [x3, #0x1f]
    // 0x7e0000: r0 = Instance__IconButtonVariant
    //     0x7e0000: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7e0004: ldr             x0, [x0, #0x1b8]
    // 0x7e0008: StoreField: r3->field_6f = r0
    //     0x7e0008: stur            w0, [x3, #0x6f]
    // 0x7e000c: r1 = Null
    //     0x7e000c: mov             x1, NULL
    // 0x7e0010: r2 = 8
    //     0x7e0010: mov             x2, #8
    // 0x7e0014: r0 = AllocateArray()
    //     0x7e0014: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e0018: mov             x2, x0
    // 0x7e001c: ldur            x0, [fp, #-0x30]
    // 0x7e0020: stur            x2, [fp, #-8]
    // 0x7e0024: StoreField: r2->field_f = r0
    //     0x7e0024: stur            w0, [x2, #0xf]
    // 0x7e0028: r16 = Instance_SizedBox
    //     0x7e0028: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e002c: ldr             x16, [x16, #0x360]
    // 0x7e0030: StoreField: r2->field_13 = r16
    //     0x7e0030: stur            w16, [x2, #0x13]
    // 0x7e0034: ldur            x0, [fp, #-0x10]
    // 0x7e0038: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e0038: stur            w0, [x2, #0x17]
    // 0x7e003c: ldur            x0, [fp, #-0x18]
    // 0x7e0040: StoreField: r2->field_1b = r0
    //     0x7e0040: stur            w0, [x2, #0x1b]
    // 0x7e0044: r1 = <Widget>
    //     0x7e0044: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e0048: r0 = AllocateGrowableArray()
    //     0x7e0048: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e004c: mov             x1, x0
    // 0x7e0050: ldur            x0, [fp, #-8]
    // 0x7e0054: stur            x1, [fp, #-0x10]
    // 0x7e0058: StoreField: r1->field_f = r0
    //     0x7e0058: stur            w0, [x1, #0xf]
    // 0x7e005c: r0 = 8
    //     0x7e005c: mov             x0, #8
    // 0x7e0060: StoreField: r1->field_b = r0
    //     0x7e0060: stur            w0, [x1, #0xb]
    // 0x7e0064: r0 = Row()
    //     0x7e0064: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e0068: mov             x1, x0
    // 0x7e006c: r0 = Instance_Axis
    //     0x7e006c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e0070: stur            x1, [fp, #-8]
    // 0x7e0074: StoreField: r1->field_f = r0
    //     0x7e0074: stur            w0, [x1, #0xf]
    // 0x7e0078: r0 = Instance_MainAxisAlignment
    //     0x7e0078: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e007c: ldr             x0, [x0, #0x230]
    // 0x7e0080: StoreField: r1->field_13 = r0
    //     0x7e0080: stur            w0, [x1, #0x13]
    // 0x7e0084: r0 = Instance_MainAxisSize
    //     0x7e0084: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e0088: ldr             x0, [x0, #0x330]
    // 0x7e008c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e008c: stur            w0, [x1, #0x17]
    // 0x7e0090: r0 = Instance_CrossAxisAlignment
    //     0x7e0090: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e0094: ldr             x0, [x0, #0x338]
    // 0x7e0098: StoreField: r1->field_1b = r0
    //     0x7e0098: stur            w0, [x1, #0x1b]
    // 0x7e009c: r0 = Instance_VerticalDirection
    //     0x7e009c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e00a0: ldr             x0, [x0, #0x340]
    // 0x7e00a4: StoreField: r1->field_23 = r0
    //     0x7e00a4: stur            w0, [x1, #0x23]
    // 0x7e00a8: r0 = Instance_Clip
    //     0x7e00a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e00ac: ldr             x0, [x0, #0x348]
    // 0x7e00b0: StoreField: r1->field_2b = r0
    //     0x7e00b0: stur            w0, [x1, #0x2b]
    // 0x7e00b4: StoreField: r1->field_2f = rZR
    //     0x7e00b4: stur            xzr, [x1, #0x2f]
    // 0x7e00b8: ldur            x0, [fp, #-0x10]
    // 0x7e00bc: StoreField: r1->field_b = r0
    //     0x7e00bc: stur            w0, [x1, #0xb]
    // 0x7e00c0: r0 = Container()
    //     0x7e00c0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e00c4: stur            x0, [fp, #-0x10]
    // 0x7e00c8: r16 = Instance_EdgeInsets
    //     0x7e00c8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18d40] Obj!EdgeInsets@a0c2f1
    //     0x7e00cc: ldr             x16, [x16, #0xd40]
    // 0x7e00d0: r30 = Instance_EdgeInsets
    //     0x7e00d0: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7e00d4: ldr             lr, [lr, #0x370]
    // 0x7e00d8: stp             lr, x16, [SP, #0x10]
    // 0x7e00dc: ldur            x16, [fp, #-0x28]
    // 0x7e00e0: ldur            lr, [fp, #-8]
    // 0x7e00e4: stp             lr, x16, [SP]
    // 0x7e00e8: mov             x1, x0
    // 0x7e00ec: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x7e00ec: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x7e00f0: ldr             x4, [x4, #0x628]
    // 0x7e00f4: r0 = Container()
    //     0x7e00f4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e00f8: ldur            x0, [fp, #-0x10]
    // 0x7e00fc: LeaveFrame
    //     0x7e00fc: mov             SP, fp
    //     0x7e0100: ldp             fp, lr, [SP], #0x10
    // 0x7e0104: ret
    //     0x7e0104: ret             
    // 0x7e0108: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0108: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e010c: b               #0x7dfc08
    // 0x7e0110: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e0110: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e0114: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e0114: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e0118: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e0118: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e011c, size: 0x210
    // 0x7e011c: EnterFrame
    //     0x7e011c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0120: mov             fp, SP
    // 0x7e0124: AllocStack(0x40)
    //     0x7e0124: sub             SP, SP, #0x40
    // 0x7e0128: SetupParameters(RoomCard this /* r1 */)
    //     0x7e0128: stur            NULL, [fp, #-8]
    //     0x7e012c: mov             x0, #0
    //     0x7e0130: add             x1, fp, w0, sxtw #2
    //     0x7e0134: ldr             x1, [x1, #0x10]
    //     0x7e0138: ldur            w2, [x1, #0x17]
    //     0x7e013c: add             x2, x2, HEAP, lsl #32
    //     0x7e0140: stur            x2, [fp, #-0x10]
    // 0x7e0144: CheckStackOverflow
    //     0x7e0144: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0148: cmp             SP, x16
    //     0x7e014c: b.ls            #0x7e0324
    // 0x7e0150: InitAsync() -> Future<void?>
    //     0x7e0150: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e0154: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e0158: ldur            x0, [fp, #-0x10]
    // 0x7e015c: LoadField: r3 = r0->field_f
    //     0x7e015c: ldur            w3, [x0, #0xf]
    // 0x7e0160: DecompressPointer r3
    //     0x7e0160: add             x3, x3, HEAP, lsl #32
    // 0x7e0164: mov             x2, x0
    // 0x7e0168: stur            x3, [fp, #-0x18]
    // 0x7e016c: r1 = Function '<anonymous closure>':.
    //     0x7e016c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c878] AnonymousClosure: (0x7e032c), in [package:umrem_demo/features/admin/screens/rooms_management_screen.dart] RoomCard::_showRoomOccupantsDialog (0x7df8dc)
    //     0x7e0170: ldr             x1, [x1, #0x878]
    // 0x7e0174: r0 = AllocateClosure()
    //     0x7e0174: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0178: r16 = <bool>
    //     0x7e0178: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x7e017c: stp             x0, x16, [SP, #8]
    // 0x7e0180: ldur            x16, [fp, #-0x18]
    // 0x7e0184: str             x16, [SP]
    // 0x7e0188: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e0188: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e018c: r0 = showDialog()
    //     0x7e018c: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7e0190: mov             x1, x0
    // 0x7e0194: stur            x1, [fp, #-0x18]
    // 0x7e0198: r0 = Await()
    //     0x7e0198: bl              #0x3dd188  ; AwaitStub
    // 0x7e019c: r1 = 60
    //     0x7e019c: mov             x1, #0x3c
    // 0x7e01a0: branchIfSmi(r0, 0x7e01ac)
    //     0x7e01a0: tbz             w0, #0, #0x7e01ac
    // 0x7e01a4: r1 = LoadClassIdInstr(r0)
    //     0x7e01a4: ldur            x1, [x0, #-1]
    //     0x7e01a8: ubfx            x1, x1, #0xc, #0x14
    // 0x7e01ac: r16 = true
    //     0x7e01ac: add             x16, NULL, #0x20  ; true
    // 0x7e01b0: stp             x16, x0, [SP]
    // 0x7e01b4: mov             x0, x1
    // 0x7e01b8: mov             lr, x0
    // 0x7e01bc: ldr             lr, [x21, lr, lsl #3]
    // 0x7e01c0: blr             lr
    // 0x7e01c4: tbnz            w0, #4, #0x7e031c
    // 0x7e01c8: ldur            x0, [fp, #-0x10]
    // 0x7e01cc: LoadField: r4 = r0->field_b
    //     0x7e01cc: ldur            w4, [x0, #0xb]
    // 0x7e01d0: DecompressPointer r4
    //     0x7e01d0: add             x4, x4, HEAP, lsl #32
    // 0x7e01d4: stur            x4, [fp, #-0x20]
    // 0x7e01d8: LoadField: r1 = r4->field_b
    //     0x7e01d8: ldur            w1, [x4, #0xb]
    // 0x7e01dc: DecompressPointer r1
    //     0x7e01dc: add             x1, x1, HEAP, lsl #32
    // 0x7e01e0: LoadField: r2 = r1->field_b
    //     0x7e01e0: ldur            w2, [x1, #0xb]
    // 0x7e01e4: DecompressPointer r2
    //     0x7e01e4: add             x2, x2, HEAP, lsl #32
    // 0x7e01e8: LoadField: r1 = r2->field_f
    //     0x7e01e8: ldur            w1, [x2, #0xf]
    // 0x7e01ec: DecompressPointer r1
    //     0x7e01ec: add             x1, x1, HEAP, lsl #32
    // 0x7e01f0: LoadField: r2 = r1->field_f
    //     0x7e01f0: ldur            w2, [x1, #0xf]
    // 0x7e01f4: DecompressPointer r2
    //     0x7e01f4: add             x2, x2, HEAP, lsl #32
    // 0x7e01f8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e01f8: ldur            w1, [x0, #0x17]
    // 0x7e01fc: DecompressPointer r1
    //     0x7e01fc: add             x1, x1, HEAP, lsl #32
    // 0x7e0200: tbnz            w1, #4, #0x7e0220
    // 0x7e0204: LoadField: r3 = r0->field_13
    //     0x7e0204: ldur            w3, [x0, #0x13]
    // 0x7e0208: DecompressPointer r3
    //     0x7e0208: add             x3, x3, HEAP, lsl #32
    // 0x7e020c: LoadField: r5 = r3->field_1b
    //     0x7e020c: ldur            w5, [x3, #0x1b]
    // 0x7e0210: DecompressPointer r5
    //     0x7e0210: add             x5, x5, HEAP, lsl #32
    // 0x7e0214: mov             x6, x5
    // 0x7e0218: mov             x8, x3
    // 0x7e021c: b               #0x7e0238
    // 0x7e0220: LoadField: r3 = r0->field_13
    //     0x7e0220: ldur            w3, [x0, #0x13]
    // 0x7e0224: DecompressPointer r3
    //     0x7e0224: add             x3, x3, HEAP, lsl #32
    // 0x7e0228: LoadField: r5 = r3->field_1f
    //     0x7e0228: ldur            w5, [x3, #0x1f]
    // 0x7e022c: DecompressPointer r5
    //     0x7e022c: add             x5, x5, HEAP, lsl #32
    // 0x7e0230: mov             x6, x5
    // 0x7e0234: mov             x8, x3
    // 0x7e0238: stur            x8, [fp, #-0x18]
    // 0x7e023c: tbnz            w1, #4, #0x7e024c
    // 0x7e0240: LoadField: r1 = r8->field_23
    //     0x7e0240: ldur            w1, [x8, #0x23]
    // 0x7e0244: DecompressPointer r1
    //     0x7e0244: add             x1, x1, HEAP, lsl #32
    // 0x7e0248: b               #0x7e0254
    // 0x7e024c: LoadField: r1 = r8->field_27
    //     0x7e024c: ldur            w1, [x8, #0x27]
    // 0x7e0250: DecompressPointer r1
    //     0x7e0250: add             x1, x1, HEAP, lsl #32
    // 0x7e0254: LoadField: r3 = r0->field_1b
    //     0x7e0254: ldur            w3, [x0, #0x1b]
    // 0x7e0258: DecompressPointer r3
    //     0x7e0258: add             x3, x3, HEAP, lsl #32
    // 0x7e025c: mov             x16, x1
    // 0x7e0260: mov             x1, x2
    // 0x7e0264: mov             x2, x16
    // 0x7e0268: mov             x7, x8
    // 0x7e026c: r5 = Null
    //     0x7e026c: mov             x5, NULL
    // 0x7e0270: r0 = assignUser()
    //     0x7e0270: bl              #0x6f29ac  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::assignUser
    // 0x7e0274: mov             x1, x0
    // 0x7e0278: stur            x1, [fp, #-0x28]
    // 0x7e027c: r0 = Await()
    //     0x7e027c: bl              #0x3dd188  ; AwaitStub
    // 0x7e0280: r16 = true
    //     0x7e0280: add             x16, NULL, #0x20  ; true
    // 0x7e0284: cmp             w0, w16
    // 0x7e0288: b.ne            #0x7e0310
    // 0x7e028c: ldur            x0, [fp, #-0x20]
    // 0x7e0290: ldur            x1, [fp, #-0x18]
    // 0x7e0294: LoadField: r3 = r1->field_b
    //     0x7e0294: ldur            w3, [x1, #0xb]
    // 0x7e0298: DecompressPointer r3
    //     0x7e0298: add             x3, x3, HEAP, lsl #32
    // 0x7e029c: stur            x3, [fp, #-0x10]
    // 0x7e02a0: r1 = Null
    //     0x7e02a0: mov             x1, NULL
    // 0x7e02a4: r2 = 4
    //     0x7e02a4: mov             x2, #4
    // 0x7e02a8: r0 = AllocateArray()
    //     0x7e02a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e02ac: mov             x1, x0
    // 0x7e02b0: ldur            x0, [fp, #-0x10]
    // 0x7e02b4: StoreField: r1->field_f = r0
    //     0x7e02b4: stur            w0, [x1, #0xf]
    // 0x7e02b8: r16 = " odadan çıkarıldı"
    //     0x7e02b8: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc68] " odadan çıkarıldı"
    //     0x7e02bc: ldr             x16, [x16, #0xc68]
    // 0x7e02c0: StoreField: r1->field_13 = r16
    //     0x7e02c0: stur            w16, [x1, #0x13]
    // 0x7e02c4: str             x1, [SP]
    // 0x7e02c8: r0 = _interpolate()
    //     0x7e02c8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e02cc: mov             x1, x0
    // 0x7e02d0: r0 = showSuccess()
    //     0x7e02d0: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x7e02d4: ldur            x0, [fp, #-0x20]
    // 0x7e02d8: LoadField: r3 = r0->field_f
    //     0x7e02d8: ldur            w3, [x0, #0xf]
    // 0x7e02dc: DecompressPointer r3
    //     0x7e02dc: add             x3, x3, HEAP, lsl #32
    // 0x7e02e0: stur            x3, [fp, #-0x10]
    // 0x7e02e4: r1 = Function '<anonymous closure>':.
    //     0x7e02e4: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c880] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x7e02e8: ldr             x1, [x1, #0x880]
    // 0x7e02ec: r2 = Null
    //     0x7e02ec: mov             x2, NULL
    // 0x7e02f0: r0 = AllocateClosure()
    //     0x7e02f0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e02f4: ldur            x16, [fp, #-0x10]
    // 0x7e02f8: stp             x0, x16, [SP]
    // 0x7e02fc: ldur            x0, [fp, #-0x10]
    // 0x7e0300: ClosureCall
    //     0x7e0300: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7e0304: ldur            x2, [x0, #0x1f]
    //     0x7e0308: blr             x2
    // 0x7e030c: b               #0x7e031c
    // 0x7e0310: r1 = "Kullanıcı odadan çıkarılamadı"
    //     0x7e0310: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c888] "Kullanıcı odadan çıkarılamadı"
    //     0x7e0314: ldr             x1, [x1, #0x888]
    // 0x7e0318: r0 = showError()
    //     0x7e0318: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x7e031c: r0 = Null
    //     0x7e031c: mov             x0, NULL
    // 0x7e0320: r0 = ReturnAsyncNotFuture()
    //     0x7e0320: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e0324: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0324: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e0328: b               #0x7e0150
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e032c, size: 0x1cc
    // 0x7e032c: EnterFrame
    //     0x7e032c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0330: mov             fp, SP
    // 0x7e0334: AllocStack(0x30)
    //     0x7e0334: sub             SP, SP, #0x30
    // 0x7e0338: SetupParameters([dynamic _ /* r0 */])
    //     0x7e0338: ldr             x0, [fp, #0x18]
    //     0x7e033c: ldur            w1, [x0, #0x17]
    //     0x7e0340: add             x1, x1, HEAP, lsl #32
    //     0x7e0344: stur            x1, [fp, #-8]
    // 0x7e0348: CheckStackOverflow
    //     0x7e0348: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e034c: cmp             SP, x16
    //     0x7e0350: b.ls            #0x7e04f0
    // 0x7e0354: r1 = 1
    //     0x7e0354: mov             x1, #1
    // 0x7e0358: r0 = AllocateContext()
    //     0x7e0358: bl              #0x927010  ; AllocateContextStub
    // 0x7e035c: mov             x3, x0
    // 0x7e0360: ldur            x0, [fp, #-8]
    // 0x7e0364: stur            x3, [fp, #-0x10]
    // 0x7e0368: StoreField: r3->field_b = r0
    //     0x7e0368: stur            w0, [x3, #0xb]
    // 0x7e036c: ldr             x1, [fp, #0x10]
    // 0x7e0370: StoreField: r3->field_f = r1
    //     0x7e0370: stur            w1, [x3, #0xf]
    // 0x7e0374: LoadField: r1 = r0->field_13
    //     0x7e0374: ldur            w1, [x0, #0x13]
    // 0x7e0378: DecompressPointer r1
    //     0x7e0378: add             x1, x1, HEAP, lsl #32
    // 0x7e037c: LoadField: r0 = r1->field_b
    //     0x7e037c: ldur            w0, [x1, #0xb]
    // 0x7e0380: DecompressPointer r0
    //     0x7e0380: add             x0, x0, HEAP, lsl #32
    // 0x7e0384: stur            x0, [fp, #-8]
    // 0x7e0388: r1 = Null
    //     0x7e0388: mov             x1, NULL
    // 0x7e038c: r2 = 4
    //     0x7e038c: mov             x2, #4
    // 0x7e0390: r0 = AllocateArray()
    //     0x7e0390: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e0394: mov             x1, x0
    // 0x7e0398: ldur            x0, [fp, #-8]
    // 0x7e039c: StoreField: r1->field_f = r0
    //     0x7e039c: stur            w0, [x1, #0xf]
    // 0x7e03a0: r16 = " kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\?"
    //     0x7e03a0: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc80] " kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\?"
    //     0x7e03a4: ldr             x16, [x16, #0xc80]
    // 0x7e03a8: StoreField: r1->field_13 = r16
    //     0x7e03a8: stur            w16, [x1, #0x13]
    // 0x7e03ac: str             x1, [SP]
    // 0x7e03b0: r0 = _interpolate()
    //     0x7e03b0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e03b4: stur            x0, [fp, #-8]
    // 0x7e03b8: r0 = Text()
    //     0x7e03b8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e03bc: mov             x3, x0
    // 0x7e03c0: ldur            x0, [fp, #-8]
    // 0x7e03c4: stur            x3, [fp, #-0x18]
    // 0x7e03c8: StoreField: r3->field_b = r0
    //     0x7e03c8: stur            w0, [x3, #0xb]
    // 0x7e03cc: ldur            x2, [fp, #-0x10]
    // 0x7e03d0: r1 = Function '<anonymous closure>':.
    //     0x7e03d0: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c890] AnonymousClosure: (0x6dfc64), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x7e03d4: ldr             x1, [x1, #0x890]
    // 0x7e03d8: r0 = AllocateClosure()
    //     0x7e03d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e03dc: stur            x0, [fp, #-8]
    // 0x7e03e0: r0 = TextButton()
    //     0x7e03e0: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e03e4: mov             x1, x0
    // 0x7e03e8: ldur            x0, [fp, #-8]
    // 0x7e03ec: stur            x1, [fp, #-0x20]
    // 0x7e03f0: StoreField: r1->field_b = r0
    //     0x7e03f0: stur            w0, [x1, #0xb]
    // 0x7e03f4: r0 = false
    //     0x7e03f4: add             x0, NULL, #0x30  ; false
    // 0x7e03f8: StoreField: r1->field_27 = r0
    //     0x7e03f8: stur            w0, [x1, #0x27]
    // 0x7e03fc: r2 = true
    //     0x7e03fc: add             x2, NULL, #0x20  ; true
    // 0x7e0400: StoreField: r1->field_2f = r2
    //     0x7e0400: stur            w2, [x1, #0x2f]
    // 0x7e0404: r3 = Instance_Text
    //     0x7e0404: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x7e0408: ldr             x3, [x3, #0x7d0]
    // 0x7e040c: StoreField: r1->field_37 = r3
    //     0x7e040c: stur            w3, [x1, #0x37]
    // 0x7e0410: r16 = Instance_MaterialColor
    //     0x7e0410: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7e0414: ldr             x16, [x16, #0xb90]
    // 0x7e0418: str             x16, [SP]
    // 0x7e041c: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x7e041c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x7e0420: ldr             x4, [x4, #0xbb8]
    // 0x7e0424: r0 = styleFrom()
    //     0x7e0424: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x7e0428: ldur            x2, [fp, #-0x10]
    // 0x7e042c: r1 = Function '<anonymous closure>':.
    //     0x7e042c: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c898] AnonymousClosure: (0x6dfa38), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x7e0430: ldr             x1, [x1, #0x898]
    // 0x7e0434: stur            x0, [fp, #-8]
    // 0x7e0438: r0 = AllocateClosure()
    //     0x7e0438: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e043c: stur            x0, [fp, #-0x10]
    // 0x7e0440: r0 = TextButton()
    //     0x7e0440: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e0444: mov             x3, x0
    // 0x7e0448: ldur            x0, [fp, #-0x10]
    // 0x7e044c: stur            x3, [fp, #-0x28]
    // 0x7e0450: StoreField: r3->field_b = r0
    //     0x7e0450: stur            w0, [x3, #0xb]
    // 0x7e0454: ldur            x0, [fp, #-8]
    // 0x7e0458: StoreField: r3->field_1b = r0
    //     0x7e0458: stur            w0, [x3, #0x1b]
    // 0x7e045c: r0 = false
    //     0x7e045c: add             x0, NULL, #0x30  ; false
    // 0x7e0460: StoreField: r3->field_27 = r0
    //     0x7e0460: stur            w0, [x3, #0x27]
    // 0x7e0464: r1 = true
    //     0x7e0464: add             x1, NULL, #0x20  ; true
    // 0x7e0468: StoreField: r3->field_2f = r1
    //     0x7e0468: stur            w1, [x3, #0x2f]
    // 0x7e046c: r1 = Instance_Text
    //     0x7e046c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc98] Obj!Text@a1d481
    //     0x7e0470: ldr             x1, [x1, #0xc98]
    // 0x7e0474: StoreField: r3->field_37 = r1
    //     0x7e0474: stur            w1, [x3, #0x37]
    // 0x7e0478: r1 = Null
    //     0x7e0478: mov             x1, NULL
    // 0x7e047c: r2 = 4
    //     0x7e047c: mov             x2, #4
    // 0x7e0480: r0 = AllocateArray()
    //     0x7e0480: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e0484: mov             x2, x0
    // 0x7e0488: ldur            x0, [fp, #-0x20]
    // 0x7e048c: stur            x2, [fp, #-8]
    // 0x7e0490: StoreField: r2->field_f = r0
    //     0x7e0490: stur            w0, [x2, #0xf]
    // 0x7e0494: ldur            x0, [fp, #-0x28]
    // 0x7e0498: StoreField: r2->field_13 = r0
    //     0x7e0498: stur            w0, [x2, #0x13]
    // 0x7e049c: r1 = <Widget>
    //     0x7e049c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e04a0: r0 = AllocateGrowableArray()
    //     0x7e04a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e04a4: mov             x1, x0
    // 0x7e04a8: ldur            x0, [fp, #-8]
    // 0x7e04ac: stur            x1, [fp, #-0x10]
    // 0x7e04b0: StoreField: r1->field_f = r0
    //     0x7e04b0: stur            w0, [x1, #0xf]
    // 0x7e04b4: r0 = 4
    //     0x7e04b4: mov             x0, #4
    // 0x7e04b8: StoreField: r1->field_b = r0
    //     0x7e04b8: stur            w0, [x1, #0xb]
    // 0x7e04bc: r0 = AlertDialog()
    //     0x7e04bc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7e04c0: r1 = Instance_Text
    //     0x7e04c0: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c8a0] Obj!Text@a1d751
    //     0x7e04c4: ldr             x1, [x1, #0x8a0]
    // 0x7e04c8: StoreField: r0->field_f = r1
    //     0x7e04c8: stur            w1, [x0, #0xf]
    // 0x7e04cc: ldur            x1, [fp, #-0x18]
    // 0x7e04d0: StoreField: r0->field_1b = r1
    //     0x7e04d0: stur            w1, [x0, #0x1b]
    // 0x7e04d4: ldur            x1, [fp, #-0x10]
    // 0x7e04d8: StoreField: r0->field_27 = r1
    //     0x7e04d8: stur            w1, [x0, #0x27]
    // 0x7e04dc: r1 = false
    //     0x7e04dc: add             x1, NULL, #0x30  ; false
    // 0x7e04e0: StoreField: r0->field_6b = r1
    //     0x7e04e0: stur            w1, [x0, #0x6b]
    // 0x7e04e4: LeaveFrame
    //     0x7e04e4: mov             SP, fp
    //     0x7e04e8: ldp             fp, lr, [SP], #0x10
    // 0x7e04ec: ret
    //     0x7e04ec: ret             
    // 0x7e04f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e04f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e04f4: b               #0x7e0354
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x7e04f8, size: 0xe8
    // 0x7e04f8: EnterFrame
    //     0x7e04f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e04fc: mov             fp, SP
    // 0x7e0500: AllocStack(0x18)
    //     0x7e0500: sub             SP, SP, #0x18
    // 0x7e0504: SetupParameters([dynamic _ /* r0 */])
    //     0x7e0504: ldr             x0, [fp, #0x18]
    //     0x7e0508: ldur            w1, [x0, #0x17]
    //     0x7e050c: add             x1, x1, HEAP, lsl #32
    //     0x7e0510: stur            x1, [fp, #-8]
    // 0x7e0514: CheckStackOverflow
    //     0x7e0514: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0518: cmp             SP, x16
    //     0x7e051c: b.ls            #0x7e05d8
    // 0x7e0520: ldr             x2, [fp, #0x10]
    // 0x7e0524: r0 = LoadClassIdInstr(r2)
    //     0x7e0524: ldur            x0, [x2, #-1]
    //     0x7e0528: ubfx            x0, x0, #0xc, #0x14
    // 0x7e052c: r16 = "edit"
    //     0x7e052c: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a400] "edit"
    //     0x7e0530: ldr             x16, [x16, #0x400]
    // 0x7e0534: stp             x16, x2, [SP]
    // 0x7e0538: mov             lr, x0
    // 0x7e053c: ldr             lr, [x21, lr, lsl #3]
    // 0x7e0540: blr             lr
    // 0x7e0544: tbnz            w0, #4, #0x7e0574
    // 0x7e0548: ldur            x1, [fp, #-8]
    // 0x7e054c: LoadField: r0 = r1->field_f
    //     0x7e054c: ldur            w0, [x1, #0xf]
    // 0x7e0550: DecompressPointer r0
    //     0x7e0550: add             x0, x0, HEAP, lsl #32
    // 0x7e0554: LoadField: r1 = r0->field_13
    //     0x7e0554: ldur            w1, [x0, #0x13]
    // 0x7e0558: DecompressPointer r1
    //     0x7e0558: add             x1, x1, HEAP, lsl #32
    // 0x7e055c: str             x1, [SP]
    // 0x7e0560: mov             x0, x1
    // 0x7e0564: ClosureCall
    //     0x7e0564: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7e0568: ldur            x2, [x0, #0x1f]
    //     0x7e056c: blr             x2
    // 0x7e0570: b               #0x7e05c8
    // 0x7e0574: ldr             x0, [fp, #0x10]
    // 0x7e0578: ldur            x1, [fp, #-8]
    // 0x7e057c: r2 = LoadClassIdInstr(r0)
    //     0x7e057c: ldur            x2, [x0, #-1]
    //     0x7e0580: ubfx            x2, x2, #0xc, #0x14
    // 0x7e0584: r16 = "delete"
    //     0x7e0584: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a410] "delete"
    //     0x7e0588: ldr             x16, [x16, #0x410]
    // 0x7e058c: stp             x16, x0, [SP]
    // 0x7e0590: mov             x0, x2
    // 0x7e0594: mov             lr, x0
    // 0x7e0598: ldr             lr, [x21, lr, lsl #3]
    // 0x7e059c: blr             lr
    // 0x7e05a0: tbnz            w0, #4, #0x7e05c8
    // 0x7e05a4: ldur            x0, [fp, #-8]
    // 0x7e05a8: LoadField: r1 = r0->field_f
    //     0x7e05a8: ldur            w1, [x0, #0xf]
    // 0x7e05ac: DecompressPointer r1
    //     0x7e05ac: add             x1, x1, HEAP, lsl #32
    // 0x7e05b0: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7e05b0: ldur            w0, [x1, #0x17]
    // 0x7e05b4: DecompressPointer r0
    //     0x7e05b4: add             x0, x0, HEAP, lsl #32
    // 0x7e05b8: str             x0, [SP]
    // 0x7e05bc: ClosureCall
    //     0x7e05bc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    //     0x7e05c0: ldur            x2, [x0, #0x1f]
    //     0x7e05c4: blr             x2
    // 0x7e05c8: r0 = Null
    //     0x7e05c8: mov             x0, NULL
    // 0x7e05cc: LeaveFrame
    //     0x7e05cc: mov             SP, fp
    //     0x7e05d0: ldp             fp, lr, [SP], #0x10
    // 0x7e05d4: ret
    //     0x7e05d4: ret             
    // 0x7e05d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e05d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e05dc: b               #0x7e0520
  }
  [closure] List<PopupMenuItem<String>> <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e05e0, size: 0x60
    // 0x7e05e0: EnterFrame
    //     0x7e05e0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e05e4: mov             fp, SP
    // 0x7e05e8: AllocStack(0x8)
    //     0x7e05e8: sub             SP, SP, #8
    // 0x7e05ec: SetupParameters()
    //     0x7e05ec: mov             x0, #4
    // 0x7e05ec: r0 = 4
    // 0x7e05f0: mov             x2, x0
    // 0x7e05f4: r1 = Null
    //     0x7e05f4: mov             x1, NULL
    // 0x7e05f8: r0 = AllocateArray()
    //     0x7e05f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e05fc: stur            x0, [fp, #-8]
    // 0x7e0600: r16 = Instance_PopupMenuItem
    //     0x7e0600: add             x16, PP, #0x2c, lsl #12  ; [pp+0x2c8a8] Obj!PopupMenuItem<String>@a20ba1
    //     0x7e0604: ldr             x16, [x16, #0x8a8]
    // 0x7e0608: StoreField: r0->field_f = r16
    //     0x7e0608: stur            w16, [x0, #0xf]
    // 0x7e060c: r16 = Instance_PopupMenuItem
    //     0x7e060c: add             x16, PP, #0x2c, lsl #12  ; [pp+0x2c8b0] Obj!PopupMenuItem<String>@a20b61
    //     0x7e0610: ldr             x16, [x16, #0x8b0]
    // 0x7e0614: StoreField: r0->field_13 = r16
    //     0x7e0614: stur            w16, [x0, #0x13]
    // 0x7e0618: r1 = <PopupMenuItem<String>>
    //     0x7e0618: add             x1, PP, #0x2c, lsl #12  ; [pp+0x2c8b8] TypeArguments: <PopupMenuItem<String>>
    //     0x7e061c: ldr             x1, [x1, #0x8b8]
    // 0x7e0620: r0 = AllocateGrowableArray()
    //     0x7e0620: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e0624: ldur            x1, [fp, #-8]
    // 0x7e0628: StoreField: r0->field_f = r1
    //     0x7e0628: stur            w1, [x0, #0xf]
    // 0x7e062c: r1 = 4
    //     0x7e062c: mov             x1, #4
    // 0x7e0630: StoreField: r0->field_b = r1
    //     0x7e0630: stur            w1, [x0, #0xb]
    // 0x7e0634: LeaveFrame
    //     0x7e0634: mov             SP, fp
    //     0x7e0638: ldp             fp, lr, [SP], #0x10
    // 0x7e063c: ret
    //     0x7e063c: ret             
  }
}

// class id: 3214, size: 0x14, field offset: 0xc
//   const constructor, 
class RoomsManagementScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd51c, size: 0x24
    // 0x7bd51c: EnterFrame
    //     0x7bd51c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd520: mov             fp, SP
    // 0x7bd524: mov             x0, x1
    // 0x7bd528: r1 = <RoomsManagementScreen>
    //     0x7bd528: add             x1, PP, #0x20, lsl #12  ; [pp+0x20940] TypeArguments: <RoomsManagementScreen>
    //     0x7bd52c: ldr             x1, [x1, #0x940]
    // 0x7bd530: r0 = _RoomsManagementScreenState()
    //     0x7bd530: bl              #0x7bd540  ; Allocate_RoomsManagementScreenStateStub -> _RoomsManagementScreenState (size=0x14)
    // 0x7bd534: LeaveFrame
    //     0x7bd534: mov             SP, fp
    //     0x7bd538: ldp             fp, lr, [SP], #0x10
    // 0x7bd53c: ret
    //     0x7bd53c: ret             
  }
}

// lib: , url: package:umrem_demo/features/home/widgets/duyurular.dart

// class id: 1049590, size: 0x8
class :: {
}

// class id: 2903, size: 0x10, field offset: 0xc
//   const constructor, 
class NotificationCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7eaa10, size: 0x5a8
    // 0x7eaa10: EnterFrame
    //     0x7eaa10: stp             fp, lr, [SP, #-0x10]!
    //     0x7eaa14: mov             fp, SP
    // 0x7eaa18: AllocStack(0x50)
    //     0x7eaa18: sub             SP, SP, #0x50
    // 0x7eaa1c: SetupParameters(NotificationCard this /* r1 => r1, fp-0x8 */)
    //     0x7eaa1c: stur            x1, [fp, #-8]
    // 0x7eaa20: CheckStackOverflow
    //     0x7eaa20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eaa24: cmp             SP, x16
    //     0x7eaa28: b.ls            #0x7eafa4
    // 0x7eaa2c: r0 = Radius()
    //     0x7eaa2c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eaa30: d0 = 16.000000
    //     0x7eaa30: fmov            d0, #16.00000000
    // 0x7eaa34: stur            x0, [fp, #-0x10]
    // 0x7eaa38: StoreField: r0->field_7 = d0
    //     0x7eaa38: stur            d0, [x0, #7]
    // 0x7eaa3c: StoreField: r0->field_f = d0
    //     0x7eaa3c: stur            d0, [x0, #0xf]
    // 0x7eaa40: r0 = BorderRadius()
    //     0x7eaa40: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eaa44: mov             x3, x0
    // 0x7eaa48: ldur            x0, [fp, #-0x10]
    // 0x7eaa4c: stur            x3, [fp, #-0x18]
    // 0x7eaa50: StoreField: r3->field_7 = r0
    //     0x7eaa50: stur            w0, [x3, #7]
    // 0x7eaa54: StoreField: r3->field_b = r0
    //     0x7eaa54: stur            w0, [x3, #0xb]
    // 0x7eaa58: StoreField: r3->field_f = r0
    //     0x7eaa58: stur            w0, [x3, #0xf]
    // 0x7eaa5c: StoreField: r3->field_13 = r0
    //     0x7eaa5c: stur            w0, [x3, #0x13]
    // 0x7eaa60: r1 = _ConstMap len:12
    //     0x7eaa60: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7eaa64: r2 = 400
    //     0x7eaa64: mov             x2, #0x190
    // 0x7eaa68: r0 = []()
    //     0x7eaa68: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7eaa6c: cmp             w0, NULL
    // 0x7eaa70: b.eq            #0x7eafac
    // 0x7eaa74: r16 = 1.000000
    //     0x7eaa74: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7eaa78: stp             x16, x0, [SP]
    // 0x7eaa7c: r1 = Null
    //     0x7eaa7c: mov             x1, NULL
    // 0x7eaa80: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7eaa80: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7eaa84: ldr             x4, [x4, #0x208]
    // 0x7eaa88: r0 = Border.all()
    //     0x7eaa88: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7eaa8c: stur            x0, [fp, #-0x10]
    // 0x7eaa90: r16 = 0.080000
    //     0x7eaa90: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x7eaa94: ldr             x16, [x16, #0xe30]
    // 0x7eaa98: str             x16, [SP]
    // 0x7eaa9c: r1 = Instance_Color
    //     0x7eaa9c: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eaaa0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eaaa0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eaaa4: ldr             x4, [x4, #0x198]
    // 0x7eaaa8: r0 = withValues()
    //     0x7eaaa8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eaaac: stur            x0, [fp, #-0x20]
    // 0x7eaab0: r0 = BoxShadow()
    //     0x7eaab0: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eaab4: d0 = 2.000000
    //     0x7eaab4: fmov            d0, #2.00000000
    // 0x7eaab8: stur            x0, [fp, #-0x28]
    // 0x7eaabc: ArrayStore: r0[0] = d0  ; List_8
    //     0x7eaabc: stur            d0, [x0, #0x17]
    // 0x7eaac0: r2 = Instance_BlurStyle
    //     0x7eaac0: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eaac4: ldr             x2, [x2, #0x9b0]
    // 0x7eaac8: StoreField: r0->field_1f = r2
    //     0x7eaac8: stur            w2, [x0, #0x1f]
    // 0x7eaacc: ldur            x1, [fp, #-0x20]
    // 0x7eaad0: StoreField: r0->field_7 = r1
    //     0x7eaad0: stur            w1, [x0, #7]
    // 0x7eaad4: r1 = Instance_Offset
    //     0x7eaad4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7eaad8: ldr             x1, [x1, #0x9b8]
    // 0x7eaadc: StoreField: r0->field_b = r1
    //     0x7eaadc: stur            w1, [x0, #0xb]
    // 0x7eaae0: d0 = 16.000000
    //     0x7eaae0: fmov            d0, #16.00000000
    // 0x7eaae4: StoreField: r0->field_f = d0
    //     0x7eaae4: stur            d0, [x0, #0xf]
    // 0x7eaae8: r16 = 0.150000
    //     0x7eaae8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7eaaec: ldr             x16, [x16, #0xe38]
    // 0x7eaaf0: str             x16, [SP]
    // 0x7eaaf4: r1 = Instance_Color
    //     0x7eaaf4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eaaf8: ldr             x1, [x1, #0xb78]
    // 0x7eaafc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eaafc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eab00: ldr             x4, [x4, #0x198]
    // 0x7eab04: r0 = withValues()
    //     0x7eab04: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eab08: stur            x0, [fp, #-0x20]
    // 0x7eab0c: r0 = BoxShadow()
    //     0x7eab0c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eab10: stur            x0, [fp, #-0x30]
    // 0x7eab14: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7eab14: stur            xzr, [x0, #0x17]
    // 0x7eab18: r1 = Instance_BlurStyle
    //     0x7eab18: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eab1c: ldr             x1, [x1, #0x9b0]
    // 0x7eab20: StoreField: r0->field_1f = r1
    //     0x7eab20: stur            w1, [x0, #0x1f]
    // 0x7eab24: ldur            x1, [fp, #-0x20]
    // 0x7eab28: StoreField: r0->field_7 = r1
    //     0x7eab28: stur            w1, [x0, #7]
    // 0x7eab2c: r1 = Instance_Offset
    //     0x7eab2c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x7eab30: ldr             x1, [x1, #0xe40]
    // 0x7eab34: StoreField: r0->field_b = r1
    //     0x7eab34: stur            w1, [x0, #0xb]
    // 0x7eab38: d0 = 24.000000
    //     0x7eab38: fmov            d0, #24.00000000
    // 0x7eab3c: StoreField: r0->field_f = d0
    //     0x7eab3c: stur            d0, [x0, #0xf]
    // 0x7eab40: r1 = Null
    //     0x7eab40: mov             x1, NULL
    // 0x7eab44: r2 = 4
    //     0x7eab44: mov             x2, #4
    // 0x7eab48: r0 = AllocateArray()
    //     0x7eab48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eab4c: mov             x2, x0
    // 0x7eab50: ldur            x0, [fp, #-0x28]
    // 0x7eab54: stur            x2, [fp, #-0x20]
    // 0x7eab58: StoreField: r2->field_f = r0
    //     0x7eab58: stur            w0, [x2, #0xf]
    // 0x7eab5c: ldur            x0, [fp, #-0x30]
    // 0x7eab60: StoreField: r2->field_13 = r0
    //     0x7eab60: stur            w0, [x2, #0x13]
    // 0x7eab64: r1 = <BoxShadow>
    //     0x7eab64: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7eab68: ldr             x1, [x1, #0x9c0]
    // 0x7eab6c: r0 = AllocateGrowableArray()
    //     0x7eab6c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eab70: mov             x1, x0
    // 0x7eab74: ldur            x0, [fp, #-0x20]
    // 0x7eab78: stur            x1, [fp, #-0x28]
    // 0x7eab7c: StoreField: r1->field_f = r0
    //     0x7eab7c: stur            w0, [x1, #0xf]
    // 0x7eab80: r0 = 4
    //     0x7eab80: mov             x0, #4
    // 0x7eab84: StoreField: r1->field_b = r0
    //     0x7eab84: stur            w0, [x1, #0xb]
    // 0x7eab88: r0 = BoxDecoration()
    //     0x7eab88: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eab8c: mov             x2, x0
    // 0x7eab90: r0 = Instance_Color
    //     0x7eab90: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7eab94: stur            x2, [fp, #-0x20]
    // 0x7eab98: StoreField: r2->field_7 = r0
    //     0x7eab98: stur            w0, [x2, #7]
    // 0x7eab9c: ldur            x0, [fp, #-0x10]
    // 0x7eaba0: StoreField: r2->field_f = r0
    //     0x7eaba0: stur            w0, [x2, #0xf]
    // 0x7eaba4: ldur            x0, [fp, #-0x18]
    // 0x7eaba8: StoreField: r2->field_13 = r0
    //     0x7eaba8: stur            w0, [x2, #0x13]
    // 0x7eabac: ldur            x0, [fp, #-0x28]
    // 0x7eabb0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eabb0: stur            w0, [x2, #0x17]
    // 0x7eabb4: r0 = Instance_BoxShape
    //     0x7eabb4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eabb8: ldr             x0, [x0, #0x1c8]
    // 0x7eabbc: StoreField: r2->field_23 = r0
    //     0x7eabbc: stur            w0, [x2, #0x23]
    // 0x7eabc0: r16 = 0.100000
    //     0x7eabc0: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7eabc4: ldr             x16, [x16, #0x1f8]
    // 0x7eabc8: str             x16, [SP]
    // 0x7eabcc: r1 = Instance_Color
    //     0x7eabcc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eabd0: ldr             x1, [x1, #0xb78]
    // 0x7eabd4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eabd4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eabd8: ldr             x4, [x4, #0x198]
    // 0x7eabdc: r0 = withValues()
    //     0x7eabdc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eabe0: stur            x0, [fp, #-0x10]
    // 0x7eabe4: r0 = Radius()
    //     0x7eabe4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eabe8: d0 = 10.000000
    //     0x7eabe8: fmov            d0, #10.00000000
    // 0x7eabec: stur            x0, [fp, #-0x18]
    // 0x7eabf0: StoreField: r0->field_7 = d0
    //     0x7eabf0: stur            d0, [x0, #7]
    // 0x7eabf4: StoreField: r0->field_f = d0
    //     0x7eabf4: stur            d0, [x0, #0xf]
    // 0x7eabf8: r0 = BorderRadius()
    //     0x7eabf8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eabfc: mov             x1, x0
    // 0x7eac00: ldur            x0, [fp, #-0x18]
    // 0x7eac04: stur            x1, [fp, #-0x28]
    // 0x7eac08: StoreField: r1->field_7 = r0
    //     0x7eac08: stur            w0, [x1, #7]
    // 0x7eac0c: StoreField: r1->field_b = r0
    //     0x7eac0c: stur            w0, [x1, #0xb]
    // 0x7eac10: StoreField: r1->field_f = r0
    //     0x7eac10: stur            w0, [x1, #0xf]
    // 0x7eac14: StoreField: r1->field_13 = r0
    //     0x7eac14: stur            w0, [x1, #0x13]
    // 0x7eac18: r0 = BoxDecoration()
    //     0x7eac18: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eac1c: mov             x1, x0
    // 0x7eac20: ldur            x0, [fp, #-0x10]
    // 0x7eac24: stur            x1, [fp, #-0x18]
    // 0x7eac28: StoreField: r1->field_7 = r0
    //     0x7eac28: stur            w0, [x1, #7]
    // 0x7eac2c: ldur            x0, [fp, #-0x28]
    // 0x7eac30: StoreField: r1->field_13 = r0
    //     0x7eac30: stur            w0, [x1, #0x13]
    // 0x7eac34: r0 = Instance_BoxShape
    //     0x7eac34: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eac38: ldr             x0, [x0, #0x1c8]
    // 0x7eac3c: StoreField: r1->field_23 = r0
    //     0x7eac3c: stur            w0, [x1, #0x23]
    // 0x7eac40: r0 = Icon()
    //     0x7eac40: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7eac44: mov             x1, x0
    // 0x7eac48: r0 = Instance_IconData
    //     0x7eac48: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a630] Obj!IconData@a09d01
    //     0x7eac4c: ldr             x0, [x0, #0x630]
    // 0x7eac50: stur            x1, [fp, #-0x10]
    // 0x7eac54: StoreField: r1->field_b = r0
    //     0x7eac54: stur            w0, [x1, #0xb]
    // 0x7eac58: r0 = 20.000000
    //     0x7eac58: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7eac5c: ldr             x0, [x0, #0xe48]
    // 0x7eac60: StoreField: r1->field_f = r0
    //     0x7eac60: stur            w0, [x1, #0xf]
    // 0x7eac64: r0 = Instance_Color
    //     0x7eac64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eac68: ldr             x0, [x0, #0xb78]
    // 0x7eac6c: StoreField: r1->field_23 = r0
    //     0x7eac6c: stur            w0, [x1, #0x23]
    // 0x7eac70: r0 = Container()
    //     0x7eac70: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eac74: stur            x0, [fp, #-0x28]
    // 0x7eac78: r16 = Instance_EdgeInsets
    //     0x7eac78: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7eac7c: ldr             x16, [x16, #0xde8]
    // 0x7eac80: ldur            lr, [fp, #-0x18]
    // 0x7eac84: stp             lr, x16, [SP, #8]
    // 0x7eac88: ldur            x16, [fp, #-0x10]
    // 0x7eac8c: str             x16, [SP]
    // 0x7eac90: mov             x1, x0
    // 0x7eac94: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7eac94: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7eac98: ldr             x4, [x4, #0x1e8]
    // 0x7eac9c: r0 = Container()
    //     0x7eac9c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eaca0: ldur            x0, [fp, #-8]
    // 0x7eaca4: LoadField: r1 = r0->field_b
    //     0x7eaca4: ldur            w1, [x0, #0xb]
    // 0x7eaca8: DecompressPointer r1
    //     0x7eaca8: add             x1, x1, HEAP, lsl #32
    // 0x7eacac: stur            x1, [fp, #-0x10]
    // 0x7eacb0: LoadField: r0 = r1->field_b
    //     0x7eacb0: ldur            w0, [x1, #0xb]
    // 0x7eacb4: DecompressPointer r0
    //     0x7eacb4: add             x0, x0, HEAP, lsl #32
    // 0x7eacb8: stur            x0, [fp, #-8]
    // 0x7eacbc: r0 = Text()
    //     0x7eacbc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eacc0: mov             x3, x0
    // 0x7eacc4: ldur            x0, [fp, #-8]
    // 0x7eacc8: stur            x3, [fp, #-0x18]
    // 0x7eaccc: StoreField: r3->field_b = r0
    //     0x7eaccc: stur            w0, [x3, #0xb]
    // 0x7eacd0: r0 = Instance_TextStyle
    //     0x7eacd0: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc88] Obj!TextStyle@a18d31
    //     0x7eacd4: ldr             x0, [x0, #0xc88]
    // 0x7eacd8: StoreField: r3->field_13 = r0
    //     0x7eacd8: stur            w0, [x3, #0x13]
    // 0x7eacdc: ldur            x0, [fp, #-0x10]
    // 0x7eace0: LoadField: r4 = r0->field_f
    //     0x7eace0: ldur            w4, [x0, #0xf]
    // 0x7eace4: DecompressPointer r4
    //     0x7eace4: add             x4, x4, HEAP, lsl #32
    // 0x7eace8: stur            x4, [fp, #-8]
    // 0x7eacec: r1 = _ConstMap len:12
    //     0x7eacec: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7eacf0: r2 = 1200
    //     0x7eacf0: mov             x2, #0x4b0
    // 0x7eacf4: r0 = []()
    //     0x7eacf4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7eacf8: stur            x0, [fp, #-0x10]
    // 0x7eacfc: cmp             w0, NULL
    // 0x7ead00: b.eq            #0x7eafb0
    // 0x7ead04: r0 = TextStyle()
    //     0x7ead04: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ead08: mov             x1, x0
    // 0x7ead0c: r0 = true
    //     0x7ead0c: add             x0, NULL, #0x20  ; true
    // 0x7ead10: stur            x1, [fp, #-0x30]
    // 0x7ead14: StoreField: r1->field_7 = r0
    //     0x7ead14: stur            w0, [x1, #7]
    // 0x7ead18: ldur            x2, [fp, #-0x10]
    // 0x7ead1c: StoreField: r1->field_b = r2
    //     0x7ead1c: stur            w2, [x1, #0xb]
    // 0x7ead20: r2 = 12.000000
    //     0x7ead20: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7ead24: ldr             x2, [x2, #0xae0]
    // 0x7ead28: StoreField: r1->field_1f = r2
    //     0x7ead28: stur            w2, [x1, #0x1f]
    // 0x7ead2c: r2 = 1.300000
    //     0x7ead2c: add             x2, PP, #0x18, lsl #12  ; [pp+0x18680] 1.3
    //     0x7ead30: ldr             x2, [x2, #0x680]
    // 0x7ead34: StoreField: r1->field_37 = r2
    //     0x7ead34: stur            w2, [x1, #0x37]
    // 0x7ead38: r0 = Text()
    //     0x7ead38: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ead3c: mov             x3, x0
    // 0x7ead40: ldur            x0, [fp, #-8]
    // 0x7ead44: stur            x3, [fp, #-0x10]
    // 0x7ead48: StoreField: r3->field_b = r0
    //     0x7ead48: stur            w0, [x3, #0xb]
    // 0x7ead4c: ldur            x0, [fp, #-0x30]
    // 0x7ead50: StoreField: r3->field_13 = r0
    //     0x7ead50: stur            w0, [x3, #0x13]
    // 0x7ead54: r0 = Instance_TextOverflow
    //     0x7ead54: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7ead58: ldr             x0, [x0, #0x68]
    // 0x7ead5c: StoreField: r3->field_2b = r0
    //     0x7ead5c: stur            w0, [x3, #0x2b]
    // 0x7ead60: r0 = 4
    //     0x7ead60: mov             x0, #4
    // 0x7ead64: StoreField: r3->field_37 = r0
    //     0x7ead64: stur            w0, [x3, #0x37]
    // 0x7ead68: r1 = _ConstMap len:12
    //     0x7ead68: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ead6c: r2 = 800
    //     0x7ead6c: mov             x2, #0x320
    // 0x7ead70: r0 = []()
    //     0x7ead70: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ead74: stur            x0, [fp, #-8]
    // 0x7ead78: cmp             w0, NULL
    // 0x7ead7c: b.eq            #0x7eafb4
    // 0x7ead80: r0 = TextStyle()
    //     0x7ead80: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ead84: mov             x1, x0
    // 0x7ead88: r0 = true
    //     0x7ead88: add             x0, NULL, #0x20  ; true
    // 0x7ead8c: stur            x1, [fp, #-0x30]
    // 0x7ead90: StoreField: r1->field_7 = r0
    //     0x7ead90: stur            w0, [x1, #7]
    // 0x7ead94: ldur            x0, [fp, #-8]
    // 0x7ead98: StoreField: r1->field_b = r0
    //     0x7ead98: stur            w0, [x1, #0xb]
    // 0x7ead9c: r0 = 10.000000
    //     0x7ead9c: ldr             x0, [PP, #0x6cc0]  ; [pp+0x6cc0] 10
    // 0x7eada0: StoreField: r1->field_1f = r0
    //     0x7eada0: stur            w0, [x1, #0x1f]
    // 0x7eada4: r0 = Text()
    //     0x7eada4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eada8: mov             x3, x0
    // 0x7eadac: r0 = ""
    //     0x7eadac: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7eadb0: stur            x3, [fp, #-8]
    // 0x7eadb4: StoreField: r3->field_b = r0
    //     0x7eadb4: stur            w0, [x3, #0xb]
    // 0x7eadb8: ldur            x0, [fp, #-0x30]
    // 0x7eadbc: StoreField: r3->field_13 = r0
    //     0x7eadbc: stur            w0, [x3, #0x13]
    // 0x7eadc0: r1 = Null
    //     0x7eadc0: mov             x1, NULL
    // 0x7eadc4: r2 = 10
    //     0x7eadc4: mov             x2, #0xa
    // 0x7eadc8: r0 = AllocateArray()
    //     0x7eadc8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eadcc: mov             x2, x0
    // 0x7eadd0: ldur            x0, [fp, #-0x18]
    // 0x7eadd4: stur            x2, [fp, #-0x30]
    // 0x7eadd8: StoreField: r2->field_f = r0
    //     0x7eadd8: stur            w0, [x2, #0xf]
    // 0x7eaddc: r16 = Instance_SizedBox
    //     0x7eaddc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7eade0: ldr             x16, [x16, #0x338]
    // 0x7eade4: StoreField: r2->field_13 = r16
    //     0x7eade4: stur            w16, [x2, #0x13]
    // 0x7eade8: ldur            x0, [fp, #-0x10]
    // 0x7eadec: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eadec: stur            w0, [x2, #0x17]
    // 0x7eadf0: r16 = Instance_SizedBox
    //     0x7eadf0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc80] Obj!SizedBox@a1fd51
    //     0x7eadf4: ldr             x16, [x16, #0xc80]
    // 0x7eadf8: StoreField: r2->field_1b = r16
    //     0x7eadf8: stur            w16, [x2, #0x1b]
    // 0x7eadfc: ldur            x0, [fp, #-8]
    // 0x7eae00: StoreField: r2->field_1f = r0
    //     0x7eae00: stur            w0, [x2, #0x1f]
    // 0x7eae04: r1 = <Widget>
    //     0x7eae04: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eae08: r0 = AllocateGrowableArray()
    //     0x7eae08: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eae0c: mov             x1, x0
    // 0x7eae10: ldur            x0, [fp, #-0x30]
    // 0x7eae14: stur            x1, [fp, #-8]
    // 0x7eae18: StoreField: r1->field_f = r0
    //     0x7eae18: stur            w0, [x1, #0xf]
    // 0x7eae1c: r0 = 10
    //     0x7eae1c: mov             x0, #0xa
    // 0x7eae20: StoreField: r1->field_b = r0
    //     0x7eae20: stur            w0, [x1, #0xb]
    // 0x7eae24: r0 = Column()
    //     0x7eae24: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7eae28: mov             x2, x0
    // 0x7eae2c: r0 = Instance_Axis
    //     0x7eae2c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7eae30: stur            x2, [fp, #-0x10]
    // 0x7eae34: StoreField: r2->field_f = r0
    //     0x7eae34: stur            w0, [x2, #0xf]
    // 0x7eae38: r0 = Instance_MainAxisAlignment
    //     0x7eae38: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7eae3c: ldr             x0, [x0, #0x230]
    // 0x7eae40: StoreField: r2->field_13 = r0
    //     0x7eae40: stur            w0, [x2, #0x13]
    // 0x7eae44: r3 = Instance_MainAxisSize
    //     0x7eae44: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eae48: ldr             x3, [x3, #0x330]
    // 0x7eae4c: ArrayStore: r2[0] = r3  ; List_4
    //     0x7eae4c: stur            w3, [x2, #0x17]
    // 0x7eae50: r4 = Instance_CrossAxisAlignment
    //     0x7eae50: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7eae54: ldr             x4, [x4, #0x238]
    // 0x7eae58: StoreField: r2->field_1b = r4
    //     0x7eae58: stur            w4, [x2, #0x1b]
    // 0x7eae5c: r5 = Instance_VerticalDirection
    //     0x7eae5c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eae60: ldr             x5, [x5, #0x340]
    // 0x7eae64: StoreField: r2->field_23 = r5
    //     0x7eae64: stur            w5, [x2, #0x23]
    // 0x7eae68: r6 = Instance_Clip
    //     0x7eae68: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eae6c: ldr             x6, [x6, #0x348]
    // 0x7eae70: StoreField: r2->field_2b = r6
    //     0x7eae70: stur            w6, [x2, #0x2b]
    // 0x7eae74: StoreField: r2->field_2f = rZR
    //     0x7eae74: stur            xzr, [x2, #0x2f]
    // 0x7eae78: ldur            x1, [fp, #-8]
    // 0x7eae7c: StoreField: r2->field_b = r1
    //     0x7eae7c: stur            w1, [x2, #0xb]
    // 0x7eae80: r1 = <FlexParentData>
    //     0x7eae80: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7eae84: ldr             x1, [x1, #0x340]
    // 0x7eae88: r0 = Expanded()
    //     0x7eae88: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7eae8c: mov             x3, x0
    // 0x7eae90: r0 = 1
    //     0x7eae90: mov             x0, #1
    // 0x7eae94: stur            x3, [fp, #-8]
    // 0x7eae98: StoreField: r3->field_13 = r0
    //     0x7eae98: stur            x0, [x3, #0x13]
    // 0x7eae9c: r0 = Instance_FlexFit
    //     0x7eae9c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7eaea0: ldr             x0, [x0, #0x348]
    // 0x7eaea4: StoreField: r3->field_1b = r0
    //     0x7eaea4: stur            w0, [x3, #0x1b]
    // 0x7eaea8: ldur            x0, [fp, #-0x10]
    // 0x7eaeac: StoreField: r3->field_b = r0
    //     0x7eaeac: stur            w0, [x3, #0xb]
    // 0x7eaeb0: r1 = Null
    //     0x7eaeb0: mov             x1, NULL
    // 0x7eaeb4: r2 = 6
    //     0x7eaeb4: mov             x2, #6
    // 0x7eaeb8: r0 = AllocateArray()
    //     0x7eaeb8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eaebc: mov             x2, x0
    // 0x7eaec0: ldur            x0, [fp, #-0x28]
    // 0x7eaec4: stur            x2, [fp, #-0x10]
    // 0x7eaec8: StoreField: r2->field_f = r0
    //     0x7eaec8: stur            w0, [x2, #0xf]
    // 0x7eaecc: r16 = Instance_SizedBox
    //     0x7eaecc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7eaed0: ldr             x16, [x16, #0x360]
    // 0x7eaed4: StoreField: r2->field_13 = r16
    //     0x7eaed4: stur            w16, [x2, #0x13]
    // 0x7eaed8: ldur            x0, [fp, #-8]
    // 0x7eaedc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eaedc: stur            w0, [x2, #0x17]
    // 0x7eaee0: r1 = <Widget>
    //     0x7eaee0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eaee4: r0 = AllocateGrowableArray()
    //     0x7eaee4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eaee8: mov             x1, x0
    // 0x7eaeec: ldur            x0, [fp, #-0x10]
    // 0x7eaef0: stur            x1, [fp, #-8]
    // 0x7eaef4: StoreField: r1->field_f = r0
    //     0x7eaef4: stur            w0, [x1, #0xf]
    // 0x7eaef8: r0 = 6
    //     0x7eaef8: mov             x0, #6
    // 0x7eaefc: StoreField: r1->field_b = r0
    //     0x7eaefc: stur            w0, [x1, #0xb]
    // 0x7eaf00: r0 = Row()
    //     0x7eaf00: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7eaf04: mov             x1, x0
    // 0x7eaf08: r0 = Instance_Axis
    //     0x7eaf08: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7eaf0c: stur            x1, [fp, #-0x10]
    // 0x7eaf10: StoreField: r1->field_f = r0
    //     0x7eaf10: stur            w0, [x1, #0xf]
    // 0x7eaf14: r0 = Instance_MainAxisAlignment
    //     0x7eaf14: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7eaf18: ldr             x0, [x0, #0x230]
    // 0x7eaf1c: StoreField: r1->field_13 = r0
    //     0x7eaf1c: stur            w0, [x1, #0x13]
    // 0x7eaf20: r0 = Instance_MainAxisSize
    //     0x7eaf20: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eaf24: ldr             x0, [x0, #0x330]
    // 0x7eaf28: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eaf28: stur            w0, [x1, #0x17]
    // 0x7eaf2c: r0 = Instance_CrossAxisAlignment
    //     0x7eaf2c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7eaf30: ldr             x0, [x0, #0x238]
    // 0x7eaf34: StoreField: r1->field_1b = r0
    //     0x7eaf34: stur            w0, [x1, #0x1b]
    // 0x7eaf38: r0 = Instance_VerticalDirection
    //     0x7eaf38: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eaf3c: ldr             x0, [x0, #0x340]
    // 0x7eaf40: StoreField: r1->field_23 = r0
    //     0x7eaf40: stur            w0, [x1, #0x23]
    // 0x7eaf44: r0 = Instance_Clip
    //     0x7eaf44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eaf48: ldr             x0, [x0, #0x348]
    // 0x7eaf4c: StoreField: r1->field_2b = r0
    //     0x7eaf4c: stur            w0, [x1, #0x2b]
    // 0x7eaf50: StoreField: r1->field_2f = rZR
    //     0x7eaf50: stur            xzr, [x1, #0x2f]
    // 0x7eaf54: ldur            x0, [fp, #-8]
    // 0x7eaf58: StoreField: r1->field_b = r0
    //     0x7eaf58: stur            w0, [x1, #0xb]
    // 0x7eaf5c: r0 = Container()
    //     0x7eaf5c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eaf60: stur            x0, [fp, #-8]
    // 0x7eaf64: r16 = Instance_EdgeInsets
    //     0x7eaf64: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7eaf68: ldr             x16, [x16, #0xf18]
    // 0x7eaf6c: r30 = Instance_EdgeInsets
    //     0x7eaf6c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7eaf70: ldr             lr, [lr, #0x370]
    // 0x7eaf74: stp             lr, x16, [SP, #0x10]
    // 0x7eaf78: ldur            x16, [fp, #-0x20]
    // 0x7eaf7c: ldur            lr, [fp, #-0x10]
    // 0x7eaf80: stp             lr, x16, [SP]
    // 0x7eaf84: mov             x1, x0
    // 0x7eaf88: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x7eaf88: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x7eaf8c: ldr             x4, [x4, #0x628]
    // 0x7eaf90: r0 = Container()
    //     0x7eaf90: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eaf94: ldur            x0, [fp, #-8]
    // 0x7eaf98: LeaveFrame
    //     0x7eaf98: mov             SP, fp
    //     0x7eaf9c: ldp             fp, lr, [SP], #0x10
    // 0x7eafa0: ret
    //     0x7eafa0: ret             
    // 0x7eafa4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eafa4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eafa8: b               #0x7eaa2c
    // 0x7eafac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7eafac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7eafb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7eafb0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7eafb4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7eafb4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

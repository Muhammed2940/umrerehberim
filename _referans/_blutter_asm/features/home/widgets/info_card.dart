// lib: , url: package:umrem_demo/features/home/widgets/info_card.dart

// class id: 1049592, size: 0x8
class :: {
}

// class id: 2901, size: 0x1c, field offset: 0xc
//   const constructor, 
class InfoCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7eb724, size: 0x56c
    // 0x7eb724: EnterFrame
    //     0x7eb724: stp             fp, lr, [SP, #-0x10]!
    //     0x7eb728: mov             fp, SP
    // 0x7eb72c: AllocStack(0x50)
    //     0x7eb72c: sub             SP, SP, #0x50
    // 0x7eb730: SetupParameters(InfoCard this /* r1 => r1, fp-0x8 */)
    //     0x7eb730: stur            x1, [fp, #-8]
    // 0x7eb734: CheckStackOverflow
    //     0x7eb734: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eb738: cmp             SP, x16
    //     0x7eb73c: b.ls            #0x7ebc80
    // 0x7eb740: r0 = Radius()
    //     0x7eb740: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eb744: d0 = 16.000000
    //     0x7eb744: fmov            d0, #16.00000000
    // 0x7eb748: stur            x0, [fp, #-0x10]
    // 0x7eb74c: StoreField: r0->field_7 = d0
    //     0x7eb74c: stur            d0, [x0, #7]
    // 0x7eb750: StoreField: r0->field_f = d0
    //     0x7eb750: stur            d0, [x0, #0xf]
    // 0x7eb754: r0 = BorderRadius()
    //     0x7eb754: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eb758: mov             x3, x0
    // 0x7eb75c: ldur            x0, [fp, #-0x10]
    // 0x7eb760: stur            x3, [fp, #-0x18]
    // 0x7eb764: StoreField: r3->field_7 = r0
    //     0x7eb764: stur            w0, [x3, #7]
    // 0x7eb768: StoreField: r3->field_b = r0
    //     0x7eb768: stur            w0, [x3, #0xb]
    // 0x7eb76c: StoreField: r3->field_f = r0
    //     0x7eb76c: stur            w0, [x3, #0xf]
    // 0x7eb770: StoreField: r3->field_13 = r0
    //     0x7eb770: stur            w0, [x3, #0x13]
    // 0x7eb774: r1 = _ConstMap len:12
    //     0x7eb774: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7eb778: r2 = 400
    //     0x7eb778: mov             x2, #0x190
    // 0x7eb77c: r0 = []()
    //     0x7eb77c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7eb780: cmp             w0, NULL
    // 0x7eb784: b.eq            #0x7ebc88
    // 0x7eb788: r16 = 1.000000
    //     0x7eb788: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7eb78c: stp             x16, x0, [SP]
    // 0x7eb790: r1 = Null
    //     0x7eb790: mov             x1, NULL
    // 0x7eb794: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7eb794: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7eb798: ldr             x4, [x4, #0x208]
    // 0x7eb79c: r0 = Border.all()
    //     0x7eb79c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7eb7a0: stur            x0, [fp, #-0x10]
    // 0x7eb7a4: r16 = 0.080000
    //     0x7eb7a4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x7eb7a8: ldr             x16, [x16, #0xe30]
    // 0x7eb7ac: str             x16, [SP]
    // 0x7eb7b0: r1 = Instance_Color
    //     0x7eb7b0: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eb7b4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb7b4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb7b8: ldr             x4, [x4, #0x198]
    // 0x7eb7bc: r0 = withValues()
    //     0x7eb7bc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb7c0: stur            x0, [fp, #-0x20]
    // 0x7eb7c4: r0 = BoxShadow()
    //     0x7eb7c4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eb7c8: d0 = 2.000000
    //     0x7eb7c8: fmov            d0, #2.00000000
    // 0x7eb7cc: stur            x0, [fp, #-0x28]
    // 0x7eb7d0: ArrayStore: r0[0] = d0  ; List_8
    //     0x7eb7d0: stur            d0, [x0, #0x17]
    // 0x7eb7d4: r2 = Instance_BlurStyle
    //     0x7eb7d4: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eb7d8: ldr             x2, [x2, #0x9b0]
    // 0x7eb7dc: StoreField: r0->field_1f = r2
    //     0x7eb7dc: stur            w2, [x0, #0x1f]
    // 0x7eb7e0: ldur            x1, [fp, #-0x20]
    // 0x7eb7e4: StoreField: r0->field_7 = r1
    //     0x7eb7e4: stur            w1, [x0, #7]
    // 0x7eb7e8: r1 = Instance_Offset
    //     0x7eb7e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7eb7ec: ldr             x1, [x1, #0x9b8]
    // 0x7eb7f0: StoreField: r0->field_b = r1
    //     0x7eb7f0: stur            w1, [x0, #0xb]
    // 0x7eb7f4: d0 = 16.000000
    //     0x7eb7f4: fmov            d0, #16.00000000
    // 0x7eb7f8: StoreField: r0->field_f = d0
    //     0x7eb7f8: stur            d0, [x0, #0xf]
    // 0x7eb7fc: r16 = 0.150000
    //     0x7eb7fc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7eb800: ldr             x16, [x16, #0xe38]
    // 0x7eb804: str             x16, [SP]
    // 0x7eb808: r1 = Instance_Color
    //     0x7eb808: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eb80c: ldr             x1, [x1, #0xb78]
    // 0x7eb810: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb810: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb814: ldr             x4, [x4, #0x198]
    // 0x7eb818: r0 = withValues()
    //     0x7eb818: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb81c: stur            x0, [fp, #-0x20]
    // 0x7eb820: r0 = BoxShadow()
    //     0x7eb820: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eb824: stur            x0, [fp, #-0x30]
    // 0x7eb828: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7eb828: stur            xzr, [x0, #0x17]
    // 0x7eb82c: r1 = Instance_BlurStyle
    //     0x7eb82c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eb830: ldr             x1, [x1, #0x9b0]
    // 0x7eb834: StoreField: r0->field_1f = r1
    //     0x7eb834: stur            w1, [x0, #0x1f]
    // 0x7eb838: ldur            x1, [fp, #-0x20]
    // 0x7eb83c: StoreField: r0->field_7 = r1
    //     0x7eb83c: stur            w1, [x0, #7]
    // 0x7eb840: r1 = Instance_Offset
    //     0x7eb840: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x7eb844: ldr             x1, [x1, #0xe40]
    // 0x7eb848: StoreField: r0->field_b = r1
    //     0x7eb848: stur            w1, [x0, #0xb]
    // 0x7eb84c: d0 = 24.000000
    //     0x7eb84c: fmov            d0, #24.00000000
    // 0x7eb850: StoreField: r0->field_f = d0
    //     0x7eb850: stur            d0, [x0, #0xf]
    // 0x7eb854: r1 = Null
    //     0x7eb854: mov             x1, NULL
    // 0x7eb858: r2 = 4
    //     0x7eb858: mov             x2, #4
    // 0x7eb85c: r0 = AllocateArray()
    //     0x7eb85c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb860: mov             x2, x0
    // 0x7eb864: ldur            x0, [fp, #-0x28]
    // 0x7eb868: stur            x2, [fp, #-0x20]
    // 0x7eb86c: StoreField: r2->field_f = r0
    //     0x7eb86c: stur            w0, [x2, #0xf]
    // 0x7eb870: ldur            x0, [fp, #-0x30]
    // 0x7eb874: StoreField: r2->field_13 = r0
    //     0x7eb874: stur            w0, [x2, #0x13]
    // 0x7eb878: r1 = <BoxShadow>
    //     0x7eb878: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7eb87c: ldr             x1, [x1, #0x9c0]
    // 0x7eb880: r0 = AllocateGrowableArray()
    //     0x7eb880: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb884: mov             x1, x0
    // 0x7eb888: ldur            x0, [fp, #-0x20]
    // 0x7eb88c: stur            x1, [fp, #-0x28]
    // 0x7eb890: StoreField: r1->field_f = r0
    //     0x7eb890: stur            w0, [x1, #0xf]
    // 0x7eb894: r0 = 4
    //     0x7eb894: mov             x0, #4
    // 0x7eb898: StoreField: r1->field_b = r0
    //     0x7eb898: stur            w0, [x1, #0xb]
    // 0x7eb89c: r0 = BoxDecoration()
    //     0x7eb89c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eb8a0: mov             x2, x0
    // 0x7eb8a4: r0 = Instance_Color
    //     0x7eb8a4: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7eb8a8: stur            x2, [fp, #-0x20]
    // 0x7eb8ac: StoreField: r2->field_7 = r0
    //     0x7eb8ac: stur            w0, [x2, #7]
    // 0x7eb8b0: ldur            x0, [fp, #-0x10]
    // 0x7eb8b4: StoreField: r2->field_f = r0
    //     0x7eb8b4: stur            w0, [x2, #0xf]
    // 0x7eb8b8: ldur            x0, [fp, #-0x18]
    // 0x7eb8bc: StoreField: r2->field_13 = r0
    //     0x7eb8bc: stur            w0, [x2, #0x13]
    // 0x7eb8c0: ldur            x0, [fp, #-0x28]
    // 0x7eb8c4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb8c4: stur            w0, [x2, #0x17]
    // 0x7eb8c8: r0 = Instance_BoxShape
    //     0x7eb8c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eb8cc: ldr             x0, [x0, #0x1c8]
    // 0x7eb8d0: StoreField: r2->field_23 = r0
    //     0x7eb8d0: stur            w0, [x2, #0x23]
    // 0x7eb8d4: r16 = 0.100000
    //     0x7eb8d4: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7eb8d8: ldr             x16, [x16, #0x1f8]
    // 0x7eb8dc: str             x16, [SP]
    // 0x7eb8e0: r1 = Instance_Color
    //     0x7eb8e0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eb8e4: ldr             x1, [x1, #0xb78]
    // 0x7eb8e8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb8e8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb8ec: ldr             x4, [x4, #0x198]
    // 0x7eb8f0: r0 = withValues()
    //     0x7eb8f0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb8f4: stur            x0, [fp, #-0x10]
    // 0x7eb8f8: r0 = Radius()
    //     0x7eb8f8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eb8fc: d0 = 12.000000
    //     0x7eb8fc: fmov            d0, #12.00000000
    // 0x7eb900: stur            x0, [fp, #-0x18]
    // 0x7eb904: StoreField: r0->field_7 = d0
    //     0x7eb904: stur            d0, [x0, #7]
    // 0x7eb908: StoreField: r0->field_f = d0
    //     0x7eb908: stur            d0, [x0, #0xf]
    // 0x7eb90c: r0 = BorderRadius()
    //     0x7eb90c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eb910: mov             x1, x0
    // 0x7eb914: ldur            x0, [fp, #-0x18]
    // 0x7eb918: stur            x1, [fp, #-0x28]
    // 0x7eb91c: StoreField: r1->field_7 = r0
    //     0x7eb91c: stur            w0, [x1, #7]
    // 0x7eb920: StoreField: r1->field_b = r0
    //     0x7eb920: stur            w0, [x1, #0xb]
    // 0x7eb924: StoreField: r1->field_f = r0
    //     0x7eb924: stur            w0, [x1, #0xf]
    // 0x7eb928: StoreField: r1->field_13 = r0
    //     0x7eb928: stur            w0, [x1, #0x13]
    // 0x7eb92c: r0 = BoxDecoration()
    //     0x7eb92c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eb930: mov             x1, x0
    // 0x7eb934: ldur            x0, [fp, #-0x10]
    // 0x7eb938: stur            x1, [fp, #-0x18]
    // 0x7eb93c: StoreField: r1->field_7 = r0
    //     0x7eb93c: stur            w0, [x1, #7]
    // 0x7eb940: ldur            x0, [fp, #-0x28]
    // 0x7eb944: StoreField: r1->field_13 = r0
    //     0x7eb944: stur            w0, [x1, #0x13]
    // 0x7eb948: r0 = Instance_BoxShape
    //     0x7eb948: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eb94c: ldr             x0, [x0, #0x1c8]
    // 0x7eb950: StoreField: r1->field_23 = r0
    //     0x7eb950: stur            w0, [x1, #0x23]
    // 0x7eb954: ldur            x0, [fp, #-8]
    // 0x7eb958: LoadField: r2 = r0->field_b
    //     0x7eb958: ldur            w2, [x0, #0xb]
    // 0x7eb95c: DecompressPointer r2
    //     0x7eb95c: add             x2, x2, HEAP, lsl #32
    // 0x7eb960: stur            x2, [fp, #-0x10]
    // 0x7eb964: r0 = Icon()
    //     0x7eb964: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7eb968: mov             x1, x0
    // 0x7eb96c: ldur            x0, [fp, #-0x10]
    // 0x7eb970: stur            x1, [fp, #-0x28]
    // 0x7eb974: StoreField: r1->field_b = r0
    //     0x7eb974: stur            w0, [x1, #0xb]
    // 0x7eb978: r0 = 24.000000
    //     0x7eb978: add             x0, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x7eb97c: ldr             x0, [x0, #0xf28]
    // 0x7eb980: StoreField: r1->field_f = r0
    //     0x7eb980: stur            w0, [x1, #0xf]
    // 0x7eb984: r0 = Instance_Color
    //     0x7eb984: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eb988: ldr             x0, [x0, #0xb78]
    // 0x7eb98c: StoreField: r1->field_23 = r0
    //     0x7eb98c: stur            w0, [x1, #0x23]
    // 0x7eb990: r0 = Container()
    //     0x7eb990: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eb994: stur            x0, [fp, #-0x10]
    // 0x7eb998: r16 = 48.000000
    //     0x7eb998: add             x16, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7eb99c: ldr             x16, [x16, #0x948]
    // 0x7eb9a0: r30 = 48.000000
    //     0x7eb9a0: add             lr, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7eb9a4: ldr             lr, [lr, #0x948]
    // 0x7eb9a8: stp             lr, x16, [SP, #0x10]
    // 0x7eb9ac: ldur            x16, [fp, #-0x18]
    // 0x7eb9b0: ldur            lr, [fp, #-0x28]
    // 0x7eb9b4: stp             lr, x16, [SP]
    // 0x7eb9b8: mov             x1, x0
    // 0x7eb9bc: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x7eb9bc: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7eb9c0: ldr             x4, [x4, #0x990]
    // 0x7eb9c4: r0 = Container()
    //     0x7eb9c4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eb9c8: ldur            x0, [fp, #-8]
    // 0x7eb9cc: LoadField: r3 = r0->field_f
    //     0x7eb9cc: ldur            w3, [x0, #0xf]
    // 0x7eb9d0: DecompressPointer r3
    //     0x7eb9d0: add             x3, x3, HEAP, lsl #32
    // 0x7eb9d4: stur            x3, [fp, #-0x18]
    // 0x7eb9d8: r1 = _ConstMap len:12
    //     0x7eb9d8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7eb9dc: r2 = 1200
    //     0x7eb9dc: mov             x2, #0x4b0
    // 0x7eb9e0: r0 = []()
    //     0x7eb9e0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7eb9e4: stur            x0, [fp, #-0x28]
    // 0x7eb9e8: cmp             w0, NULL
    // 0x7eb9ec: b.eq            #0x7ebc8c
    // 0x7eb9f0: r0 = TextStyle()
    //     0x7eb9f0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7eb9f4: mov             x1, x0
    // 0x7eb9f8: r0 = true
    //     0x7eb9f8: add             x0, NULL, #0x20  ; true
    // 0x7eb9fc: stur            x1, [fp, #-0x30]
    // 0x7eba00: StoreField: r1->field_7 = r0
    //     0x7eba00: stur            w0, [x1, #7]
    // 0x7eba04: ldur            x2, [fp, #-0x28]
    // 0x7eba08: StoreField: r1->field_b = r2
    //     0x7eba08: stur            w2, [x1, #0xb]
    // 0x7eba0c: r2 = 12.000000
    //     0x7eba0c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7eba10: ldr             x2, [x2, #0xae0]
    // 0x7eba14: StoreField: r1->field_1f = r2
    //     0x7eba14: stur            w2, [x1, #0x1f]
    // 0x7eba18: r2 = Instance_FontWeight
    //     0x7eba18: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x7eba1c: ldr             x2, [x2, #0x5d0]
    // 0x7eba20: StoreField: r1->field_23 = r2
    //     0x7eba20: stur            w2, [x1, #0x23]
    // 0x7eba24: r0 = Text()
    //     0x7eba24: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eba28: mov             x1, x0
    // 0x7eba2c: ldur            x0, [fp, #-0x18]
    // 0x7eba30: stur            x1, [fp, #-0x28]
    // 0x7eba34: StoreField: r1->field_b = r0
    //     0x7eba34: stur            w0, [x1, #0xb]
    // 0x7eba38: ldur            x0, [fp, #-0x30]
    // 0x7eba3c: StoreField: r1->field_13 = r0
    //     0x7eba3c: stur            w0, [x1, #0x13]
    // 0x7eba40: ldur            x0, [fp, #-8]
    // 0x7eba44: LoadField: r2 = r0->field_13
    //     0x7eba44: ldur            w2, [x0, #0x13]
    // 0x7eba48: DecompressPointer r2
    //     0x7eba48: add             x2, x2, HEAP, lsl #32
    // 0x7eba4c: stur            x2, [fp, #-0x18]
    // 0x7eba50: r0 = TextStyle()
    //     0x7eba50: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7eba54: mov             x1, x0
    // 0x7eba58: r0 = true
    //     0x7eba58: add             x0, NULL, #0x20  ; true
    // 0x7eba5c: stur            x1, [fp, #-8]
    // 0x7eba60: StoreField: r1->field_7 = r0
    //     0x7eba60: stur            w0, [x1, #7]
    // 0x7eba64: r0 = Instance_Color
    //     0x7eba64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7eba68: ldr             x0, [x0, #0xb88]
    // 0x7eba6c: StoreField: r1->field_b = r0
    //     0x7eba6c: stur            w0, [x1, #0xb]
    // 0x7eba70: r0 = 14.000000
    //     0x7eba70: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7eba74: ldr             x0, [x0, #0x1c8]
    // 0x7eba78: StoreField: r1->field_1f = r0
    //     0x7eba78: stur            w0, [x1, #0x1f]
    // 0x7eba7c: r0 = Instance_FontWeight
    //     0x7eba7c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7eba80: ldr             x0, [x0, #0x990]
    // 0x7eba84: StoreField: r1->field_23 = r0
    //     0x7eba84: stur            w0, [x1, #0x23]
    // 0x7eba88: r0 = Text()
    //     0x7eba88: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eba8c: mov             x3, x0
    // 0x7eba90: ldur            x0, [fp, #-0x18]
    // 0x7eba94: stur            x3, [fp, #-0x30]
    // 0x7eba98: StoreField: r3->field_b = r0
    //     0x7eba98: stur            w0, [x3, #0xb]
    // 0x7eba9c: ldur            x0, [fp, #-8]
    // 0x7ebaa0: StoreField: r3->field_13 = r0
    //     0x7ebaa0: stur            w0, [x3, #0x13]
    // 0x7ebaa4: r0 = Instance_TextOverflow
    //     0x7ebaa4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7ebaa8: ldr             x0, [x0, #0x68]
    // 0x7ebaac: StoreField: r3->field_2b = r0
    //     0x7ebaac: stur            w0, [x3, #0x2b]
    // 0x7ebab0: r0 = 6
    //     0x7ebab0: mov             x0, #6
    // 0x7ebab4: StoreField: r3->field_37 = r0
    //     0x7ebab4: stur            w0, [x3, #0x37]
    // 0x7ebab8: mov             x2, x0
    // 0x7ebabc: r1 = Null
    //     0x7ebabc: mov             x1, NULL
    // 0x7ebac0: r0 = AllocateArray()
    //     0x7ebac0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ebac4: mov             x2, x0
    // 0x7ebac8: ldur            x0, [fp, #-0x28]
    // 0x7ebacc: stur            x2, [fp, #-8]
    // 0x7ebad0: StoreField: r2->field_f = r0
    //     0x7ebad0: stur            w0, [x2, #0xf]
    // 0x7ebad4: r16 = Instance_SizedBox
    //     0x7ebad4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7ebad8: ldr             x16, [x16, #0x338]
    // 0x7ebadc: StoreField: r2->field_13 = r16
    //     0x7ebadc: stur            w16, [x2, #0x13]
    // 0x7ebae0: ldur            x0, [fp, #-0x30]
    // 0x7ebae4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ebae4: stur            w0, [x2, #0x17]
    // 0x7ebae8: r1 = <Widget>
    //     0x7ebae8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ebaec: r0 = AllocateGrowableArray()
    //     0x7ebaec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ebaf0: mov             x1, x0
    // 0x7ebaf4: ldur            x0, [fp, #-8]
    // 0x7ebaf8: stur            x1, [fp, #-0x18]
    // 0x7ebafc: StoreField: r1->field_f = r0
    //     0x7ebafc: stur            w0, [x1, #0xf]
    // 0x7ebb00: r2 = 6
    //     0x7ebb00: mov             x2, #6
    // 0x7ebb04: StoreField: r1->field_b = r2
    //     0x7ebb04: stur            w2, [x1, #0xb]
    // 0x7ebb08: r0 = Column()
    //     0x7ebb08: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ebb0c: mov             x2, x0
    // 0x7ebb10: r0 = Instance_Axis
    //     0x7ebb10: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ebb14: stur            x2, [fp, #-8]
    // 0x7ebb18: StoreField: r2->field_f = r0
    //     0x7ebb18: stur            w0, [x2, #0xf]
    // 0x7ebb1c: r0 = Instance_MainAxisAlignment
    //     0x7ebb1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ebb20: ldr             x0, [x0, #0x230]
    // 0x7ebb24: StoreField: r2->field_13 = r0
    //     0x7ebb24: stur            w0, [x2, #0x13]
    // 0x7ebb28: r3 = Instance_MainAxisSize
    //     0x7ebb28: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ebb2c: ldr             x3, [x3, #0x330]
    // 0x7ebb30: ArrayStore: r2[0] = r3  ; List_4
    //     0x7ebb30: stur            w3, [x2, #0x17]
    // 0x7ebb34: r1 = Instance_CrossAxisAlignment
    //     0x7ebb34: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ebb38: ldr             x1, [x1, #0x238]
    // 0x7ebb3c: StoreField: r2->field_1b = r1
    //     0x7ebb3c: stur            w1, [x2, #0x1b]
    // 0x7ebb40: r4 = Instance_VerticalDirection
    //     0x7ebb40: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ebb44: ldr             x4, [x4, #0x340]
    // 0x7ebb48: StoreField: r2->field_23 = r4
    //     0x7ebb48: stur            w4, [x2, #0x23]
    // 0x7ebb4c: r5 = Instance_Clip
    //     0x7ebb4c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ebb50: ldr             x5, [x5, #0x348]
    // 0x7ebb54: StoreField: r2->field_2b = r5
    //     0x7ebb54: stur            w5, [x2, #0x2b]
    // 0x7ebb58: StoreField: r2->field_2f = rZR
    //     0x7ebb58: stur            xzr, [x2, #0x2f]
    // 0x7ebb5c: ldur            x1, [fp, #-0x18]
    // 0x7ebb60: StoreField: r2->field_b = r1
    //     0x7ebb60: stur            w1, [x2, #0xb]
    // 0x7ebb64: r1 = <FlexParentData>
    //     0x7ebb64: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7ebb68: ldr             x1, [x1, #0x340]
    // 0x7ebb6c: r0 = Expanded()
    //     0x7ebb6c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7ebb70: mov             x3, x0
    // 0x7ebb74: r0 = 1
    //     0x7ebb74: mov             x0, #1
    // 0x7ebb78: stur            x3, [fp, #-0x18]
    // 0x7ebb7c: StoreField: r3->field_13 = r0
    //     0x7ebb7c: stur            x0, [x3, #0x13]
    // 0x7ebb80: r0 = Instance_FlexFit
    //     0x7ebb80: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7ebb84: ldr             x0, [x0, #0x348]
    // 0x7ebb88: StoreField: r3->field_1b = r0
    //     0x7ebb88: stur            w0, [x3, #0x1b]
    // 0x7ebb8c: ldur            x0, [fp, #-8]
    // 0x7ebb90: StoreField: r3->field_b = r0
    //     0x7ebb90: stur            w0, [x3, #0xb]
    // 0x7ebb94: r1 = Null
    //     0x7ebb94: mov             x1, NULL
    // 0x7ebb98: r2 = 6
    //     0x7ebb98: mov             x2, #6
    // 0x7ebb9c: r0 = AllocateArray()
    //     0x7ebb9c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ebba0: mov             x2, x0
    // 0x7ebba4: ldur            x0, [fp, #-0x10]
    // 0x7ebba8: stur            x2, [fp, #-8]
    // 0x7ebbac: StoreField: r2->field_f = r0
    //     0x7ebbac: stur            w0, [x2, #0xf]
    // 0x7ebbb0: r16 = Instance_SizedBox
    //     0x7ebbb0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7ebbb4: ldr             x16, [x16, #0x360]
    // 0x7ebbb8: StoreField: r2->field_13 = r16
    //     0x7ebbb8: stur            w16, [x2, #0x13]
    // 0x7ebbbc: ldur            x0, [fp, #-0x18]
    // 0x7ebbc0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ebbc0: stur            w0, [x2, #0x17]
    // 0x7ebbc4: r1 = <Widget>
    //     0x7ebbc4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ebbc8: r0 = AllocateGrowableArray()
    //     0x7ebbc8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ebbcc: mov             x1, x0
    // 0x7ebbd0: ldur            x0, [fp, #-8]
    // 0x7ebbd4: stur            x1, [fp, #-0x10]
    // 0x7ebbd8: StoreField: r1->field_f = r0
    //     0x7ebbd8: stur            w0, [x1, #0xf]
    // 0x7ebbdc: r0 = 6
    //     0x7ebbdc: mov             x0, #6
    // 0x7ebbe0: StoreField: r1->field_b = r0
    //     0x7ebbe0: stur            w0, [x1, #0xb]
    // 0x7ebbe4: r0 = Row()
    //     0x7ebbe4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7ebbe8: mov             x1, x0
    // 0x7ebbec: r0 = Instance_Axis
    //     0x7ebbec: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7ebbf0: stur            x1, [fp, #-8]
    // 0x7ebbf4: StoreField: r1->field_f = r0
    //     0x7ebbf4: stur            w0, [x1, #0xf]
    // 0x7ebbf8: r0 = Instance_MainAxisAlignment
    //     0x7ebbf8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ebbfc: ldr             x0, [x0, #0x230]
    // 0x7ebc00: StoreField: r1->field_13 = r0
    //     0x7ebc00: stur            w0, [x1, #0x13]
    // 0x7ebc04: r0 = Instance_MainAxisSize
    //     0x7ebc04: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ebc08: ldr             x0, [x0, #0x330]
    // 0x7ebc0c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ebc0c: stur            w0, [x1, #0x17]
    // 0x7ebc10: r0 = Instance_CrossAxisAlignment
    //     0x7ebc10: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ebc14: ldr             x0, [x0, #0x338]
    // 0x7ebc18: StoreField: r1->field_1b = r0
    //     0x7ebc18: stur            w0, [x1, #0x1b]
    // 0x7ebc1c: r0 = Instance_VerticalDirection
    //     0x7ebc1c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ebc20: ldr             x0, [x0, #0x340]
    // 0x7ebc24: StoreField: r1->field_23 = r0
    //     0x7ebc24: stur            w0, [x1, #0x23]
    // 0x7ebc28: r0 = Instance_Clip
    //     0x7ebc28: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ebc2c: ldr             x0, [x0, #0x348]
    // 0x7ebc30: StoreField: r1->field_2b = r0
    //     0x7ebc30: stur            w0, [x1, #0x2b]
    // 0x7ebc34: StoreField: r1->field_2f = rZR
    //     0x7ebc34: stur            xzr, [x1, #0x2f]
    // 0x7ebc38: ldur            x0, [fp, #-0x10]
    // 0x7ebc3c: StoreField: r1->field_b = r0
    //     0x7ebc3c: stur            w0, [x1, #0xb]
    // 0x7ebc40: r0 = Container()
    //     0x7ebc40: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ebc44: stur            x0, [fp, #-0x10]
    // 0x7ebc48: ldur            x16, [fp, #-0x20]
    // 0x7ebc4c: r30 = Instance_EdgeInsets
    //     0x7ebc4c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7ebc50: ldr             lr, [lr, #0x240]
    // 0x7ebc54: stp             lr, x16, [SP, #8]
    // 0x7ebc58: ldur            x16, [fp, #-8]
    // 0x7ebc5c: str             x16, [SP]
    // 0x7ebc60: mov             x1, x0
    // 0x7ebc64: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x1, padding, 0x2, null]
    //     0x7ebc64: add             x4, PP, #0x16, lsl #12  ; [pp+0x16028] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x1, "padding", 0x2, Null]
    //     0x7ebc68: ldr             x4, [x4, #0x28]
    // 0x7ebc6c: r0 = Container()
    //     0x7ebc6c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ebc70: ldur            x0, [fp, #-0x10]
    // 0x7ebc74: LeaveFrame
    //     0x7ebc74: mov             SP, fp
    //     0x7ebc78: ldp             fp, lr, [SP], #0x10
    // 0x7ebc7c: ret
    //     0x7ebc7c: ret             
    // 0x7ebc80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ebc80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ebc84: b               #0x7eb740
    // 0x7ebc88: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ebc88: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7ebc8c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ebc8c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

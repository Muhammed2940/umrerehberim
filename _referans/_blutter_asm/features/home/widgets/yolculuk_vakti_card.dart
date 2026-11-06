// lib: , url: package:umrem_demo/features/home/widgets/yolculuk_vakti_card.dart

// class id: 1049596, size: 0x8
class :: {
}

// class id: 2897, size: 0x24, field offset: 0xc
//   const constructor, 
class ModernCountdownCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ec9fc, size: 0x8b0
    // 0x7ec9fc: EnterFrame
    //     0x7ec9fc: stp             fp, lr, [SP, #-0x10]!
    //     0x7eca00: mov             fp, SP
    // 0x7eca04: AllocStack(0x70)
    //     0x7eca04: sub             SP, SP, #0x70
    // 0x7eca08: SetupParameters(ModernCountdownCard this /* r1 => r1, fp-0x10 */)
    //     0x7eca08: stur            x1, [fp, #-0x10]
    // 0x7eca0c: CheckStackOverflow
    //     0x7eca0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eca10: cmp             SP, x16
    //     0x7eca14: b.ls            #0x7ed280
    // 0x7eca18: LoadField: r0 = r1->field_f
    //     0x7eca18: ldur            x0, [x1, #0xf]
    // 0x7eca1c: stur            x0, [fp, #-8]
    // 0x7eca20: ArrayLoad: r2 = r1[0]  ; List_8
    //     0x7eca20: ldur            x2, [x1, #0x17]
    // 0x7eca24: cmp             x2, #0
    // 0x7eca28: b.gt            #0x7eca34
    // 0x7eca2c: d0 = 0.000000
    //     0x7eca2c: eor             v0.16b, v0.16b, v0.16b
    // 0x7eca30: b               #0x7eca90
    // 0x7eca34: scvtf           d0, x0
    // 0x7eca38: scvtf           d1, x2
    // 0x7eca3c: fdiv            d2, d0, d1
    // 0x7eca40: fcmp            d2, d2
    // 0x7eca44: b.vs            #0x7eca5c
    // 0x7eca48: mov             x2, v2.d[0]
    // 0x7eca4c: and             x2, x2, #0x7fffffffffffffff
    // 0x7eca50: r17 = 9218868437227405312
    //     0x7eca50: mov             x17, #0x7ff0000000000000
    // 0x7eca54: cmp             x2, x17
    // 0x7eca58: b.ne            #0x7eca64
    // 0x7eca5c: d0 = 0.000000
    //     0x7eca5c: eor             v0.16b, v0.16b, v0.16b
    // 0x7eca60: b               #0x7eca90
    // 0x7eca64: d0 = 0.000000
    //     0x7eca64: eor             v0.16b, v0.16b, v0.16b
    // 0x7eca68: fcmp            d0, d2
    // 0x7eca6c: b.le            #0x7eca78
    // 0x7eca70: d0 = 0.000000
    //     0x7eca70: eor             v0.16b, v0.16b, v0.16b
    // 0x7eca74: b               #0x7eca90
    // 0x7eca78: d0 = 1.000000
    //     0x7eca78: fmov            d0, #1.00000000
    // 0x7eca7c: fcmp            d2, d0
    // 0x7eca80: b.le            #0x7eca8c
    // 0x7eca84: d0 = 1.000000
    //     0x7eca84: fmov            d0, #1.00000000
    // 0x7eca88: b               #0x7eca90
    // 0x7eca8c: mov             v0.16b, v2.16b
    // 0x7eca90: stur            d0, [fp, #-0x50]
    // 0x7eca94: r0 = Radius()
    //     0x7eca94: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eca98: d0 = 24.000000
    //     0x7eca98: fmov            d0, #24.00000000
    // 0x7eca9c: stur            x0, [fp, #-0x18]
    // 0x7ecaa0: StoreField: r0->field_7 = d0
    //     0x7ecaa0: stur            d0, [x0, #7]
    // 0x7ecaa4: StoreField: r0->field_f = d0
    //     0x7ecaa4: stur            d0, [x0, #0xf]
    // 0x7ecaa8: r0 = BorderRadius()
    //     0x7ecaa8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ecaac: mov             x3, x0
    // 0x7ecab0: ldur            x0, [fp, #-0x18]
    // 0x7ecab4: stur            x3, [fp, #-0x20]
    // 0x7ecab8: StoreField: r3->field_7 = r0
    //     0x7ecab8: stur            w0, [x3, #7]
    // 0x7ecabc: StoreField: r3->field_b = r0
    //     0x7ecabc: stur            w0, [x3, #0xb]
    // 0x7ecac0: StoreField: r3->field_f = r0
    //     0x7ecac0: stur            w0, [x3, #0xf]
    // 0x7ecac4: StoreField: r3->field_13 = r0
    //     0x7ecac4: stur            w0, [x3, #0x13]
    // 0x7ecac8: r1 = _ConstMap len:12
    //     0x7ecac8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ecacc: r2 = 400
    //     0x7ecacc: mov             x2, #0x190
    // 0x7ecad0: r0 = []()
    //     0x7ecad0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ecad4: cmp             w0, NULL
    // 0x7ecad8: b.eq            #0x7ed288
    // 0x7ecadc: r16 = 1.000000
    //     0x7ecadc: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7ecae0: stp             x16, x0, [SP]
    // 0x7ecae4: r1 = Null
    //     0x7ecae4: mov             x1, NULL
    // 0x7ecae8: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7ecae8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7ecaec: ldr             x4, [x4, #0x208]
    // 0x7ecaf0: r0 = Border.all()
    //     0x7ecaf0: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7ecaf4: stur            x0, [fp, #-0x18]
    // 0x7ecaf8: r16 = 0.080000
    //     0x7ecaf8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x7ecafc: ldr             x16, [x16, #0xe30]
    // 0x7ecb00: str             x16, [SP]
    // 0x7ecb04: r1 = Instance_Color
    //     0x7ecb04: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7ecb08: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ecb08: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ecb0c: ldr             x4, [x4, #0x198]
    // 0x7ecb10: r0 = withValues()
    //     0x7ecb10: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ecb14: stur            x0, [fp, #-0x28]
    // 0x7ecb18: r0 = BoxShadow()
    //     0x7ecb18: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7ecb1c: d0 = 2.000000
    //     0x7ecb1c: fmov            d0, #2.00000000
    // 0x7ecb20: stur            x0, [fp, #-0x30]
    // 0x7ecb24: ArrayStore: r0[0] = d0  ; List_8
    //     0x7ecb24: stur            d0, [x0, #0x17]
    // 0x7ecb28: r2 = Instance_BlurStyle
    //     0x7ecb28: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7ecb2c: ldr             x2, [x2, #0x9b0]
    // 0x7ecb30: StoreField: r0->field_1f = r2
    //     0x7ecb30: stur            w2, [x0, #0x1f]
    // 0x7ecb34: ldur            x1, [fp, #-0x28]
    // 0x7ecb38: StoreField: r0->field_7 = r1
    //     0x7ecb38: stur            w1, [x0, #7]
    // 0x7ecb3c: r1 = Instance_Offset
    //     0x7ecb3c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7ecb40: ldr             x1, [x1, #0x9b8]
    // 0x7ecb44: StoreField: r0->field_b = r1
    //     0x7ecb44: stur            w1, [x0, #0xb]
    // 0x7ecb48: d0 = 16.000000
    //     0x7ecb48: fmov            d0, #16.00000000
    // 0x7ecb4c: StoreField: r0->field_f = d0
    //     0x7ecb4c: stur            d0, [x0, #0xf]
    // 0x7ecb50: r16 = 0.150000
    //     0x7ecb50: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7ecb54: ldr             x16, [x16, #0xe38]
    // 0x7ecb58: str             x16, [SP]
    // 0x7ecb5c: r1 = Instance_Color
    //     0x7ecb5c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ecb60: ldr             x1, [x1, #0xb78]
    // 0x7ecb64: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ecb64: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ecb68: ldr             x4, [x4, #0x198]
    // 0x7ecb6c: r0 = withValues()
    //     0x7ecb6c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ecb70: stur            x0, [fp, #-0x28]
    // 0x7ecb74: r0 = BoxShadow()
    //     0x7ecb74: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7ecb78: stur            x0, [fp, #-0x38]
    // 0x7ecb7c: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7ecb7c: stur            xzr, [x0, #0x17]
    // 0x7ecb80: r1 = Instance_BlurStyle
    //     0x7ecb80: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7ecb84: ldr             x1, [x1, #0x9b0]
    // 0x7ecb88: StoreField: r0->field_1f = r1
    //     0x7ecb88: stur            w1, [x0, #0x1f]
    // 0x7ecb8c: ldur            x1, [fp, #-0x28]
    // 0x7ecb90: StoreField: r0->field_7 = r1
    //     0x7ecb90: stur            w1, [x0, #7]
    // 0x7ecb94: r1 = Instance_Offset
    //     0x7ecb94: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x7ecb98: ldr             x1, [x1, #0xe40]
    // 0x7ecb9c: StoreField: r0->field_b = r1
    //     0x7ecb9c: stur            w1, [x0, #0xb]
    // 0x7ecba0: d0 = 24.000000
    //     0x7ecba0: fmov            d0, #24.00000000
    // 0x7ecba4: StoreField: r0->field_f = d0
    //     0x7ecba4: stur            d0, [x0, #0xf]
    // 0x7ecba8: r1 = Null
    //     0x7ecba8: mov             x1, NULL
    // 0x7ecbac: r2 = 4
    //     0x7ecbac: mov             x2, #4
    // 0x7ecbb0: r0 = AllocateArray()
    //     0x7ecbb0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ecbb4: mov             x2, x0
    // 0x7ecbb8: ldur            x0, [fp, #-0x30]
    // 0x7ecbbc: stur            x2, [fp, #-0x28]
    // 0x7ecbc0: StoreField: r2->field_f = r0
    //     0x7ecbc0: stur            w0, [x2, #0xf]
    // 0x7ecbc4: ldur            x0, [fp, #-0x38]
    // 0x7ecbc8: StoreField: r2->field_13 = r0
    //     0x7ecbc8: stur            w0, [x2, #0x13]
    // 0x7ecbcc: r1 = <BoxShadow>
    //     0x7ecbcc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7ecbd0: ldr             x1, [x1, #0x9c0]
    // 0x7ecbd4: r0 = AllocateGrowableArray()
    //     0x7ecbd4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ecbd8: mov             x1, x0
    // 0x7ecbdc: ldur            x0, [fp, #-0x28]
    // 0x7ecbe0: stur            x1, [fp, #-0x30]
    // 0x7ecbe4: StoreField: r1->field_f = r0
    //     0x7ecbe4: stur            w0, [x1, #0xf]
    // 0x7ecbe8: r0 = 4
    //     0x7ecbe8: mov             x0, #4
    // 0x7ecbec: StoreField: r1->field_b = r0
    //     0x7ecbec: stur            w0, [x1, #0xb]
    // 0x7ecbf0: r0 = BoxDecoration()
    //     0x7ecbf0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ecbf4: mov             x1, x0
    // 0x7ecbf8: r0 = Instance_Color
    //     0x7ecbf8: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ecbfc: stur            x1, [fp, #-0x28]
    // 0x7ecc00: StoreField: r1->field_7 = r0
    //     0x7ecc00: stur            w0, [x1, #7]
    // 0x7ecc04: ldur            x0, [fp, #-0x18]
    // 0x7ecc08: StoreField: r1->field_f = r0
    //     0x7ecc08: stur            w0, [x1, #0xf]
    // 0x7ecc0c: ldur            x0, [fp, #-0x20]
    // 0x7ecc10: StoreField: r1->field_13 = r0
    //     0x7ecc10: stur            w0, [x1, #0x13]
    // 0x7ecc14: ldur            x0, [fp, #-0x30]
    // 0x7ecc18: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ecc18: stur            w0, [x1, #0x17]
    // 0x7ecc1c: r0 = Instance_BoxShape
    //     0x7ecc1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ecc20: ldr             x0, [x0, #0x1c8]
    // 0x7ecc24: StoreField: r1->field_23 = r0
    //     0x7ecc24: stur            w0, [x1, #0x23]
    // 0x7ecc28: r0 = Radius()
    //     0x7ecc28: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ecc2c: d0 = 8.000000
    //     0x7ecc2c: fmov            d0, #8.00000000
    // 0x7ecc30: stur            x0, [fp, #-0x18]
    // 0x7ecc34: StoreField: r0->field_7 = d0
    //     0x7ecc34: stur            d0, [x0, #7]
    // 0x7ecc38: StoreField: r0->field_f = d0
    //     0x7ecc38: stur            d0, [x0, #0xf]
    // 0x7ecc3c: r0 = BorderRadius()
    //     0x7ecc3c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ecc40: mov             x3, x0
    // 0x7ecc44: ldur            x0, [fp, #-0x18]
    // 0x7ecc48: stur            x3, [fp, #-0x20]
    // 0x7ecc4c: StoreField: r3->field_7 = r0
    //     0x7ecc4c: stur            w0, [x3, #7]
    // 0x7ecc50: StoreField: r3->field_b = r0
    //     0x7ecc50: stur            w0, [x3, #0xb]
    // 0x7ecc54: StoreField: r3->field_f = r0
    //     0x7ecc54: stur            w0, [x3, #0xf]
    // 0x7ecc58: StoreField: r3->field_13 = r0
    //     0x7ecc58: stur            w0, [x3, #0x13]
    // 0x7ecc5c: r1 = _ConstMap len:12
    //     0x7ecc5c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ecc60: r2 = 200
    //     0x7ecc60: mov             x2, #0xc8
    // 0x7ecc64: r0 = []()
    //     0x7ecc64: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ecc68: stur            x0, [fp, #-0x18]
    // 0x7ecc6c: cmp             w0, NULL
    // 0x7ecc70: b.eq            #0x7ed28c
    // 0x7ecc74: r0 = BoxDecoration()
    //     0x7ecc74: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ecc78: mov             x1, x0
    // 0x7ecc7c: ldur            x0, [fp, #-0x18]
    // 0x7ecc80: stur            x1, [fp, #-0x30]
    // 0x7ecc84: StoreField: r1->field_7 = r0
    //     0x7ecc84: stur            w0, [x1, #7]
    // 0x7ecc88: ldur            x0, [fp, #-0x20]
    // 0x7ecc8c: StoreField: r1->field_13 = r0
    //     0x7ecc8c: stur            w0, [x1, #0x13]
    // 0x7ecc90: r0 = Instance_BoxShape
    //     0x7ecc90: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ecc94: ldr             x0, [x0, #0x1c8]
    // 0x7ecc98: StoreField: r1->field_23 = r0
    //     0x7ecc98: stur            w0, [x1, #0x23]
    // 0x7ecc9c: r0 = Radius()
    //     0x7ecc9c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ecca0: d0 = 8.000000
    //     0x7ecca0: fmov            d0, #8.00000000
    // 0x7ecca4: stur            x0, [fp, #-0x18]
    // 0x7ecca8: StoreField: r0->field_7 = d0
    //     0x7ecca8: stur            d0, [x0, #7]
    // 0x7eccac: StoreField: r0->field_f = d0
    //     0x7eccac: stur            d0, [x0, #0xf]
    // 0x7eccb0: r0 = BorderRadius()
    //     0x7eccb0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eccb4: mov             x1, x0
    // 0x7eccb8: ldur            x0, [fp, #-0x18]
    // 0x7eccbc: stur            x1, [fp, #-0x20]
    // 0x7eccc0: StoreField: r1->field_7 = r0
    //     0x7eccc0: stur            w0, [x1, #7]
    // 0x7eccc4: StoreField: r1->field_b = r0
    //     0x7eccc4: stur            w0, [x1, #0xb]
    // 0x7eccc8: StoreField: r1->field_f = r0
    //     0x7eccc8: stur            w0, [x1, #0xf]
    // 0x7ecccc: StoreField: r1->field_13 = r0
    //     0x7ecccc: stur            w0, [x1, #0x13]
    // 0x7eccd0: ldur            x0, [fp, #-0x10]
    // 0x7eccd4: LoadField: r2 = r0->field_b
    //     0x7eccd4: ldur            w2, [x0, #0xb]
    // 0x7eccd8: DecompressPointer r2
    //     0x7eccd8: add             x2, x2, HEAP, lsl #32
    // 0x7eccdc: stur            x2, [fp, #-0x18]
    // 0x7ecce0: r16 = "Mekke"
    //     0x7ecce0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7ecce4: ldr             x16, [x16, #0xdf0]
    // 0x7ecce8: stp             x16, x2, [SP]
    // 0x7eccec: r0 = ==()
    //     0x7eccec: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x7eccf0: tbnz            w0, #4, #0x7ecd00
    // 0x7eccf4: r3 = "assets/icons/kabe.png"
    //     0x7eccf4: add             x3, PP, #0x1b, lsl #12  ; [pp+0x1bc00] "assets/icons/kabe.png"
    //     0x7eccf8: ldr             x3, [x3, #0xc00]
    // 0x7eccfc: b               #0x7ecd08
    // 0x7ecd00: r3 = "assets/icons/medine.png"
    //     0x7ecd00: add             x3, PP, #0x1b, lsl #12  ; [pp+0x1bc08] "assets/icons/medine.png"
    //     0x7ecd04: ldr             x3, [x3, #0xc08]
    // 0x7ecd08: ldur            x2, [fp, #-8]
    // 0x7ecd0c: ldur            x0, [fp, #-0x20]
    // 0x7ecd10: ldur            x1, [fp, #-0x18]
    // 0x7ecd14: stur            x3, [fp, #-0x38]
    // 0x7ecd18: r0 = Image()
    //     0x7ecd18: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x7ecd1c: stur            x0, [fp, #-0x40]
    // 0x7ecd20: r16 = Instance_BoxFit
    //     0x7ecd20: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ce0] Obj!BoxFit@a2a971
    //     0x7ecd24: ldr             x16, [x16, #0xce0]
    // 0x7ecd28: str             x16, [SP]
    // 0x7ecd2c: mov             x1, x0
    // 0x7ecd30: ldur            x2, [fp, #-0x38]
    // 0x7ecd34: r4 = const [0, 0x3, 0x1, 0x2, fit, 0x2, null]
    //     0x7ecd34: add             x4, PP, #0x1b, lsl #12  ; [pp+0x1bc10] List(7) [0, 0x3, 0x1, 0x2, "fit", 0x2, Null]
    //     0x7ecd38: ldr             x4, [x4, #0xc10]
    // 0x7ecd3c: r0 = Image.asset()
    //     0x7ecd3c: bl              #0x6f8f2c  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x7ecd40: r0 = ClipRRect()
    //     0x7ecd40: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x7ecd44: mov             x1, x0
    // 0x7ecd48: ldur            x0, [fp, #-0x20]
    // 0x7ecd4c: stur            x1, [fp, #-0x38]
    // 0x7ecd50: StoreField: r1->field_f = r0
    //     0x7ecd50: stur            w0, [x1, #0xf]
    // 0x7ecd54: r0 = Instance_Clip
    //     0x7ecd54: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x7ecd58: ldr             x0, [x0, #0xd38]
    // 0x7ecd5c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ecd5c: stur            w0, [x1, #0x17]
    // 0x7ecd60: ldur            x2, [fp, #-0x40]
    // 0x7ecd64: StoreField: r1->field_b = r2
    //     0x7ecd64: stur            w2, [x1, #0xb]
    // 0x7ecd68: r0 = Container()
    //     0x7ecd68: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ecd6c: stur            x0, [fp, #-0x20]
    // 0x7ecd70: r16 = 50.000000
    //     0x7ecd70: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x7ecd74: ldr             x16, [x16, #0xa48]
    // 0x7ecd78: r30 = 50.000000
    //     0x7ecd78: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x7ecd7c: ldr             lr, [lr, #0xa48]
    // 0x7ecd80: stp             lr, x16, [SP, #0x10]
    // 0x7ecd84: ldur            x16, [fp, #-0x30]
    // 0x7ecd88: ldur            lr, [fp, #-0x38]
    // 0x7ecd8c: stp             lr, x16, [SP]
    // 0x7ecd90: mov             x1, x0
    // 0x7ecd94: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x7ecd94: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7ecd98: ldr             x4, [x4, #0x990]
    // 0x7ecd9c: r0 = Container()
    //     0x7ecd9c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ecda0: r0 = Text()
    //     0x7ecda0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ecda4: mov             x3, x0
    // 0x7ecda8: ldur            x0, [fp, #-0x18]
    // 0x7ecdac: stur            x3, [fp, #-0x30]
    // 0x7ecdb0: StoreField: r3->field_b = r0
    //     0x7ecdb0: stur            w0, [x3, #0xb]
    // 0x7ecdb4: r0 = Instance_TextStyle
    //     0x7ecdb4: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc18] Obj!TextStyle@a19121
    //     0x7ecdb8: ldr             x0, [x0, #0xc18]
    // 0x7ecdbc: StoreField: r3->field_13 = r0
    //     0x7ecdbc: stur            w0, [x3, #0x13]
    // 0x7ecdc0: r1 = Null
    //     0x7ecdc0: mov             x1, NULL
    // 0x7ecdc4: r2 = 8
    //     0x7ecdc4: mov             x2, #8
    // 0x7ecdc8: r0 = AllocateArray()
    //     0x7ecdc8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ecdcc: mov             x2, x0
    // 0x7ecdd0: ldur            x0, [fp, #-0x20]
    // 0x7ecdd4: stur            x2, [fp, #-0x18]
    // 0x7ecdd8: StoreField: r2->field_f = r0
    //     0x7ecdd8: stur            w0, [x2, #0xf]
    // 0x7ecddc: r16 = Instance_SizedBox
    //     0x7ecddc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7ecde0: ldr             x16, [x16, #0x310]
    // 0x7ecde4: StoreField: r2->field_13 = r16
    //     0x7ecde4: stur            w16, [x2, #0x13]
    // 0x7ecde8: ldur            x0, [fp, #-0x30]
    // 0x7ecdec: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ecdec: stur            w0, [x2, #0x17]
    // 0x7ecdf0: r16 = Instance_SizedBox
    //     0x7ecdf0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7ecdf4: ldr             x16, [x16, #0x338]
    // 0x7ecdf8: StoreField: r2->field_1b = r16
    //     0x7ecdf8: stur            w16, [x2, #0x1b]
    // 0x7ecdfc: r1 = <Widget>
    //     0x7ecdfc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ece00: r0 = AllocateGrowableArray()
    //     0x7ece00: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ece04: mov             x2, x0
    // 0x7ece08: ldur            x0, [fp, #-0x18]
    // 0x7ece0c: stur            x2, [fp, #-0x20]
    // 0x7ece10: StoreField: r2->field_f = r0
    //     0x7ece10: stur            w0, [x2, #0xf]
    // 0x7ece14: r0 = 8
    //     0x7ece14: mov             x0, #8
    // 0x7ece18: StoreField: r2->field_b = r0
    //     0x7ece18: stur            w0, [x2, #0xb]
    // 0x7ece1c: ldur            x3, [fp, #-8]
    // 0x7ece20: cmp             x3, #0
    // 0x7ece24: b.le            #0x7ed130
    // 0x7ece28: ldur            x4, [fp, #-0x10]
    // 0x7ece2c: ldur            d0, [fp, #-0x50]
    // 0x7ece30: r0 = BoxInt64Instr(r3)
    //     0x7ece30: sbfiz           x0, x3, #1, #0x1f
    //     0x7ece34: cmp             x3, x0, asr #1
    //     0x7ece38: b.eq            #0x7ece44
    //     0x7ece3c: bl              #0x9283dc  ; AllocateMintSharedWithFPURegsStub
    //     0x7ece40: stur            x3, [x0, #7]
    // 0x7ece44: str             x0, [SP]
    // 0x7ece48: r0 = _interpolateSingle()
    //     0x7ece48: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x7ece4c: mov             x1, x0
    // 0x7ece50: ldur            x0, [fp, #-0x10]
    // 0x7ece54: stur            x1, [fp, #-0x30]
    // 0x7ece58: LoadField: r2 = r0->field_1f
    //     0x7ece58: ldur            w2, [x0, #0x1f]
    // 0x7ece5c: DecompressPointer r2
    //     0x7ece5c: add             x2, x2, HEAP, lsl #32
    // 0x7ece60: stur            x2, [fp, #-0x18]
    // 0x7ece64: r0 = TextStyle()
    //     0x7ece64: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ece68: mov             x1, x0
    // 0x7ece6c: r0 = true
    //     0x7ece6c: add             x0, NULL, #0x20  ; true
    // 0x7ece70: stur            x1, [fp, #-0x38]
    // 0x7ece74: StoreField: r1->field_7 = r0
    //     0x7ece74: stur            w0, [x1, #7]
    // 0x7ece78: ldur            x2, [fp, #-0x18]
    // 0x7ece7c: StoreField: r1->field_b = r2
    //     0x7ece7c: stur            w2, [x1, #0xb]
    // 0x7ece80: r3 = 28.000000
    //     0x7ece80: add             x3, PP, #0x18, lsl #12  ; [pp+0x18678] 28
    //     0x7ece84: ldr             x3, [x3, #0x678]
    // 0x7ece88: StoreField: r1->field_1f = r3
    //     0x7ece88: stur            w3, [x1, #0x1f]
    // 0x7ece8c: r3 = Instance_FontWeight
    //     0x7ece8c: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ece90: ldr             x3, [x3, #0x1d0]
    // 0x7ece94: StoreField: r1->field_23 = r3
    //     0x7ece94: stur            w3, [x1, #0x23]
    // 0x7ece98: r3 = 1.000000
    //     0x7ece98: ldr             x3, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7ece9c: StoreField: r1->field_37 = r3
    //     0x7ece9c: stur            w3, [x1, #0x37]
    // 0x7ecea0: r0 = Text()
    //     0x7ecea0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ecea4: mov             x3, x0
    // 0x7ecea8: ldur            x0, [fp, #-0x30]
    // 0x7eceac: stur            x3, [fp, #-0x40]
    // 0x7eceb0: StoreField: r3->field_b = r0
    //     0x7eceb0: stur            w0, [x3, #0xb]
    // 0x7eceb4: ldur            x0, [fp, #-0x38]
    // 0x7eceb8: StoreField: r3->field_13 = r0
    //     0x7eceb8: stur            w0, [x3, #0x13]
    // 0x7ecebc: r1 = _ConstMap len:12
    //     0x7ecebc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ecec0: r2 = 1000
    //     0x7ecec0: mov             x2, #0x3e8
    // 0x7ecec4: r0 = []()
    //     0x7ecec4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ecec8: stur            x0, [fp, #-0x30]
    // 0x7ececc: cmp             w0, NULL
    // 0x7eced0: b.eq            #0x7ed290
    // 0x7eced4: r0 = TextStyle()
    //     0x7eced4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7eced8: r1 = true
    //     0x7eced8: add             x1, NULL, #0x20  ; true
    // 0x7ecedc: stur            x0, [fp, #-0x38]
    // 0x7ecee0: StoreField: r0->field_7 = r1
    //     0x7ecee0: stur            w1, [x0, #7]
    // 0x7ecee4: ldur            x1, [fp, #-0x30]
    // 0x7ecee8: StoreField: r0->field_b = r1
    //     0x7ecee8: stur            w1, [x0, #0xb]
    // 0x7eceec: r1 = 12.000000
    //     0x7eceec: add             x1, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7ecef0: ldr             x1, [x1, #0xae0]
    // 0x7ecef4: StoreField: r0->field_1f = r1
    //     0x7ecef4: stur            w1, [x0, #0x1f]
    // 0x7ecef8: r0 = Text()
    //     0x7ecef8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ecefc: mov             x1, x0
    // 0x7ecf00: r0 = "gün kaldı"
    //     0x7ecf00: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc20] "gün kaldı"
    //     0x7ecf04: ldr             x0, [x0, #0xc20]
    // 0x7ecf08: stur            x1, [fp, #-0x30]
    // 0x7ecf0c: StoreField: r1->field_b = r0
    //     0x7ecf0c: stur            w0, [x1, #0xb]
    // 0x7ecf10: ldur            x0, [fp, #-0x38]
    // 0x7ecf14: StoreField: r1->field_13 = r0
    //     0x7ecf14: stur            w0, [x1, #0x13]
    // 0x7ecf18: r0 = Padding()
    //     0x7ecf18: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7ecf1c: mov             x3, x0
    // 0x7ecf20: r0 = Instance_EdgeInsets
    //     0x7ecf20: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc28] Obj!EdgeInsets@a0ca71
    //     0x7ecf24: ldr             x0, [x0, #0xc28]
    // 0x7ecf28: stur            x3, [fp, #-0x38]
    // 0x7ecf2c: StoreField: r3->field_f = r0
    //     0x7ecf2c: stur            w0, [x3, #0xf]
    // 0x7ecf30: ldur            x0, [fp, #-0x30]
    // 0x7ecf34: StoreField: r3->field_b = r0
    //     0x7ecf34: stur            w0, [x3, #0xb]
    // 0x7ecf38: r1 = Null
    //     0x7ecf38: mov             x1, NULL
    // 0x7ecf3c: r2 = 6
    //     0x7ecf3c: mov             x2, #6
    // 0x7ecf40: r0 = AllocateArray()
    //     0x7ecf40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ecf44: mov             x2, x0
    // 0x7ecf48: ldur            x0, [fp, #-0x40]
    // 0x7ecf4c: stur            x2, [fp, #-0x30]
    // 0x7ecf50: StoreField: r2->field_f = r0
    //     0x7ecf50: stur            w0, [x2, #0xf]
    // 0x7ecf54: r16 = Instance_SizedBox
    //     0x7ecf54: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7ecf58: ldr             x16, [x16, #0xf68]
    // 0x7ecf5c: StoreField: r2->field_13 = r16
    //     0x7ecf5c: stur            w16, [x2, #0x13]
    // 0x7ecf60: ldur            x0, [fp, #-0x38]
    // 0x7ecf64: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ecf64: stur            w0, [x2, #0x17]
    // 0x7ecf68: r1 = <Widget>
    //     0x7ecf68: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ecf6c: r0 = AllocateGrowableArray()
    //     0x7ecf6c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ecf70: mov             x1, x0
    // 0x7ecf74: ldur            x0, [fp, #-0x30]
    // 0x7ecf78: stur            x1, [fp, #-0x38]
    // 0x7ecf7c: StoreField: r1->field_f = r0
    //     0x7ecf7c: stur            w0, [x1, #0xf]
    // 0x7ecf80: r2 = 6
    //     0x7ecf80: mov             x2, #6
    // 0x7ecf84: StoreField: r1->field_b = r2
    //     0x7ecf84: stur            w2, [x1, #0xb]
    // 0x7ecf88: r0 = Row()
    //     0x7ecf88: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7ecf8c: mov             x1, x0
    // 0x7ecf90: r0 = Instance_Axis
    //     0x7ecf90: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7ecf94: stur            x1, [fp, #-0x30]
    // 0x7ecf98: StoreField: r1->field_f = r0
    //     0x7ecf98: stur            w0, [x1, #0xf]
    // 0x7ecf9c: r0 = Instance_MainAxisAlignment
    //     0x7ecf9c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ecfa0: ldr             x0, [x0, #0x230]
    // 0x7ecfa4: StoreField: r1->field_13 = r0
    //     0x7ecfa4: stur            w0, [x1, #0x13]
    // 0x7ecfa8: r2 = Instance_MainAxisSize
    //     0x7ecfa8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ecfac: ldr             x2, [x2, #0x330]
    // 0x7ecfb0: ArrayStore: r1[0] = r2  ; List_4
    //     0x7ecfb0: stur            w2, [x1, #0x17]
    // 0x7ecfb4: r3 = Instance_CrossAxisAlignment
    //     0x7ecfb4: add             x3, PP, #0x13, lsl #12  ; [pp+0x137c0] Obj!CrossAxisAlignment@a2a591
    //     0x7ecfb8: ldr             x3, [x3, #0x7c0]
    // 0x7ecfbc: StoreField: r1->field_1b = r3
    //     0x7ecfbc: stur            w3, [x1, #0x1b]
    // 0x7ecfc0: r3 = Instance_VerticalDirection
    //     0x7ecfc0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ecfc4: ldr             x3, [x3, #0x340]
    // 0x7ecfc8: StoreField: r1->field_23 = r3
    //     0x7ecfc8: stur            w3, [x1, #0x23]
    // 0x7ecfcc: r4 = Instance_Clip
    //     0x7ecfcc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ecfd0: ldr             x4, [x4, #0x348]
    // 0x7ecfd4: StoreField: r1->field_2b = r4
    //     0x7ecfd4: stur            w4, [x1, #0x2b]
    // 0x7ecfd8: StoreField: r1->field_2f = rZR
    //     0x7ecfd8: stur            xzr, [x1, #0x2f]
    // 0x7ecfdc: ldur            x5, [fp, #-0x38]
    // 0x7ecfe0: StoreField: r1->field_b = r5
    //     0x7ecfe0: stur            w5, [x1, #0xb]
    // 0x7ecfe4: r0 = Radius()
    //     0x7ecfe4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ecfe8: d0 = 4.000000
    //     0x7ecfe8: fmov            d0, #4.00000000
    // 0x7ecfec: stur            x0, [fp, #-0x38]
    // 0x7ecff0: StoreField: r0->field_7 = d0
    //     0x7ecff0: stur            d0, [x0, #7]
    // 0x7ecff4: StoreField: r0->field_f = d0
    //     0x7ecff4: stur            d0, [x0, #0xf]
    // 0x7ecff8: r0 = BorderRadius()
    //     0x7ecff8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ecffc: mov             x2, x0
    // 0x7ed000: ldur            x0, [fp, #-0x38]
    // 0x7ed004: stur            x2, [fp, #-0x40]
    // 0x7ed008: StoreField: r2->field_7 = r0
    //     0x7ed008: stur            w0, [x2, #7]
    // 0x7ed00c: StoreField: r2->field_b = r0
    //     0x7ed00c: stur            w0, [x2, #0xb]
    // 0x7ed010: StoreField: r2->field_f = r0
    //     0x7ed010: stur            w0, [x2, #0xf]
    // 0x7ed014: StoreField: r2->field_13 = r0
    //     0x7ed014: stur            w0, [x2, #0x13]
    // 0x7ed018: r16 = 0.100000
    //     0x7ed018: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7ed01c: ldr             x16, [x16, #0x1f8]
    // 0x7ed020: str             x16, [SP]
    // 0x7ed024: ldur            x1, [fp, #-0x18]
    // 0x7ed028: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ed028: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ed02c: ldr             x4, [x4, #0x198]
    // 0x7ed030: r0 = withValues()
    //     0x7ed030: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ed034: r1 = <Color>
    //     0x7ed034: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x7ed038: ldr             x1, [x1, #0x800]
    // 0x7ed03c: stur            x0, [fp, #-0x38]
    // 0x7ed040: r0 = AlwaysStoppedAnimation()
    //     0x7ed040: bl              #0x5fcb78  ; AllocateAlwaysStoppedAnimationStub -> AlwaysStoppedAnimation<X0> (size=0x10)
    // 0x7ed044: mov             x1, x0
    // 0x7ed048: ldur            x0, [fp, #-0x18]
    // 0x7ed04c: stur            x1, [fp, #-0x48]
    // 0x7ed050: StoreField: r1->field_b = r0
    //     0x7ed050: stur            w0, [x1, #0xb]
    // 0x7ed054: r0 = LinearProgressIndicator()
    //     0x7ed054: bl              #0x72c8a0  ; AllocateLinearProgressIndicatorStub -> LinearProgressIndicator (size=0x40)
    // 0x7ed058: mov             x1, x0
    // 0x7ed05c: r0 = 6.000000
    //     0x7ed05c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc7b0] 6
    //     0x7ed060: ldr             x0, [x0, #0x7b0]
    // 0x7ed064: stur            x1, [fp, #-0x18]
    // 0x7ed068: StoreField: r1->field_23 = r0
    //     0x7ed068: stur            w0, [x1, #0x23]
    // 0x7ed06c: ldur            d0, [fp, #-0x50]
    // 0x7ed070: r0 = inline_Allocate_Double()
    //     0x7ed070: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x7ed074: add             x0, x0, #0x10
    //     0x7ed078: cmp             x2, x0
    //     0x7ed07c: b.ls            #0x7ed294
    //     0x7ed080: str             x0, [THR, #0x60]  ; THR::top
    //     0x7ed084: sub             x0, x0, #0xf
    //     0x7ed088: mov             x2, #0xe15c
    //     0x7ed08c: movk            x2, #3, lsl #16
    //     0x7ed090: stur            x2, [x0, #-1]
    // 0x7ed094: StoreField: r0->field_7 = d0
    //     0x7ed094: stur            d0, [x0, #7]
    // 0x7ed098: StoreField: r1->field_b = r0
    //     0x7ed098: stur            w0, [x1, #0xb]
    // 0x7ed09c: ldur            x0, [fp, #-0x38]
    // 0x7ed0a0: StoreField: r1->field_f = r0
    //     0x7ed0a0: stur            w0, [x1, #0xf]
    // 0x7ed0a4: ldur            x0, [fp, #-0x48]
    // 0x7ed0a8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ed0a8: stur            w0, [x1, #0x17]
    // 0x7ed0ac: r0 = ClipRRect()
    //     0x7ed0ac: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x7ed0b0: mov             x3, x0
    // 0x7ed0b4: ldur            x0, [fp, #-0x40]
    // 0x7ed0b8: stur            x3, [fp, #-0x38]
    // 0x7ed0bc: StoreField: r3->field_f = r0
    //     0x7ed0bc: stur            w0, [x3, #0xf]
    // 0x7ed0c0: r0 = Instance_Clip
    //     0x7ed0c0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x7ed0c4: ldr             x0, [x0, #0xd38]
    // 0x7ed0c8: ArrayStore: r3[0] = r0  ; List_4
    //     0x7ed0c8: stur            w0, [x3, #0x17]
    // 0x7ed0cc: ldur            x0, [fp, #-0x18]
    // 0x7ed0d0: StoreField: r3->field_b = r0
    //     0x7ed0d0: stur            w0, [x3, #0xb]
    // 0x7ed0d4: r1 = Null
    //     0x7ed0d4: mov             x1, NULL
    // 0x7ed0d8: r2 = 6
    //     0x7ed0d8: mov             x2, #6
    // 0x7ed0dc: r0 = AllocateArray()
    //     0x7ed0dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ed0e0: mov             x2, x0
    // 0x7ed0e4: ldur            x0, [fp, #-0x30]
    // 0x7ed0e8: stur            x2, [fp, #-0x18]
    // 0x7ed0ec: StoreField: r2->field_f = r0
    //     0x7ed0ec: stur            w0, [x2, #0xf]
    // 0x7ed0f0: r16 = Instance_SizedBox
    //     0x7ed0f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7ed0f4: ldr             x16, [x16, #0x220]
    // 0x7ed0f8: StoreField: r2->field_13 = r16
    //     0x7ed0f8: stur            w16, [x2, #0x13]
    // 0x7ed0fc: ldur            x0, [fp, #-0x38]
    // 0x7ed100: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ed100: stur            w0, [x2, #0x17]
    // 0x7ed104: r1 = <Widget>
    //     0x7ed104: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ed108: r0 = AllocateGrowableArray()
    //     0x7ed108: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ed10c: mov             x1, x0
    // 0x7ed110: ldur            x0, [fp, #-0x18]
    // 0x7ed114: StoreField: r1->field_f = r0
    //     0x7ed114: stur            w0, [x1, #0xf]
    // 0x7ed118: r0 = 6
    //     0x7ed118: mov             x0, #6
    // 0x7ed11c: StoreField: r1->field_b = r0
    //     0x7ed11c: stur            w0, [x1, #0xb]
    // 0x7ed120: mov             x2, x1
    // 0x7ed124: ldur            x1, [fp, #-0x20]
    // 0x7ed128: r0 = addAll()
    //     0x7ed128: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7ed12c: b               #0x7ed1e4
    // 0x7ed130: ldur            x0, [fp, #-0x10]
    // 0x7ed134: r1 = true
    //     0x7ed134: add             x1, NULL, #0x20  ; true
    // 0x7ed138: r3 = Instance_FontWeight
    //     0x7ed138: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ed13c: ldr             x3, [x3, #0x1d0]
    // 0x7ed140: LoadField: r2 = r0->field_1f
    //     0x7ed140: ldur            w2, [x0, #0x1f]
    // 0x7ed144: DecompressPointer r2
    //     0x7ed144: add             x2, x2, HEAP, lsl #32
    // 0x7ed148: stur            x2, [fp, #-0x18]
    // 0x7ed14c: r0 = TextStyle()
    //     0x7ed14c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ed150: mov             x1, x0
    // 0x7ed154: r0 = true
    //     0x7ed154: add             x0, NULL, #0x20  ; true
    // 0x7ed158: stur            x1, [fp, #-0x10]
    // 0x7ed15c: StoreField: r1->field_7 = r0
    //     0x7ed15c: stur            w0, [x1, #7]
    // 0x7ed160: ldur            x0, [fp, #-0x18]
    // 0x7ed164: StoreField: r1->field_b = r0
    //     0x7ed164: stur            w0, [x1, #0xb]
    // 0x7ed168: r0 = 16.000000
    //     0x7ed168: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7ed16c: ldr             x0, [x0, #0x358]
    // 0x7ed170: StoreField: r1->field_1f = r0
    //     0x7ed170: stur            w0, [x1, #0x1f]
    // 0x7ed174: r0 = Instance_FontWeight
    //     0x7ed174: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ed178: ldr             x0, [x0, #0x1d0]
    // 0x7ed17c: StoreField: r1->field_23 = r0
    //     0x7ed17c: stur            w0, [x1, #0x23]
    // 0x7ed180: r0 = Text()
    //     0x7ed180: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ed184: mov             x3, x0
    // 0x7ed188: r0 = "Allah teâlâ \nkabul eylesin!"
    //     0x7ed188: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc30] "Allah teâlâ \nkabul eylesin!"
    //     0x7ed18c: ldr             x0, [x0, #0xc30]
    // 0x7ed190: stur            x3, [fp, #-0x18]
    // 0x7ed194: StoreField: r3->field_b = r0
    //     0x7ed194: stur            w0, [x3, #0xb]
    // 0x7ed198: ldur            x0, [fp, #-0x10]
    // 0x7ed19c: StoreField: r3->field_13 = r0
    //     0x7ed19c: stur            w0, [x3, #0x13]
    // 0x7ed1a0: r1 = Null
    //     0x7ed1a0: mov             x1, NULL
    // 0x7ed1a4: r2 = 2
    //     0x7ed1a4: mov             x2, #2
    // 0x7ed1a8: r0 = AllocateArray()
    //     0x7ed1a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ed1ac: mov             x2, x0
    // 0x7ed1b0: ldur            x0, [fp, #-0x18]
    // 0x7ed1b4: stur            x2, [fp, #-0x10]
    // 0x7ed1b8: StoreField: r2->field_f = r0
    //     0x7ed1b8: stur            w0, [x2, #0xf]
    // 0x7ed1bc: r1 = <Widget>
    //     0x7ed1bc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ed1c0: r0 = AllocateGrowableArray()
    //     0x7ed1c0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ed1c4: mov             x1, x0
    // 0x7ed1c8: ldur            x0, [fp, #-0x10]
    // 0x7ed1cc: StoreField: r1->field_f = r0
    //     0x7ed1cc: stur            w0, [x1, #0xf]
    // 0x7ed1d0: r0 = 2
    //     0x7ed1d0: mov             x0, #2
    // 0x7ed1d4: StoreField: r1->field_b = r0
    //     0x7ed1d4: stur            w0, [x1, #0xb]
    // 0x7ed1d8: mov             x2, x1
    // 0x7ed1dc: ldur            x1, [fp, #-0x20]
    // 0x7ed1e0: r0 = addAll()
    //     0x7ed1e0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7ed1e4: ldur            x0, [fp, #-0x20]
    // 0x7ed1e8: r0 = Column()
    //     0x7ed1e8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ed1ec: mov             x1, x0
    // 0x7ed1f0: r0 = Instance_Axis
    //     0x7ed1f0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ed1f4: stur            x1, [fp, #-0x10]
    // 0x7ed1f8: StoreField: r1->field_f = r0
    //     0x7ed1f8: stur            w0, [x1, #0xf]
    // 0x7ed1fc: r0 = Instance_MainAxisAlignment
    //     0x7ed1fc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ed200: ldr             x0, [x0, #0x230]
    // 0x7ed204: StoreField: r1->field_13 = r0
    //     0x7ed204: stur            w0, [x1, #0x13]
    // 0x7ed208: r0 = Instance_MainAxisSize
    //     0x7ed208: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ed20c: ldr             x0, [x0, #0x330]
    // 0x7ed210: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ed210: stur            w0, [x1, #0x17]
    // 0x7ed214: r0 = Instance_CrossAxisAlignment
    //     0x7ed214: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ed218: ldr             x0, [x0, #0x238]
    // 0x7ed21c: StoreField: r1->field_1b = r0
    //     0x7ed21c: stur            w0, [x1, #0x1b]
    // 0x7ed220: r0 = Instance_VerticalDirection
    //     0x7ed220: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ed224: ldr             x0, [x0, #0x340]
    // 0x7ed228: StoreField: r1->field_23 = r0
    //     0x7ed228: stur            w0, [x1, #0x23]
    // 0x7ed22c: r0 = Instance_Clip
    //     0x7ed22c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ed230: ldr             x0, [x0, #0x348]
    // 0x7ed234: StoreField: r1->field_2b = r0
    //     0x7ed234: stur            w0, [x1, #0x2b]
    // 0x7ed238: StoreField: r1->field_2f = rZR
    //     0x7ed238: stur            xzr, [x1, #0x2f]
    // 0x7ed23c: ldur            x0, [fp, #-0x20]
    // 0x7ed240: StoreField: r1->field_b = r0
    //     0x7ed240: stur            w0, [x1, #0xb]
    // 0x7ed244: r0 = Container()
    //     0x7ed244: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ed248: stur            x0, [fp, #-0x18]
    // 0x7ed24c: r16 = Instance_EdgeInsets
    //     0x7ed24c: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7ed250: ldur            lr, [fp, #-0x28]
    // 0x7ed254: stp             lr, x16, [SP, #8]
    // 0x7ed258: ldur            x16, [fp, #-0x10]
    // 0x7ed25c: str             x16, [SP]
    // 0x7ed260: mov             x1, x0
    // 0x7ed264: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ed264: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ed268: ldr             x4, [x4, #0x1e8]
    // 0x7ed26c: r0 = Container()
    //     0x7ed26c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ed270: ldur            x0, [fp, #-0x18]
    // 0x7ed274: LeaveFrame
    //     0x7ed274: mov             SP, fp
    //     0x7ed278: ldp             fp, lr, [SP], #0x10
    // 0x7ed27c: ret
    //     0x7ed27c: ret             
    // 0x7ed280: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ed280: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ed284: b               #0x7eca18
    // 0x7ed288: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ed288: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7ed28c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ed28c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7ed290: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ed290: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7ed294: SaveReg d0
    //     0x7ed294: str             q0, [SP, #-0x10]!
    // 0x7ed298: SaveReg r1
    //     0x7ed298: str             x1, [SP, #-8]!
    // 0x7ed29c: r0 = AllocateDouble()
    //     0x7ed29c: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x7ed2a0: RestoreReg r1
    //     0x7ed2a0: ldr             x1, [SP], #8
    // 0x7ed2a4: RestoreReg d0
    //     0x7ed2a4: ldr             q0, [SP], #0x10
    // 0x7ed2a8: b               #0x7ed094
  }
}

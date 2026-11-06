// lib: , url: package:umrem_demo/features/auth/widgets/choice_chip.dart

// class id: 1049564, size: 0x8
class :: {
}

// class id: 2911, size: 0x20, field offset: 0xc
//   const constructor, 
class ChoiceChipLogin extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e8748, size: 0x424
    // 0x7e8748: EnterFrame
    //     0x7e8748: stp             fp, lr, [SP, #-0x10]!
    //     0x7e874c: mov             fp, SP
    // 0x7e8750: AllocStack(0x58)
    //     0x7e8750: sub             SP, SP, #0x58
    // 0x7e8754: SetupParameters(ChoiceChipLogin this /* r1 => r1, fp-0x20 */)
    //     0x7e8754: stur            x1, [fp, #-0x20]
    // 0x7e8758: CheckStackOverflow
    //     0x7e8758: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e875c: cmp             SP, x16
    //     0x7e8760: b.ls            #0x7e8b58
    // 0x7e8764: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7e8764: ldur            w0, [x1, #0x17]
    // 0x7e8768: DecompressPointer r0
    //     0x7e8768: add             x0, x0, HEAP, lsl #32
    // 0x7e876c: stur            x0, [fp, #-0x18]
    // 0x7e8770: LoadField: r2 = r1->field_13
    //     0x7e8770: ldur            w2, [x1, #0x13]
    // 0x7e8774: DecompressPointer r2
    //     0x7e8774: add             x2, x2, HEAP, lsl #32
    // 0x7e8778: stur            x2, [fp, #-0x10]
    // 0x7e877c: tbnz            w2, #4, #0x7e878c
    // 0x7e8780: r3 = Instance_Color
    //     0x7e8780: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e8784: ldr             x3, [x3, #0xb78]
    // 0x7e8788: b               #0x7e8790
    // 0x7e878c: r3 = Instance_Color
    //     0x7e878c: ldr             x3, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e8790: stur            x3, [fp, #-8]
    // 0x7e8794: r0 = Radius()
    //     0x7e8794: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e8798: d0 = 16.000000
    //     0x7e8798: fmov            d0, #16.00000000
    // 0x7e879c: stur            x0, [fp, #-0x28]
    // 0x7e87a0: StoreField: r0->field_7 = d0
    //     0x7e87a0: stur            d0, [x0, #7]
    // 0x7e87a4: StoreField: r0->field_f = d0
    //     0x7e87a4: stur            d0, [x0, #0xf]
    // 0x7e87a8: r0 = BorderRadius()
    //     0x7e87a8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e87ac: mov             x3, x0
    // 0x7e87b0: ldur            x0, [fp, #-0x28]
    // 0x7e87b4: stur            x3, [fp, #-0x30]
    // 0x7e87b8: StoreField: r3->field_7 = r0
    //     0x7e87b8: stur            w0, [x3, #7]
    // 0x7e87bc: StoreField: r3->field_b = r0
    //     0x7e87bc: stur            w0, [x3, #0xb]
    // 0x7e87c0: StoreField: r3->field_f = r0
    //     0x7e87c0: stur            w0, [x3, #0xf]
    // 0x7e87c4: StoreField: r3->field_13 = r0
    //     0x7e87c4: stur            w0, [x3, #0x13]
    // 0x7e87c8: ldur            x0, [fp, #-0x10]
    // 0x7e87cc: tbnz            w0, #4, #0x7e87dc
    // 0x7e87d0: r1 = Instance_Color
    //     0x7e87d0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e87d4: ldr             x1, [x1, #0xb78]
    // 0x7e87d8: b               #0x7e87f8
    // 0x7e87dc: r1 = _ConstMap len:12
    //     0x7e87dc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e87e0: r2 = 600
    //     0x7e87e0: mov             x2, #0x258
    // 0x7e87e4: r0 = []()
    //     0x7e87e4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e87e8: cmp             w0, NULL
    // 0x7e87ec: b.eq            #0x7e8b60
    // 0x7e87f0: mov             x1, x0
    // 0x7e87f4: ldur            x0, [fp, #-0x10]
    // 0x7e87f8: r16 = 2.000000
    //     0x7e87f8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ba0] 2
    //     0x7e87fc: ldr             x16, [x16, #0xba0]
    // 0x7e8800: stp             x16, x1, [SP]
    // 0x7e8804: r1 = Null
    //     0x7e8804: mov             x1, NULL
    // 0x7e8808: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7e8808: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7e880c: ldr             x4, [x4, #0x208]
    // 0x7e8810: r0 = Border.all()
    //     0x7e8810: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e8814: mov             x2, x0
    // 0x7e8818: ldur            x0, [fp, #-0x10]
    // 0x7e881c: stur            x2, [fp, #-0x28]
    // 0x7e8820: tbnz            w0, #4, #0x7e88c0
    // 0x7e8824: r16 = 0.300000
    //     0x7e8824: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x7e8828: ldr             x16, [x16, #0x320]
    // 0x7e882c: str             x16, [SP]
    // 0x7e8830: r1 = Instance_Color
    //     0x7e8830: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e8834: ldr             x1, [x1, #0xb78]
    // 0x7e8838: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e8838: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e883c: ldr             x4, [x4, #0x198]
    // 0x7e8840: r0 = withValues()
    //     0x7e8840: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e8844: stur            x0, [fp, #-0x38]
    // 0x7e8848: r0 = BoxShadow()
    //     0x7e8848: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7e884c: stur            x0, [fp, #-0x40]
    // 0x7e8850: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7e8850: stur            xzr, [x0, #0x17]
    // 0x7e8854: r1 = Instance_BlurStyle
    //     0x7e8854: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7e8858: ldr             x1, [x1, #0x9b0]
    // 0x7e885c: StoreField: r0->field_1f = r1
    //     0x7e885c: stur            w1, [x0, #0x1f]
    // 0x7e8860: ldur            x1, [fp, #-0x38]
    // 0x7e8864: StoreField: r0->field_7 = r1
    //     0x7e8864: stur            w1, [x0, #7]
    // 0x7e8868: r1 = Instance_Offset
    //     0x7e8868: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7e886c: ldr             x1, [x1, #0x9b8]
    // 0x7e8870: StoreField: r0->field_b = r1
    //     0x7e8870: stur            w1, [x0, #0xb]
    // 0x7e8874: d0 = 12.000000
    //     0x7e8874: fmov            d0, #12.00000000
    // 0x7e8878: StoreField: r0->field_f = d0
    //     0x7e8878: stur            d0, [x0, #0xf]
    // 0x7e887c: r1 = Null
    //     0x7e887c: mov             x1, NULL
    // 0x7e8880: r2 = 2
    //     0x7e8880: mov             x2, #2
    // 0x7e8884: r0 = AllocateArray()
    //     0x7e8884: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e8888: mov             x2, x0
    // 0x7e888c: ldur            x0, [fp, #-0x40]
    // 0x7e8890: stur            x2, [fp, #-0x38]
    // 0x7e8894: StoreField: r2->field_f = r0
    //     0x7e8894: stur            w0, [x2, #0xf]
    // 0x7e8898: r1 = <BoxShadow>
    //     0x7e8898: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7e889c: ldr             x1, [x1, #0x9c0]
    // 0x7e88a0: r0 = AllocateGrowableArray()
    //     0x7e88a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e88a4: mov             x1, x0
    // 0x7e88a8: ldur            x0, [fp, #-0x38]
    // 0x7e88ac: StoreField: r1->field_f = r0
    //     0x7e88ac: stur            w0, [x1, #0xf]
    // 0x7e88b0: r0 = 2
    //     0x7e88b0: mov             x0, #2
    // 0x7e88b4: StoreField: r1->field_b = r0
    //     0x7e88b4: stur            w0, [x1, #0xb]
    // 0x7e88b8: mov             x5, x1
    // 0x7e88bc: b               #0x7e88d4
    // 0x7e88c0: r1 = <BoxShadow>
    //     0x7e88c0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7e88c4: ldr             x1, [x1, #0x9c0]
    // 0x7e88c8: r2 = 0
    //     0x7e88c8: mov             x2, #0
    // 0x7e88cc: r0 = _GrowableList()
    //     0x7e88cc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7e88d0: mov             x5, x0
    // 0x7e88d4: ldur            x3, [fp, #-0x20]
    // 0x7e88d8: ldur            x0, [fp, #-0x10]
    // 0x7e88dc: ldur            x4, [fp, #-8]
    // 0x7e88e0: ldur            x2, [fp, #-0x30]
    // 0x7e88e4: ldur            x1, [fp, #-0x28]
    // 0x7e88e8: stur            x5, [fp, #-0x38]
    // 0x7e88ec: r0 = BoxDecoration()
    //     0x7e88ec: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e88f0: mov             x3, x0
    // 0x7e88f4: ldur            x0, [fp, #-8]
    // 0x7e88f8: stur            x3, [fp, #-0x40]
    // 0x7e88fc: StoreField: r3->field_7 = r0
    //     0x7e88fc: stur            w0, [x3, #7]
    // 0x7e8900: ldur            x0, [fp, #-0x28]
    // 0x7e8904: StoreField: r3->field_f = r0
    //     0x7e8904: stur            w0, [x3, #0xf]
    // 0x7e8908: ldur            x0, [fp, #-0x30]
    // 0x7e890c: StoreField: r3->field_13 = r0
    //     0x7e890c: stur            w0, [x3, #0x13]
    // 0x7e8910: ldur            x0, [fp, #-0x38]
    // 0x7e8914: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e8914: stur            w0, [x3, #0x17]
    // 0x7e8918: r0 = Instance_BoxShape
    //     0x7e8918: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e891c: ldr             x0, [x0, #0x1c8]
    // 0x7e8920: StoreField: r3->field_23 = r0
    //     0x7e8920: stur            w0, [x3, #0x23]
    // 0x7e8924: ldur            x0, [fp, #-0x20]
    // 0x7e8928: LoadField: r4 = r0->field_f
    //     0x7e8928: ldur            w4, [x0, #0xf]
    // 0x7e892c: DecompressPointer r4
    //     0x7e892c: add             x4, x4, HEAP, lsl #32
    // 0x7e8930: ldur            x5, [fp, #-0x10]
    // 0x7e8934: stur            x4, [fp, #-8]
    // 0x7e8938: tbnz            w5, #4, #0x7e894c
    // 0x7e893c: mov             x2, x5
    // 0x7e8940: mov             x1, x4
    // 0x7e8944: r3 = Instance_Color
    //     0x7e8944: ldr             x3, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e8948: b               #0x7e8970
    // 0x7e894c: r1 = _ConstMap len:12
    //     0x7e894c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e8950: r2 = 1400
    //     0x7e8950: mov             x2, #0x578
    // 0x7e8954: r0 = []()
    //     0x7e8954: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e8958: cmp             w0, NULL
    // 0x7e895c: b.eq            #0x7e8b64
    // 0x7e8960: mov             x3, x0
    // 0x7e8964: ldur            x0, [fp, #-0x20]
    // 0x7e8968: ldur            x2, [fp, #-0x10]
    // 0x7e896c: ldur            x1, [fp, #-8]
    // 0x7e8970: stur            x3, [fp, #-0x28]
    // 0x7e8974: r0 = Icon()
    //     0x7e8974: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e8978: mov             x3, x0
    // 0x7e897c: ldur            x0, [fp, #-8]
    // 0x7e8980: stur            x3, [fp, #-0x30]
    // 0x7e8984: StoreField: r3->field_b = r0
    //     0x7e8984: stur            w0, [x3, #0xb]
    // 0x7e8988: r0 = 22.000000
    //     0x7e8988: add             x0, PP, #0x15, lsl #12  ; [pp+0x15290] 22
    //     0x7e898c: ldr             x0, [x0, #0x290]
    // 0x7e8990: StoreField: r3->field_f = r0
    //     0x7e8990: stur            w0, [x3, #0xf]
    // 0x7e8994: ldur            x0, [fp, #-0x28]
    // 0x7e8998: StoreField: r3->field_23 = r0
    //     0x7e8998: stur            w0, [x3, #0x23]
    // 0x7e899c: ldur            x0, [fp, #-0x20]
    // 0x7e89a0: LoadField: r4 = r0->field_b
    //     0x7e89a0: ldur            w4, [x0, #0xb]
    // 0x7e89a4: DecompressPointer r4
    //     0x7e89a4: add             x4, x4, HEAP, lsl #32
    // 0x7e89a8: ldur            x0, [fp, #-0x10]
    // 0x7e89ac: stur            x4, [fp, #-8]
    // 0x7e89b0: tbnz            w0, #4, #0x7e89c4
    // 0x7e89b4: mov             x0, x3
    // 0x7e89b8: mov             x1, x4
    // 0x7e89bc: r2 = Instance_Color
    //     0x7e89bc: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e89c0: b               #0x7e89e4
    // 0x7e89c4: r1 = _ConstMap len:12
    //     0x7e89c4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e89c8: r2 = 1400
    //     0x7e89c8: mov             x2, #0x578
    // 0x7e89cc: r0 = []()
    //     0x7e89cc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e89d0: cmp             w0, NULL
    // 0x7e89d4: b.eq            #0x7e8b68
    // 0x7e89d8: mov             x2, x0
    // 0x7e89dc: ldur            x0, [fp, #-0x30]
    // 0x7e89e0: ldur            x1, [fp, #-8]
    // 0x7e89e4: stur            x2, [fp, #-0x10]
    // 0x7e89e8: r0 = TextStyle()
    //     0x7e89e8: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e89ec: mov             x1, x0
    // 0x7e89f0: r0 = true
    //     0x7e89f0: add             x0, NULL, #0x20  ; true
    // 0x7e89f4: stur            x1, [fp, #-0x20]
    // 0x7e89f8: StoreField: r1->field_7 = r0
    //     0x7e89f8: stur            w0, [x1, #7]
    // 0x7e89fc: ldur            x0, [fp, #-0x10]
    // 0x7e8a00: StoreField: r1->field_b = r0
    //     0x7e8a00: stur            w0, [x1, #0xb]
    // 0x7e8a04: r0 = 15.000000
    //     0x7e8a04: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bf20] 15
    //     0x7e8a08: ldr             x0, [x0, #0xf20]
    // 0x7e8a0c: StoreField: r1->field_1f = r0
    //     0x7e8a0c: stur            w0, [x1, #0x1f]
    // 0x7e8a10: r0 = Instance_FontWeight
    //     0x7e8a10: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7e8a14: ldr             x0, [x0, #0x1d0]
    // 0x7e8a18: StoreField: r1->field_23 = r0
    //     0x7e8a18: stur            w0, [x1, #0x23]
    // 0x7e8a1c: r0 = Text()
    //     0x7e8a1c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e8a20: mov             x3, x0
    // 0x7e8a24: ldur            x0, [fp, #-8]
    // 0x7e8a28: stur            x3, [fp, #-0x10]
    // 0x7e8a2c: StoreField: r3->field_b = r0
    //     0x7e8a2c: stur            w0, [x3, #0xb]
    // 0x7e8a30: ldur            x0, [fp, #-0x20]
    // 0x7e8a34: StoreField: r3->field_13 = r0
    //     0x7e8a34: stur            w0, [x3, #0x13]
    // 0x7e8a38: r1 = Null
    //     0x7e8a38: mov             x1, NULL
    // 0x7e8a3c: r2 = 6
    //     0x7e8a3c: mov             x2, #6
    // 0x7e8a40: r0 = AllocateArray()
    //     0x7e8a40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e8a44: mov             x2, x0
    // 0x7e8a48: ldur            x0, [fp, #-0x30]
    // 0x7e8a4c: stur            x2, [fp, #-8]
    // 0x7e8a50: StoreField: r2->field_f = r0
    //     0x7e8a50: stur            w0, [x2, #0xf]
    // 0x7e8a54: r16 = Instance_SizedBox
    //     0x7e8a54: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7e8a58: ldr             x16, [x16, #0x368]
    // 0x7e8a5c: StoreField: r2->field_13 = r16
    //     0x7e8a5c: stur            w16, [x2, #0x13]
    // 0x7e8a60: ldur            x0, [fp, #-0x10]
    // 0x7e8a64: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e8a64: stur            w0, [x2, #0x17]
    // 0x7e8a68: r1 = <Widget>
    //     0x7e8a68: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e8a6c: r0 = AllocateGrowableArray()
    //     0x7e8a6c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e8a70: mov             x1, x0
    // 0x7e8a74: ldur            x0, [fp, #-8]
    // 0x7e8a78: stur            x1, [fp, #-0x10]
    // 0x7e8a7c: StoreField: r1->field_f = r0
    //     0x7e8a7c: stur            w0, [x1, #0xf]
    // 0x7e8a80: r0 = 6
    //     0x7e8a80: mov             x0, #6
    // 0x7e8a84: StoreField: r1->field_b = r0
    //     0x7e8a84: stur            w0, [x1, #0xb]
    // 0x7e8a88: r0 = Row()
    //     0x7e8a88: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e8a8c: mov             x1, x0
    // 0x7e8a90: r0 = Instance_Axis
    //     0x7e8a90: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e8a94: stur            x1, [fp, #-8]
    // 0x7e8a98: StoreField: r1->field_f = r0
    //     0x7e8a98: stur            w0, [x1, #0xf]
    // 0x7e8a9c: r0 = Instance_MainAxisAlignment
    //     0x7e8a9c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7e8aa0: ldr             x0, [x0, #0x328]
    // 0x7e8aa4: StoreField: r1->field_13 = r0
    //     0x7e8aa4: stur            w0, [x1, #0x13]
    // 0x7e8aa8: r0 = Instance_MainAxisSize
    //     0x7e8aa8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e8aac: ldr             x0, [x0, #0x330]
    // 0x7e8ab0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e8ab0: stur            w0, [x1, #0x17]
    // 0x7e8ab4: r0 = Instance_CrossAxisAlignment
    //     0x7e8ab4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e8ab8: ldr             x0, [x0, #0x338]
    // 0x7e8abc: StoreField: r1->field_1b = r0
    //     0x7e8abc: stur            w0, [x1, #0x1b]
    // 0x7e8ac0: r0 = Instance_VerticalDirection
    //     0x7e8ac0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e8ac4: ldr             x0, [x0, #0x340]
    // 0x7e8ac8: StoreField: r1->field_23 = r0
    //     0x7e8ac8: stur            w0, [x1, #0x23]
    // 0x7e8acc: r0 = Instance_Clip
    //     0x7e8acc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e8ad0: ldr             x0, [x0, #0x348]
    // 0x7e8ad4: StoreField: r1->field_2b = r0
    //     0x7e8ad4: stur            w0, [x1, #0x2b]
    // 0x7e8ad8: StoreField: r1->field_2f = rZR
    //     0x7e8ad8: stur            xzr, [x1, #0x2f]
    // 0x7e8adc: ldur            x0, [fp, #-0x10]
    // 0x7e8ae0: StoreField: r1->field_b = r0
    //     0x7e8ae0: stur            w0, [x1, #0xb]
    // 0x7e8ae4: r0 = AnimatedContainer()
    //     0x7e8ae4: bl              #0x678130  ; AllocateAnimatedContainerStub -> AnimatedContainer (size=0x40)
    // 0x7e8ae8: stur            x0, [fp, #-0x10]
    // 0x7e8aec: r16 = Instance_Cubic
    //     0x7e8aec: add             x16, PP, #0x20, lsl #12  ; [pp+0x20048] Obj!Cubic@a0f991
    //     0x7e8af0: ldr             x16, [x16, #0x48]
    // 0x7e8af4: r30 = Instance_EdgeInsets
    //     0x7e8af4: add             lr, PP, #0x19, lsl #12  ; [pp+0x19480] Obj!EdgeInsets@a0c7d1
    //     0x7e8af8: ldr             lr, [lr, #0x480]
    // 0x7e8afc: stp             lr, x16, [SP, #8]
    // 0x7e8b00: ldur            x16, [fp, #-0x40]
    // 0x7e8b04: str             x16, [SP]
    // 0x7e8b08: mov             x1, x0
    // 0x7e8b0c: ldur            x2, [fp, #-8]
    // 0x7e8b10: r3 = Instance_Duration
    //     0x7e8b10: add             x3, PP, #0x11, lsl #12  ; [pp+0x119e0] Obj!Duration@a2dc51
    //     0x7e8b14: ldr             x3, [x3, #0x9e0]
    // 0x7e8b18: r4 = const [0, 0x6, 0x3, 0x3, curve, 0x3, decoration, 0x5, padding, 0x4, null]
    //     0x7e8b18: add             x4, PP, #0x20, lsl #12  ; [pp+0x208f8] List(11) [0, 0x6, 0x3, 0x3, "curve", 0x3, "decoration", 0x5, "padding", 0x4, Null]
    //     0x7e8b1c: ldr             x4, [x4, #0x8f8]
    // 0x7e8b20: r0 = AnimatedContainer()
    //     0x7e8b20: bl              #0x677d5c  ; [package:flutter/src/widgets/implicit_animations.dart] AnimatedContainer::AnimatedContainer
    // 0x7e8b24: r0 = GestureDetector()
    //     0x7e8b24: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x7e8b28: stur            x0, [fp, #-8]
    // 0x7e8b2c: ldur            x16, [fp, #-0x18]
    // 0x7e8b30: ldur            lr, [fp, #-0x10]
    // 0x7e8b34: stp             lr, x16, [SP]
    // 0x7e8b38: mov             x1, x0
    // 0x7e8b3c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7e8b3c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7e8b40: ldr             x4, [x4, #0xd50]
    // 0x7e8b44: r0 = GestureDetector()
    //     0x7e8b44: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7e8b48: ldur            x0, [fp, #-8]
    // 0x7e8b4c: LeaveFrame
    //     0x7e8b4c: mov             SP, fp
    //     0x7e8b50: ldp             fp, lr, [SP], #0x10
    // 0x7e8b54: ret
    //     0x7e8b54: ret             
    // 0x7e8b58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e8b58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e8b5c: b               #0x7e8764
    // 0x7e8b60: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e8b60: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e8b64: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e8b64: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e8b68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e8b68: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

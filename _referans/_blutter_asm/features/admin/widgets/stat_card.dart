// lib: , url: package:umrem_demo/features/admin/widgets/stat_card.dart

// class id: 1049559, size: 0x8
class :: {
}

// class id: 2913, size: 0x1c, field offset: 0xc
//   const constructor, 
class StatCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e78a4, size: 0x464
    // 0x7e78a4: EnterFrame
    //     0x7e78a4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e78a8: mov             fp, SP
    // 0x7e78ac: AllocStack(0x58)
    //     0x7e78ac: sub             SP, SP, #0x58
    // 0x7e78b0: SetupParameters(StatCard this /* r1 => r1, fp-0x8 */)
    //     0x7e78b0: stur            x1, [fp, #-8]
    // 0x7e78b4: CheckStackOverflow
    //     0x7e78b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e78b8: cmp             SP, x16
    //     0x7e78bc: b.ls            #0x7e7cf8
    // 0x7e78c0: r0 = Radius()
    //     0x7e78c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e78c4: d0 = 16.000000
    //     0x7e78c4: fmov            d0, #16.00000000
    // 0x7e78c8: stur            x0, [fp, #-0x10]
    // 0x7e78cc: StoreField: r0->field_7 = d0
    //     0x7e78cc: stur            d0, [x0, #7]
    // 0x7e78d0: StoreField: r0->field_f = d0
    //     0x7e78d0: stur            d0, [x0, #0xf]
    // 0x7e78d4: r0 = BorderRadius()
    //     0x7e78d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e78d8: mov             x3, x0
    // 0x7e78dc: ldur            x0, [fp, #-0x10]
    // 0x7e78e0: stur            x3, [fp, #-0x18]
    // 0x7e78e4: StoreField: r3->field_7 = r0
    //     0x7e78e4: stur            w0, [x3, #7]
    // 0x7e78e8: StoreField: r3->field_b = r0
    //     0x7e78e8: stur            w0, [x3, #0xb]
    // 0x7e78ec: StoreField: r3->field_f = r0
    //     0x7e78ec: stur            w0, [x3, #0xf]
    // 0x7e78f0: StoreField: r3->field_13 = r0
    //     0x7e78f0: stur            w0, [x3, #0x13]
    // 0x7e78f4: r1 = _ConstMap len:12
    //     0x7e78f4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e78f8: r2 = 400
    //     0x7e78f8: mov             x2, #0x190
    // 0x7e78fc: r0 = []()
    //     0x7e78fc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e7900: cmp             w0, NULL
    // 0x7e7904: b.eq            #0x7e7d00
    // 0x7e7908: str             x0, [SP]
    // 0x7e790c: r1 = Null
    //     0x7e790c: mov             x1, NULL
    // 0x7e7910: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7e7910: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7e7914: ldr             x4, [x4, #0x788]
    // 0x7e7918: r0 = Border.all()
    //     0x7e7918: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e791c: stur            x0, [fp, #-0x10]
    // 0x7e7920: r16 = 0.030000
    //     0x7e7920: add             x16, PP, #0x14, lsl #12  ; [pp+0x149a8] 0.03
    //     0x7e7924: ldr             x16, [x16, #0x9a8]
    // 0x7e7928: str             x16, [SP]
    // 0x7e792c: r1 = Instance_Color
    //     0x7e792c: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7e7930: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e7930: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e7934: ldr             x4, [x4, #0x198]
    // 0x7e7938: r0 = withValues()
    //     0x7e7938: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e793c: stur            x0, [fp, #-0x20]
    // 0x7e7940: r0 = BoxShadow()
    //     0x7e7940: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7e7944: stur            x0, [fp, #-0x28]
    // 0x7e7948: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7e7948: stur            xzr, [x0, #0x17]
    // 0x7e794c: r1 = Instance_BlurStyle
    //     0x7e794c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7e7950: ldr             x1, [x1, #0x9b0]
    // 0x7e7954: StoreField: r0->field_1f = r1
    //     0x7e7954: stur            w1, [x0, #0x1f]
    // 0x7e7958: ldur            x1, [fp, #-0x20]
    // 0x7e795c: StoreField: r0->field_7 = r1
    //     0x7e795c: stur            w1, [x0, #7]
    // 0x7e7960: r1 = Instance_Offset
    //     0x7e7960: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7e7964: ldr             x1, [x1, #0x9b8]
    // 0x7e7968: StoreField: r0->field_b = r1
    //     0x7e7968: stur            w1, [x0, #0xb]
    // 0x7e796c: d0 = 10.000000
    //     0x7e796c: fmov            d0, #10.00000000
    // 0x7e7970: StoreField: r0->field_f = d0
    //     0x7e7970: stur            d0, [x0, #0xf]
    // 0x7e7974: r1 = Null
    //     0x7e7974: mov             x1, NULL
    // 0x7e7978: r2 = 2
    //     0x7e7978: mov             x2, #2
    // 0x7e797c: r0 = AllocateArray()
    //     0x7e797c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7980: mov             x2, x0
    // 0x7e7984: ldur            x0, [fp, #-0x28]
    // 0x7e7988: stur            x2, [fp, #-0x20]
    // 0x7e798c: StoreField: r2->field_f = r0
    //     0x7e798c: stur            w0, [x2, #0xf]
    // 0x7e7990: r1 = <BoxShadow>
    //     0x7e7990: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7e7994: ldr             x1, [x1, #0x9c0]
    // 0x7e7998: r0 = AllocateGrowableArray()
    //     0x7e7998: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e799c: mov             x1, x0
    // 0x7e79a0: ldur            x0, [fp, #-0x20]
    // 0x7e79a4: stur            x1, [fp, #-0x28]
    // 0x7e79a8: StoreField: r1->field_f = r0
    //     0x7e79a8: stur            w0, [x1, #0xf]
    // 0x7e79ac: r0 = 2
    //     0x7e79ac: mov             x0, #2
    // 0x7e79b0: StoreField: r1->field_b = r0
    //     0x7e79b0: stur            w0, [x1, #0xb]
    // 0x7e79b4: r0 = BoxDecoration()
    //     0x7e79b4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e79b8: mov             x2, x0
    // 0x7e79bc: r0 = Instance_Color
    //     0x7e79bc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e79c0: stur            x2, [fp, #-0x20]
    // 0x7e79c4: StoreField: r2->field_7 = r0
    //     0x7e79c4: stur            w0, [x2, #7]
    // 0x7e79c8: ldur            x0, [fp, #-0x10]
    // 0x7e79cc: StoreField: r2->field_f = r0
    //     0x7e79cc: stur            w0, [x2, #0xf]
    // 0x7e79d0: ldur            x0, [fp, #-0x18]
    // 0x7e79d4: StoreField: r2->field_13 = r0
    //     0x7e79d4: stur            w0, [x2, #0x13]
    // 0x7e79d8: ldur            x0, [fp, #-0x28]
    // 0x7e79dc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e79dc: stur            w0, [x2, #0x17]
    // 0x7e79e0: r0 = Instance_BoxShape
    //     0x7e79e0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e79e4: ldr             x0, [x0, #0x1c8]
    // 0x7e79e8: StoreField: r2->field_23 = r0
    //     0x7e79e8: stur            w0, [x2, #0x23]
    // 0x7e79ec: ldur            x0, [fp, #-8]
    // 0x7e79f0: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7e79f0: ldur            w3, [x0, #0x17]
    // 0x7e79f4: DecompressPointer r3
    //     0x7e79f4: add             x3, x3, HEAP, lsl #32
    // 0x7e79f8: stur            x3, [fp, #-0x10]
    // 0x7e79fc: r16 = 0.100000
    //     0x7e79fc: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e7a00: ldr             x16, [x16, #0x1f8]
    // 0x7e7a04: str             x16, [SP]
    // 0x7e7a08: mov             x1, x3
    // 0x7e7a0c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e7a0c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e7a10: ldr             x4, [x4, #0x198]
    // 0x7e7a14: r0 = withValues()
    //     0x7e7a14: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e7a18: stur            x0, [fp, #-0x18]
    // 0x7e7a1c: r0 = BoxDecoration()
    //     0x7e7a1c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e7a20: mov             x1, x0
    // 0x7e7a24: ldur            x0, [fp, #-0x18]
    // 0x7e7a28: stur            x1, [fp, #-0x28]
    // 0x7e7a2c: StoreField: r1->field_7 = r0
    //     0x7e7a2c: stur            w0, [x1, #7]
    // 0x7e7a30: r0 = Instance_BoxShape
    //     0x7e7a30: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7e7a34: ldr             x0, [x0, #0x1a0]
    // 0x7e7a38: StoreField: r1->field_23 = r0
    //     0x7e7a38: stur            w0, [x1, #0x23]
    // 0x7e7a3c: ldur            x0, [fp, #-8]
    // 0x7e7a40: LoadField: r2 = r0->field_13
    //     0x7e7a40: ldur            w2, [x0, #0x13]
    // 0x7e7a44: DecompressPointer r2
    //     0x7e7a44: add             x2, x2, HEAP, lsl #32
    // 0x7e7a48: stur            x2, [fp, #-0x18]
    // 0x7e7a4c: r0 = Icon()
    //     0x7e7a4c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e7a50: mov             x1, x0
    // 0x7e7a54: ldur            x0, [fp, #-0x18]
    // 0x7e7a58: stur            x1, [fp, #-0x30]
    // 0x7e7a5c: StoreField: r1->field_b = r0
    //     0x7e7a5c: stur            w0, [x1, #0xb]
    // 0x7e7a60: ldur            x0, [fp, #-0x10]
    // 0x7e7a64: StoreField: r1->field_23 = r0
    //     0x7e7a64: stur            w0, [x1, #0x23]
    // 0x7e7a68: r0 = Container()
    //     0x7e7a68: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e7a6c: stur            x0, [fp, #-0x18]
    // 0x7e7a70: r16 = Instance_EdgeInsets
    //     0x7e7a70: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7e7a74: ldr             x16, [x16, #0x370]
    // 0x7e7a78: ldur            lr, [fp, #-0x28]
    // 0x7e7a7c: stp             lr, x16, [SP, #8]
    // 0x7e7a80: ldur            x16, [fp, #-0x30]
    // 0x7e7a84: str             x16, [SP]
    // 0x7e7a88: mov             x1, x0
    // 0x7e7a8c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e7a8c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e7a90: ldr             x4, [x4, #0x1e8]
    // 0x7e7a94: r0 = Container()
    //     0x7e7a94: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e7a98: ldur            x0, [fp, #-8]
    // 0x7e7a9c: LoadField: r3 = r0->field_b
    //     0x7e7a9c: ldur            w3, [x0, #0xb]
    // 0x7e7aa0: DecompressPointer r3
    //     0x7e7aa0: add             x3, x3, HEAP, lsl #32
    // 0x7e7aa4: stur            x3, [fp, #-0x28]
    // 0x7e7aa8: r1 = _ConstMap len:12
    //     0x7e7aa8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e7aac: r2 = 1200
    //     0x7e7aac: mov             x2, #0x4b0
    // 0x7e7ab0: r0 = []()
    //     0x7e7ab0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e7ab4: stur            x0, [fp, #-0x30]
    // 0x7e7ab8: cmp             w0, NULL
    // 0x7e7abc: b.eq            #0x7e7d04
    // 0x7e7ac0: r0 = TextStyle()
    //     0x7e7ac0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e7ac4: mov             x1, x0
    // 0x7e7ac8: r0 = true
    //     0x7e7ac8: add             x0, NULL, #0x20  ; true
    // 0x7e7acc: stur            x1, [fp, #-0x38]
    // 0x7e7ad0: StoreField: r1->field_7 = r0
    //     0x7e7ad0: stur            w0, [x1, #7]
    // 0x7e7ad4: ldur            x2, [fp, #-0x30]
    // 0x7e7ad8: StoreField: r1->field_b = r2
    //     0x7e7ad8: stur            w2, [x1, #0xb]
    // 0x7e7adc: r2 = 13.000000
    //     0x7e7adc: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e7ae0: ldr             x2, [x2, #0xb00]
    // 0x7e7ae4: StoreField: r1->field_1f = r2
    //     0x7e7ae4: stur            w2, [x1, #0x1f]
    // 0x7e7ae8: r0 = Text()
    //     0x7e7ae8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e7aec: mov             x1, x0
    // 0x7e7af0: ldur            x0, [fp, #-0x28]
    // 0x7e7af4: stur            x1, [fp, #-0x30]
    // 0x7e7af8: StoreField: r1->field_b = r0
    //     0x7e7af8: stur            w0, [x1, #0xb]
    // 0x7e7afc: ldur            x0, [fp, #-0x38]
    // 0x7e7b00: StoreField: r1->field_13 = r0
    //     0x7e7b00: stur            w0, [x1, #0x13]
    // 0x7e7b04: ldur            x0, [fp, #-8]
    // 0x7e7b08: LoadField: r2 = r0->field_f
    //     0x7e7b08: ldur            w2, [x0, #0xf]
    // 0x7e7b0c: DecompressPointer r2
    //     0x7e7b0c: add             x2, x2, HEAP, lsl #32
    // 0x7e7b10: stur            x2, [fp, #-0x28]
    // 0x7e7b14: r0 = TextStyle()
    //     0x7e7b14: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e7b18: mov             x1, x0
    // 0x7e7b1c: r0 = true
    //     0x7e7b1c: add             x0, NULL, #0x20  ; true
    // 0x7e7b20: stur            x1, [fp, #-8]
    // 0x7e7b24: StoreField: r1->field_7 = r0
    //     0x7e7b24: stur            w0, [x1, #7]
    // 0x7e7b28: ldur            x0, [fp, #-0x10]
    // 0x7e7b2c: StoreField: r1->field_b = r0
    //     0x7e7b2c: stur            w0, [x1, #0xb]
    // 0x7e7b30: r0 = 20.000000
    //     0x7e7b30: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7e7b34: ldr             x0, [x0, #0xe48]
    // 0x7e7b38: StoreField: r1->field_1f = r0
    //     0x7e7b38: stur            w0, [x1, #0x1f]
    // 0x7e7b3c: r0 = Instance_FontWeight
    //     0x7e7b3c: add             x0, PP, #0x14, lsl #12  ; [pp+0x149c8] Obj!FontWeight@a21041
    //     0x7e7b40: ldr             x0, [x0, #0x9c8]
    // 0x7e7b44: StoreField: r1->field_23 = r0
    //     0x7e7b44: stur            w0, [x1, #0x23]
    // 0x7e7b48: r0 = Text()
    //     0x7e7b48: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e7b4c: mov             x3, x0
    // 0x7e7b50: ldur            x0, [fp, #-0x28]
    // 0x7e7b54: stur            x3, [fp, #-0x10]
    // 0x7e7b58: StoreField: r3->field_b = r0
    //     0x7e7b58: stur            w0, [x3, #0xb]
    // 0x7e7b5c: ldur            x0, [fp, #-8]
    // 0x7e7b60: StoreField: r3->field_13 = r0
    //     0x7e7b60: stur            w0, [x3, #0x13]
    // 0x7e7b64: r1 = Null
    //     0x7e7b64: mov             x1, NULL
    // 0x7e7b68: r2 = 4
    //     0x7e7b68: mov             x2, #4
    // 0x7e7b6c: r0 = AllocateArray()
    //     0x7e7b6c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7b70: mov             x2, x0
    // 0x7e7b74: ldur            x0, [fp, #-0x30]
    // 0x7e7b78: stur            x2, [fp, #-8]
    // 0x7e7b7c: StoreField: r2->field_f = r0
    //     0x7e7b7c: stur            w0, [x2, #0xf]
    // 0x7e7b80: ldur            x0, [fp, #-0x10]
    // 0x7e7b84: StoreField: r2->field_13 = r0
    //     0x7e7b84: stur            w0, [x2, #0x13]
    // 0x7e7b88: r1 = <Widget>
    //     0x7e7b88: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e7b8c: r0 = AllocateGrowableArray()
    //     0x7e7b8c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7b90: mov             x1, x0
    // 0x7e7b94: ldur            x0, [fp, #-8]
    // 0x7e7b98: stur            x1, [fp, #-0x10]
    // 0x7e7b9c: StoreField: r1->field_f = r0
    //     0x7e7b9c: stur            w0, [x1, #0xf]
    // 0x7e7ba0: r0 = 4
    //     0x7e7ba0: mov             x0, #4
    // 0x7e7ba4: StoreField: r1->field_b = r0
    //     0x7e7ba4: stur            w0, [x1, #0xb]
    // 0x7e7ba8: r0 = Column()
    //     0x7e7ba8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e7bac: mov             x3, x0
    // 0x7e7bb0: r0 = Instance_Axis
    //     0x7e7bb0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e7bb4: stur            x3, [fp, #-8]
    // 0x7e7bb8: StoreField: r3->field_f = r0
    //     0x7e7bb8: stur            w0, [x3, #0xf]
    // 0x7e7bbc: r0 = Instance_MainAxisAlignment
    //     0x7e7bbc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e7bc0: ldr             x0, [x0, #0x230]
    // 0x7e7bc4: StoreField: r3->field_13 = r0
    //     0x7e7bc4: stur            w0, [x3, #0x13]
    // 0x7e7bc8: r1 = Instance_MainAxisSize
    //     0x7e7bc8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e7bcc: ldr             x1, [x1, #0x330]
    // 0x7e7bd0: ArrayStore: r3[0] = r1  ; List_4
    //     0x7e7bd0: stur            w1, [x3, #0x17]
    // 0x7e7bd4: r1 = Instance_CrossAxisAlignment
    //     0x7e7bd4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e7bd8: ldr             x1, [x1, #0x238]
    // 0x7e7bdc: StoreField: r3->field_1b = r1
    //     0x7e7bdc: stur            w1, [x3, #0x1b]
    // 0x7e7be0: r4 = Instance_VerticalDirection
    //     0x7e7be0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7be4: ldr             x4, [x4, #0x340]
    // 0x7e7be8: StoreField: r3->field_23 = r4
    //     0x7e7be8: stur            w4, [x3, #0x23]
    // 0x7e7bec: r5 = Instance_Clip
    //     0x7e7bec: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7bf0: ldr             x5, [x5, #0x348]
    // 0x7e7bf4: StoreField: r3->field_2b = r5
    //     0x7e7bf4: stur            w5, [x3, #0x2b]
    // 0x7e7bf8: StoreField: r3->field_2f = rZR
    //     0x7e7bf8: stur            xzr, [x3, #0x2f]
    // 0x7e7bfc: ldur            x1, [fp, #-0x10]
    // 0x7e7c00: StoreField: r3->field_b = r1
    //     0x7e7c00: stur            w1, [x3, #0xb]
    // 0x7e7c04: r1 = Null
    //     0x7e7c04: mov             x1, NULL
    // 0x7e7c08: r2 = 6
    //     0x7e7c08: mov             x2, #6
    // 0x7e7c0c: r0 = AllocateArray()
    //     0x7e7c0c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7c10: mov             x2, x0
    // 0x7e7c14: ldur            x0, [fp, #-0x18]
    // 0x7e7c18: stur            x2, [fp, #-0x10]
    // 0x7e7c1c: StoreField: r2->field_f = r0
    //     0x7e7c1c: stur            w0, [x2, #0xf]
    // 0x7e7c20: r16 = Instance_SizedBox
    //     0x7e7c20: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e7c24: ldr             x16, [x16, #0x360]
    // 0x7e7c28: StoreField: r2->field_13 = r16
    //     0x7e7c28: stur            w16, [x2, #0x13]
    // 0x7e7c2c: ldur            x0, [fp, #-8]
    // 0x7e7c30: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e7c30: stur            w0, [x2, #0x17]
    // 0x7e7c34: r1 = <Widget>
    //     0x7e7c34: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e7c38: r0 = AllocateGrowableArray()
    //     0x7e7c38: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7c3c: mov             x1, x0
    // 0x7e7c40: ldur            x0, [fp, #-0x10]
    // 0x7e7c44: stur            x1, [fp, #-8]
    // 0x7e7c48: StoreField: r1->field_f = r0
    //     0x7e7c48: stur            w0, [x1, #0xf]
    // 0x7e7c4c: r0 = 6
    //     0x7e7c4c: mov             x0, #6
    // 0x7e7c50: StoreField: r1->field_b = r0
    //     0x7e7c50: stur            w0, [x1, #0xb]
    // 0x7e7c54: r0 = Row()
    //     0x7e7c54: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e7c58: mov             x1, x0
    // 0x7e7c5c: r0 = Instance_Axis
    //     0x7e7c5c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e7c60: stur            x1, [fp, #-0x10]
    // 0x7e7c64: StoreField: r1->field_f = r0
    //     0x7e7c64: stur            w0, [x1, #0xf]
    // 0x7e7c68: r0 = Instance_MainAxisAlignment
    //     0x7e7c68: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e7c6c: ldr             x0, [x0, #0x230]
    // 0x7e7c70: StoreField: r1->field_13 = r0
    //     0x7e7c70: stur            w0, [x1, #0x13]
    // 0x7e7c74: r0 = Instance_MainAxisSize
    //     0x7e7c74: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e7c78: ldr             x0, [x0, #0xb60]
    // 0x7e7c7c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e7c7c: stur            w0, [x1, #0x17]
    // 0x7e7c80: r0 = Instance_CrossAxisAlignment
    //     0x7e7c80: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e7c84: ldr             x0, [x0, #0x338]
    // 0x7e7c88: StoreField: r1->field_1b = r0
    //     0x7e7c88: stur            w0, [x1, #0x1b]
    // 0x7e7c8c: r0 = Instance_VerticalDirection
    //     0x7e7c8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7c90: ldr             x0, [x0, #0x340]
    // 0x7e7c94: StoreField: r1->field_23 = r0
    //     0x7e7c94: stur            w0, [x1, #0x23]
    // 0x7e7c98: r0 = Instance_Clip
    //     0x7e7c98: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7c9c: ldr             x0, [x0, #0x348]
    // 0x7e7ca0: StoreField: r1->field_2b = r0
    //     0x7e7ca0: stur            w0, [x1, #0x2b]
    // 0x7e7ca4: StoreField: r1->field_2f = rZR
    //     0x7e7ca4: stur            xzr, [x1, #0x2f]
    // 0x7e7ca8: ldur            x0, [fp, #-8]
    // 0x7e7cac: StoreField: r1->field_b = r0
    //     0x7e7cac: stur            w0, [x1, #0xb]
    // 0x7e7cb0: r0 = Container()
    //     0x7e7cb0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e7cb4: stur            x0, [fp, #-8]
    // 0x7e7cb8: r16 = 160.000000
    //     0x7e7cb8: add             x16, PP, #0x14, lsl #12  ; [pp+0x149d0] 160
    //     0x7e7cbc: ldr             x16, [x16, #0x9d0]
    // 0x7e7cc0: r30 = Instance_EdgeInsets
    //     0x7e7cc0: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e7cc4: ldr             lr, [lr, #0x240]
    // 0x7e7cc8: stp             lr, x16, [SP, #0x10]
    // 0x7e7ccc: ldur            x16, [fp, #-0x20]
    // 0x7e7cd0: ldur            lr, [fp, #-0x10]
    // 0x7e7cd4: stp             lr, x16, [SP]
    // 0x7e7cd8: mov             x1, x0
    // 0x7e7cdc: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x7e7cdc: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x7e7ce0: ldr             x4, [x4, #0xb28]
    // 0x7e7ce4: r0 = Container()
    //     0x7e7ce4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e7ce8: ldur            x0, [fp, #-8]
    // 0x7e7cec: LeaveFrame
    //     0x7e7cec: mov             SP, fp
    //     0x7e7cf0: ldp             fp, lr, [SP], #0x10
    // 0x7e7cf4: ret
    //     0x7e7cf4: ret             
    // 0x7e7cf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e7cf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e7cfc: b               #0x7e78c0
    // 0x7e7d00: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e7d00: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e7d04: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e7d04: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

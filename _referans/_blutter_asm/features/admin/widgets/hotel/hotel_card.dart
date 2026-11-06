// lib: , url: package:umrem_demo/features/admin/widgets/hotel/hotel_card.dart

// class id: 1049553, size: 0x8
class :: {
}

// class id: 2916, size: 0x18, field offset: 0xc
//   const constructor, 
class HotelCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e5e60, size: 0x8b8
    // 0x7e5e60: EnterFrame
    //     0x7e5e60: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5e64: mov             fp, SP
    // 0x7e5e68: AllocStack(0x70)
    //     0x7e5e68: sub             SP, SP, #0x70
    // 0x7e5e6c: SetupParameters(HotelCard this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e5e6c: stur            x1, [fp, #-8]
    //     0x7e5e70: stur            x2, [fp, #-0x10]
    // 0x7e5e74: CheckStackOverflow
    //     0x7e5e74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5e78: cmp             SP, x16
    //     0x7e5e7c: b.ls            #0x7e6704
    // 0x7e5e80: r1 = 2
    //     0x7e5e80: mov             x1, #2
    // 0x7e5e84: r0 = AllocateContext()
    //     0x7e5e84: bl              #0x927010  ; AllocateContextStub
    // 0x7e5e88: mov             x1, x0
    // 0x7e5e8c: ldur            x0, [fp, #-8]
    // 0x7e5e90: stur            x1, [fp, #-0x18]
    // 0x7e5e94: StoreField: r1->field_f = r0
    //     0x7e5e94: stur            w0, [x1, #0xf]
    // 0x7e5e98: ldur            x2, [fp, #-0x10]
    // 0x7e5e9c: StoreField: r1->field_13 = r2
    //     0x7e5e9c: stur            w2, [x1, #0x13]
    // 0x7e5ea0: r0 = Radius()
    //     0x7e5ea0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e5ea4: d0 = 16.000000
    //     0x7e5ea4: fmov            d0, #16.00000000
    // 0x7e5ea8: stur            x0, [fp, #-0x10]
    // 0x7e5eac: StoreField: r0->field_7 = d0
    //     0x7e5eac: stur            d0, [x0, #7]
    // 0x7e5eb0: StoreField: r0->field_f = d0
    //     0x7e5eb0: stur            d0, [x0, #0xf]
    // 0x7e5eb4: r0 = BorderRadius()
    //     0x7e5eb4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e5eb8: mov             x3, x0
    // 0x7e5ebc: ldur            x0, [fp, #-0x10]
    // 0x7e5ec0: stur            x3, [fp, #-0x20]
    // 0x7e5ec4: StoreField: r3->field_7 = r0
    //     0x7e5ec4: stur            w0, [x3, #7]
    // 0x7e5ec8: StoreField: r3->field_b = r0
    //     0x7e5ec8: stur            w0, [x3, #0xb]
    // 0x7e5ecc: StoreField: r3->field_f = r0
    //     0x7e5ecc: stur            w0, [x3, #0xf]
    // 0x7e5ed0: StoreField: r3->field_13 = r0
    //     0x7e5ed0: stur            w0, [x3, #0x13]
    // 0x7e5ed4: r1 = _ConstMap len:12
    //     0x7e5ed4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e5ed8: r2 = 400
    //     0x7e5ed8: mov             x2, #0x190
    // 0x7e5edc: r0 = []()
    //     0x7e5edc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e5ee0: cmp             w0, NULL
    // 0x7e5ee4: b.eq            #0x7e670c
    // 0x7e5ee8: str             x0, [SP]
    // 0x7e5eec: r1 = Null
    //     0x7e5eec: mov             x1, NULL
    // 0x7e5ef0: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7e5ef0: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7e5ef4: ldr             x4, [x4, #0x788]
    // 0x7e5ef8: r0 = Border.all()
    //     0x7e5ef8: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e5efc: stur            x0, [fp, #-0x10]
    // 0x7e5f00: r0 = BoxDecoration()
    //     0x7e5f00: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e5f04: mov             x2, x0
    // 0x7e5f08: r0 = Instance_Color
    //     0x7e5f08: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e5f0c: stur            x2, [fp, #-0x28]
    // 0x7e5f10: StoreField: r2->field_7 = r0
    //     0x7e5f10: stur            w0, [x2, #7]
    // 0x7e5f14: ldur            x0, [fp, #-0x10]
    // 0x7e5f18: StoreField: r2->field_f = r0
    //     0x7e5f18: stur            w0, [x2, #0xf]
    // 0x7e5f1c: ldur            x0, [fp, #-0x20]
    // 0x7e5f20: StoreField: r2->field_13 = r0
    //     0x7e5f20: stur            w0, [x2, #0x13]
    // 0x7e5f24: r0 = Instance_BoxShape
    //     0x7e5f24: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e5f28: ldr             x0, [x0, #0x1c8]
    // 0x7e5f2c: StoreField: r2->field_23 = r0
    //     0x7e5f2c: stur            w0, [x2, #0x23]
    // 0x7e5f30: r16 = 0.100000
    //     0x7e5f30: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e5f34: ldr             x16, [x16, #0x1f8]
    // 0x7e5f38: str             x16, [SP]
    // 0x7e5f3c: r1 = Instance_Color
    //     0x7e5f3c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x7e5f40: ldr             x1, [x1, #0x790]
    // 0x7e5f44: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e5f44: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e5f48: ldr             x4, [x4, #0x198]
    // 0x7e5f4c: r0 = withValues()
    //     0x7e5f4c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e5f50: stur            x0, [fp, #-0x10]
    // 0x7e5f54: r0 = BoxDecoration()
    //     0x7e5f54: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e5f58: mov             x1, x0
    // 0x7e5f5c: ldur            x0, [fp, #-0x10]
    // 0x7e5f60: stur            x1, [fp, #-0x20]
    // 0x7e5f64: StoreField: r1->field_7 = r0
    //     0x7e5f64: stur            w0, [x1, #7]
    // 0x7e5f68: r0 = Instance_BoxShape
    //     0x7e5f68: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7e5f6c: ldr             x0, [x0, #0x1a0]
    // 0x7e5f70: StoreField: r1->field_23 = r0
    //     0x7e5f70: stur            w0, [x1, #0x23]
    // 0x7e5f74: r0 = Container()
    //     0x7e5f74: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e5f78: stur            x0, [fp, #-0x10]
    // 0x7e5f7c: r16 = Instance_EdgeInsets
    //     0x7e5f7c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x7e5f80: ldr             x16, [x16, #0x480]
    // 0x7e5f84: ldur            lr, [fp, #-0x20]
    // 0x7e5f88: stp             lr, x16, [SP, #8]
    // 0x7e5f8c: r16 = Instance_Icon
    //     0x7e5f8c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0b8] Obj!Icon@a1f1b1
    //     0x7e5f90: ldr             x16, [x16, #0xb8]
    // 0x7e5f94: str             x16, [SP]
    // 0x7e5f98: mov             x1, x0
    // 0x7e5f9c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e5f9c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e5fa0: ldr             x4, [x4, #0x1e8]
    // 0x7e5fa4: r0 = Container()
    //     0x7e5fa4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e5fa8: ldur            x0, [fp, #-8]
    // 0x7e5fac: LoadField: r1 = r0->field_b
    //     0x7e5fac: ldur            w1, [x0, #0xb]
    // 0x7e5fb0: DecompressPointer r1
    //     0x7e5fb0: add             x1, x1, HEAP, lsl #32
    // 0x7e5fb4: stur            x1, [fp, #-0x30]
    // 0x7e5fb8: LoadField: r2 = r1->field_b
    //     0x7e5fb8: ldur            w2, [x1, #0xb]
    // 0x7e5fbc: DecompressPointer r2
    //     0x7e5fbc: add             x2, x2, HEAP, lsl #32
    // 0x7e5fc0: stur            x2, [fp, #-0x20]
    // 0x7e5fc4: r0 = Text()
    //     0x7e5fc4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e5fc8: mov             x3, x0
    // 0x7e5fcc: ldur            x0, [fp, #-0x20]
    // 0x7e5fd0: stur            x3, [fp, #-0x38]
    // 0x7e5fd4: StoreField: r3->field_b = r0
    //     0x7e5fd4: stur            w0, [x3, #0xb]
    // 0x7e5fd8: r0 = Instance_TextStyle
    //     0x7e5fd8: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c0a8] Obj!TextStyle@a17c91
    //     0x7e5fdc: ldr             x0, [x0, #0xa8]
    // 0x7e5fe0: StoreField: r3->field_13 = r0
    //     0x7e5fe0: stur            w0, [x3, #0x13]
    // 0x7e5fe4: ldur            x0, [fp, #-0x30]
    // 0x7e5fe8: LoadField: r4 = r0->field_f
    //     0x7e5fe8: ldur            w4, [x0, #0xf]
    // 0x7e5fec: DecompressPointer r4
    //     0x7e5fec: add             x4, x4, HEAP, lsl #32
    // 0x7e5ff0: stur            x4, [fp, #-0x20]
    // 0x7e5ff4: r1 = Null
    //     0x7e5ff4: mov             x1, NULL
    // 0x7e5ff8: r2 = 6
    //     0x7e5ff8: mov             x2, #6
    // 0x7e5ffc: r0 = AllocateArray()
    //     0x7e5ffc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e6000: mov             x1, x0
    // 0x7e6004: ldur            x0, [fp, #-0x20]
    // 0x7e6008: StoreField: r1->field_f = r0
    //     0x7e6008: stur            w0, [x1, #0xf]
    // 0x7e600c: r16 = " • "
    //     0x7e600c: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7e6010: ldr             x16, [x16, #0x9d8]
    // 0x7e6014: StoreField: r1->field_13 = r16
    //     0x7e6014: stur            w16, [x1, #0x13]
    // 0x7e6018: ldur            x0, [fp, #-0x30]
    // 0x7e601c: LoadField: r2 = r0->field_13
    //     0x7e601c: ldur            w2, [x0, #0x13]
    // 0x7e6020: DecompressPointer r2
    //     0x7e6020: add             x2, x2, HEAP, lsl #32
    // 0x7e6024: ArrayStore: r1[0] = r2  ; List_4
    //     0x7e6024: stur            w2, [x1, #0x17]
    // 0x7e6028: str             x1, [SP]
    // 0x7e602c: r0 = _interpolate()
    //     0x7e602c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e6030: r1 = _ConstMap len:12
    //     0x7e6030: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e6034: r2 = 1200
    //     0x7e6034: mov             x2, #0x4b0
    // 0x7e6038: stur            x0, [fp, #-0x20]
    // 0x7e603c: r0 = []()
    //     0x7e603c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e6040: stur            x0, [fp, #-0x40]
    // 0x7e6044: cmp             w0, NULL
    // 0x7e6048: b.eq            #0x7e6710
    // 0x7e604c: r0 = TextStyle()
    //     0x7e604c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e6050: mov             x1, x0
    // 0x7e6054: r0 = true
    //     0x7e6054: add             x0, NULL, #0x20  ; true
    // 0x7e6058: stur            x1, [fp, #-0x48]
    // 0x7e605c: StoreField: r1->field_7 = r0
    //     0x7e605c: stur            w0, [x1, #7]
    // 0x7e6060: ldur            x2, [fp, #-0x40]
    // 0x7e6064: StoreField: r1->field_b = r2
    //     0x7e6064: stur            w2, [x1, #0xb]
    // 0x7e6068: r0 = Text()
    //     0x7e6068: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e606c: mov             x3, x0
    // 0x7e6070: ldur            x0, [fp, #-0x20]
    // 0x7e6074: stur            x3, [fp, #-0x40]
    // 0x7e6078: StoreField: r3->field_b = r0
    //     0x7e6078: stur            w0, [x3, #0xb]
    // 0x7e607c: ldur            x0, [fp, #-0x48]
    // 0x7e6080: StoreField: r3->field_13 = r0
    //     0x7e6080: stur            w0, [x3, #0x13]
    // 0x7e6084: r1 = Null
    //     0x7e6084: mov             x1, NULL
    // 0x7e6088: r2 = 4
    //     0x7e6088: mov             x2, #4
    // 0x7e608c: r0 = AllocateArray()
    //     0x7e608c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e6090: mov             x2, x0
    // 0x7e6094: ldur            x0, [fp, #-0x38]
    // 0x7e6098: stur            x2, [fp, #-0x20]
    // 0x7e609c: StoreField: r2->field_f = r0
    //     0x7e609c: stur            w0, [x2, #0xf]
    // 0x7e60a0: ldur            x0, [fp, #-0x40]
    // 0x7e60a4: StoreField: r2->field_13 = r0
    //     0x7e60a4: stur            w0, [x2, #0x13]
    // 0x7e60a8: r1 = <Widget>
    //     0x7e60a8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e60ac: r0 = AllocateGrowableArray()
    //     0x7e60ac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e60b0: mov             x1, x0
    // 0x7e60b4: ldur            x0, [fp, #-0x20]
    // 0x7e60b8: stur            x1, [fp, #-0x38]
    // 0x7e60bc: StoreField: r1->field_f = r0
    //     0x7e60bc: stur            w0, [x1, #0xf]
    // 0x7e60c0: r2 = 4
    //     0x7e60c0: mov             x2, #4
    // 0x7e60c4: StoreField: r1->field_b = r2
    //     0x7e60c4: stur            w2, [x1, #0xb]
    // 0x7e60c8: r0 = Column()
    //     0x7e60c8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e60cc: mov             x2, x0
    // 0x7e60d0: r0 = Instance_Axis
    //     0x7e60d0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e60d4: stur            x2, [fp, #-0x20]
    // 0x7e60d8: StoreField: r2->field_f = r0
    //     0x7e60d8: stur            w0, [x2, #0xf]
    // 0x7e60dc: r3 = Instance_MainAxisAlignment
    //     0x7e60dc: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e60e0: ldr             x3, [x3, #0x230]
    // 0x7e60e4: StoreField: r2->field_13 = r3
    //     0x7e60e4: stur            w3, [x2, #0x13]
    // 0x7e60e8: r4 = Instance_MainAxisSize
    //     0x7e60e8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e60ec: ldr             x4, [x4, #0x330]
    // 0x7e60f0: ArrayStore: r2[0] = r4  ; List_4
    //     0x7e60f0: stur            w4, [x2, #0x17]
    // 0x7e60f4: r5 = Instance_CrossAxisAlignment
    //     0x7e60f4: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e60f8: ldr             x5, [x5, #0x238]
    // 0x7e60fc: StoreField: r2->field_1b = r5
    //     0x7e60fc: stur            w5, [x2, #0x1b]
    // 0x7e6100: r6 = Instance_VerticalDirection
    //     0x7e6100: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e6104: ldr             x6, [x6, #0x340]
    // 0x7e6108: StoreField: r2->field_23 = r6
    //     0x7e6108: stur            w6, [x2, #0x23]
    // 0x7e610c: r7 = Instance_Clip
    //     0x7e610c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e6110: ldr             x7, [x7, #0x348]
    // 0x7e6114: StoreField: r2->field_2b = r7
    //     0x7e6114: stur            w7, [x2, #0x2b]
    // 0x7e6118: StoreField: r2->field_2f = rZR
    //     0x7e6118: stur            xzr, [x2, #0x2f]
    // 0x7e611c: ldur            x1, [fp, #-0x38]
    // 0x7e6120: StoreField: r2->field_b = r1
    //     0x7e6120: stur            w1, [x2, #0xb]
    // 0x7e6124: r1 = <FlexParentData>
    //     0x7e6124: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e6128: ldr             x1, [x1, #0x340]
    // 0x7e612c: r0 = Expanded()
    //     0x7e612c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e6130: mov             x3, x0
    // 0x7e6134: r0 = 1
    //     0x7e6134: mov             x0, #1
    // 0x7e6138: stur            x3, [fp, #-0x38]
    // 0x7e613c: StoreField: r3->field_13 = r0
    //     0x7e613c: stur            x0, [x3, #0x13]
    // 0x7e6140: r0 = Instance_FlexFit
    //     0x7e6140: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e6144: ldr             x0, [x0, #0x348]
    // 0x7e6148: StoreField: r3->field_1b = r0
    //     0x7e6148: stur            w0, [x3, #0x1b]
    // 0x7e614c: ldur            x0, [fp, #-0x20]
    // 0x7e6150: StoreField: r3->field_b = r0
    //     0x7e6150: stur            w0, [x3, #0xb]
    // 0x7e6154: r1 = Null
    //     0x7e6154: mov             x1, NULL
    // 0x7e6158: r2 = 6
    //     0x7e6158: mov             x2, #6
    // 0x7e615c: r0 = AllocateArray()
    //     0x7e615c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e6160: mov             x2, x0
    // 0x7e6164: ldur            x0, [fp, #-0x10]
    // 0x7e6168: stur            x2, [fp, #-0x20]
    // 0x7e616c: StoreField: r2->field_f = r0
    //     0x7e616c: stur            w0, [x2, #0xf]
    // 0x7e6170: r16 = Instance_SizedBox
    //     0x7e6170: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e6174: ldr             x16, [x16, #0x360]
    // 0x7e6178: StoreField: r2->field_13 = r16
    //     0x7e6178: stur            w16, [x2, #0x13]
    // 0x7e617c: ldur            x0, [fp, #-0x38]
    // 0x7e6180: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e6180: stur            w0, [x2, #0x17]
    // 0x7e6184: r1 = <Widget>
    //     0x7e6184: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e6188: r0 = AllocateGrowableArray()
    //     0x7e6188: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e618c: mov             x2, x0
    // 0x7e6190: ldur            x0, [fp, #-0x20]
    // 0x7e6194: stur            x2, [fp, #-0x38]
    // 0x7e6198: StoreField: r2->field_f = r0
    //     0x7e6198: stur            w0, [x2, #0xf]
    // 0x7e619c: r0 = 6
    //     0x7e619c: mov             x0, #6
    // 0x7e61a0: StoreField: r2->field_b = r0
    //     0x7e61a0: stur            w0, [x2, #0xb]
    // 0x7e61a4: ldur            x0, [fp, #-0x30]
    // 0x7e61a8: LoadField: r3 = r0->field_1f
    //     0x7e61a8: ldur            w3, [x0, #0x1f]
    // 0x7e61ac: DecompressPointer r3
    //     0x7e61ac: add             x3, x3, HEAP, lsl #32
    // 0x7e61b0: stur            x3, [fp, #-0x10]
    // 0x7e61b4: cmp             w3, NULL
    // 0x7e61b8: b.eq            #0x7e6330
    // 0x7e61bc: r16 = 0.100000
    //     0x7e61bc: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e61c0: ldr             x16, [x16, #0x1f8]
    // 0x7e61c4: str             x16, [SP]
    // 0x7e61c8: r1 = Instance_MaterialColor
    //     0x7e61c8: add             x1, PP, #0x12, lsl #12  ; [pp+0x127a8] Obj!MaterialColor@a25a61
    //     0x7e61cc: ldr             x1, [x1, #0x7a8]
    // 0x7e61d0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e61d0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e61d4: ldr             x4, [x4, #0x198]
    // 0x7e61d8: r0 = withValues()
    //     0x7e61d8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e61dc: stur            x0, [fp, #-0x20]
    // 0x7e61e0: r0 = Radius()
    //     0x7e61e0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e61e4: d0 = 12.000000
    //     0x7e61e4: fmov            d0, #12.00000000
    // 0x7e61e8: stur            x0, [fp, #-0x30]
    // 0x7e61ec: StoreField: r0->field_7 = d0
    //     0x7e61ec: stur            d0, [x0, #7]
    // 0x7e61f0: StoreField: r0->field_f = d0
    //     0x7e61f0: stur            d0, [x0, #0xf]
    // 0x7e61f4: r0 = BorderRadius()
    //     0x7e61f4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e61f8: mov             x1, x0
    // 0x7e61fc: ldur            x0, [fp, #-0x30]
    // 0x7e6200: stur            x1, [fp, #-0x40]
    // 0x7e6204: StoreField: r1->field_7 = r0
    //     0x7e6204: stur            w0, [x1, #7]
    // 0x7e6208: StoreField: r1->field_b = r0
    //     0x7e6208: stur            w0, [x1, #0xb]
    // 0x7e620c: StoreField: r1->field_f = r0
    //     0x7e620c: stur            w0, [x1, #0xf]
    // 0x7e6210: StoreField: r1->field_13 = r0
    //     0x7e6210: stur            w0, [x1, #0x13]
    // 0x7e6214: r0 = BoxDecoration()
    //     0x7e6214: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e6218: mov             x3, x0
    // 0x7e621c: ldur            x0, [fp, #-0x20]
    // 0x7e6220: stur            x3, [fp, #-0x30]
    // 0x7e6224: StoreField: r3->field_7 = r0
    //     0x7e6224: stur            w0, [x3, #7]
    // 0x7e6228: ldur            x0, [fp, #-0x40]
    // 0x7e622c: StoreField: r3->field_13 = r0
    //     0x7e622c: stur            w0, [x3, #0x13]
    // 0x7e6230: r0 = Instance_BoxShape
    //     0x7e6230: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e6234: ldr             x0, [x0, #0x1c8]
    // 0x7e6238: StoreField: r3->field_23 = r0
    //     0x7e6238: stur            w0, [x3, #0x23]
    // 0x7e623c: r1 = Null
    //     0x7e623c: mov             x1, NULL
    // 0x7e6240: r2 = 4
    //     0x7e6240: mov             x2, #4
    // 0x7e6244: r0 = AllocateArray()
    //     0x7e6244: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e6248: r16 = "Kap. "
    //     0x7e6248: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0c0] "Kap. "
    //     0x7e624c: ldr             x16, [x16, #0xc0]
    // 0x7e6250: StoreField: r0->field_f = r16
    //     0x7e6250: stur            w16, [x0, #0xf]
    // 0x7e6254: ldur            x1, [fp, #-0x10]
    // 0x7e6258: StoreField: r0->field_13 = r1
    //     0x7e6258: stur            w1, [x0, #0x13]
    // 0x7e625c: str             x0, [SP]
    // 0x7e6260: r0 = _interpolate()
    //     0x7e6260: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e6264: stur            x0, [fp, #-0x10]
    // 0x7e6268: r0 = Text()
    //     0x7e6268: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e626c: mov             x1, x0
    // 0x7e6270: ldur            x0, [fp, #-0x10]
    // 0x7e6274: stur            x1, [fp, #-0x20]
    // 0x7e6278: StoreField: r1->field_b = r0
    //     0x7e6278: stur            w0, [x1, #0xb]
    // 0x7e627c: r0 = Instance_TextStyle
    //     0x7e627c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13140] Obj!TextStyle@a17131
    //     0x7e6280: ldr             x0, [x0, #0x140]
    // 0x7e6284: StoreField: r1->field_13 = r0
    //     0x7e6284: stur            w0, [x1, #0x13]
    // 0x7e6288: r0 = Container()
    //     0x7e6288: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e628c: stur            x0, [fp, #-0x10]
    // 0x7e6290: r16 = Instance_EdgeInsets
    //     0x7e6290: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x7e6294: ldr             x16, [x16, #0xf70]
    // 0x7e6298: ldur            lr, [fp, #-0x30]
    // 0x7e629c: stp             lr, x16, [SP, #8]
    // 0x7e62a0: ldur            x16, [fp, #-0x20]
    // 0x7e62a4: str             x16, [SP]
    // 0x7e62a8: mov             x1, x0
    // 0x7e62ac: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e62ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e62b0: ldr             x4, [x4, #0x1e8]
    // 0x7e62b4: r0 = Container()
    //     0x7e62b4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e62b8: ldur            x0, [fp, #-0x38]
    // 0x7e62bc: LoadField: r1 = r0->field_b
    //     0x7e62bc: ldur            w1, [x0, #0xb]
    // 0x7e62c0: LoadField: r2 = r0->field_f
    //     0x7e62c0: ldur            w2, [x0, #0xf]
    // 0x7e62c4: DecompressPointer r2
    //     0x7e62c4: add             x2, x2, HEAP, lsl #32
    // 0x7e62c8: LoadField: r3 = r2->field_b
    //     0x7e62c8: ldur            w3, [x2, #0xb]
    // 0x7e62cc: r2 = LoadInt32Instr(r1)
    //     0x7e62cc: sbfx            x2, x1, #1, #0x1f
    // 0x7e62d0: stur            x2, [fp, #-0x50]
    // 0x7e62d4: r1 = LoadInt32Instr(r3)
    //     0x7e62d4: sbfx            x1, x3, #1, #0x1f
    // 0x7e62d8: cmp             x2, x1
    // 0x7e62dc: b.ne            #0x7e62e8
    // 0x7e62e0: mov             x1, x0
    // 0x7e62e4: r0 = _growToNextCapacity()
    //     0x7e62e4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e62e8: ldur            x2, [fp, #-0x38]
    // 0x7e62ec: ldur            x3, [fp, #-0x50]
    // 0x7e62f0: add             x0, x3, #1
    // 0x7e62f4: lsl             x1, x0, #1
    // 0x7e62f8: StoreField: r2->field_b = r1
    //     0x7e62f8: stur            w1, [x2, #0xb]
    // 0x7e62fc: LoadField: r1 = r2->field_f
    //     0x7e62fc: ldur            w1, [x2, #0xf]
    // 0x7e6300: DecompressPointer r1
    //     0x7e6300: add             x1, x1, HEAP, lsl #32
    // 0x7e6304: ldur            x0, [fp, #-0x10]
    // 0x7e6308: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e6308: add             x25, x1, x3, lsl #2
    //     0x7e630c: add             x25, x25, #0xf
    //     0x7e6310: str             w0, [x25]
    //     0x7e6314: tbz             w0, #0, #0x7e6330
    //     0x7e6318: ldurb           w16, [x1, #-1]
    //     0x7e631c: ldurb           w17, [x0, #-1]
    //     0x7e6320: and             x16, x17, x16, lsr #2
    //     0x7e6324: tst             x16, HEAP, lsr #32
    //     0x7e6328: b.eq            #0x7e6330
    //     0x7e632c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e6330: ldur            x0, [fp, #-8]
    // 0x7e6334: r0 = Row()
    //     0x7e6334: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e6338: mov             x3, x0
    // 0x7e633c: r0 = Instance_Axis
    //     0x7e633c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e6340: stur            x3, [fp, #-0x10]
    // 0x7e6344: StoreField: r3->field_f = r0
    //     0x7e6344: stur            w0, [x3, #0xf]
    // 0x7e6348: r4 = Instance_MainAxisAlignment
    //     0x7e6348: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e634c: ldr             x4, [x4, #0x230]
    // 0x7e6350: StoreField: r3->field_13 = r4
    //     0x7e6350: stur            w4, [x3, #0x13]
    // 0x7e6354: r5 = Instance_MainAxisSize
    //     0x7e6354: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e6358: ldr             x5, [x5, #0x330]
    // 0x7e635c: ArrayStore: r3[0] = r5  ; List_4
    //     0x7e635c: stur            w5, [x3, #0x17]
    // 0x7e6360: r1 = Instance_CrossAxisAlignment
    //     0x7e6360: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e6364: ldr             x1, [x1, #0x338]
    // 0x7e6368: StoreField: r3->field_1b = r1
    //     0x7e6368: stur            w1, [x3, #0x1b]
    // 0x7e636c: r6 = Instance_VerticalDirection
    //     0x7e636c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e6370: ldr             x6, [x6, #0x340]
    // 0x7e6374: StoreField: r3->field_23 = r6
    //     0x7e6374: stur            w6, [x3, #0x23]
    // 0x7e6378: r7 = Instance_Clip
    //     0x7e6378: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e637c: ldr             x7, [x7, #0x348]
    // 0x7e6380: StoreField: r3->field_2b = r7
    //     0x7e6380: stur            w7, [x3, #0x2b]
    // 0x7e6384: StoreField: r3->field_2f = rZR
    //     0x7e6384: stur            xzr, [x3, #0x2f]
    // 0x7e6388: ldur            x1, [fp, #-0x38]
    // 0x7e638c: StoreField: r3->field_b = r1
    //     0x7e638c: stur            w1, [x3, #0xb]
    // 0x7e6390: r1 = Null
    //     0x7e6390: mov             x1, NULL
    // 0x7e6394: r2 = 4
    //     0x7e6394: mov             x2, #4
    // 0x7e6398: r0 = AllocateArray()
    //     0x7e6398: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e639c: mov             x2, x0
    // 0x7e63a0: ldur            x0, [fp, #-0x10]
    // 0x7e63a4: stur            x2, [fp, #-0x20]
    // 0x7e63a8: StoreField: r2->field_f = r0
    //     0x7e63a8: stur            w0, [x2, #0xf]
    // 0x7e63ac: r16 = Instance_SizedBox
    //     0x7e63ac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7e63b0: ldr             x16, [x16, #0x220]
    // 0x7e63b4: StoreField: r2->field_13 = r16
    //     0x7e63b4: stur            w16, [x2, #0x13]
    // 0x7e63b8: r1 = <Widget>
    //     0x7e63b8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e63bc: r0 = AllocateGrowableArray()
    //     0x7e63bc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e63c0: mov             x2, x0
    // 0x7e63c4: ldur            x0, [fp, #-0x20]
    // 0x7e63c8: stur            x2, [fp, #-0x30]
    // 0x7e63cc: StoreField: r2->field_f = r0
    //     0x7e63cc: stur            w0, [x2, #0xf]
    // 0x7e63d0: r0 = 4
    //     0x7e63d0: mov             x0, #4
    // 0x7e63d4: StoreField: r2->field_b = r0
    //     0x7e63d4: stur            w0, [x2, #0xb]
    // 0x7e63d8: ldur            x0, [fp, #-8]
    // 0x7e63dc: LoadField: r3 = r0->field_f
    //     0x7e63dc: ldur            w3, [x0, #0xf]
    // 0x7e63e0: DecompressPointer r3
    //     0x7e63e0: add             x3, x3, HEAP, lsl #32
    // 0x7e63e4: stur            x3, [fp, #-0x10]
    // 0x7e63e8: r0 = LoadClassIdInstr(r3)
    //     0x7e63e8: ldur            x0, [x3, #-1]
    //     0x7e63ec: ubfx            x0, x0, #0xc, #0x14
    // 0x7e63f0: mov             x1, x3
    // 0x7e63f4: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7e63f4: mov             x17, #0xcda7
    //     0x7e63f8: add             lr, x0, x17
    //     0x7e63fc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e6400: blr             lr
    // 0x7e6404: tbnz            w0, #4, #0x7e64e0
    // 0x7e6408: ldur            x0, [fp, #-0x30]
    // 0x7e640c: r1 = _ConstMap len:12
    //     0x7e640c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e6410: r2 = 1200
    //     0x7e6410: mov             x2, #0x4b0
    // 0x7e6414: r0 = []()
    //     0x7e6414: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e6418: stur            x0, [fp, #-8]
    // 0x7e641c: cmp             w0, NULL
    // 0x7e6420: b.eq            #0x7e6714
    // 0x7e6424: r0 = TextStyle()
    //     0x7e6424: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e6428: mov             x1, x0
    // 0x7e642c: r0 = true
    //     0x7e642c: add             x0, NULL, #0x20  ; true
    // 0x7e6430: stur            x1, [fp, #-0x20]
    // 0x7e6434: StoreField: r1->field_7 = r0
    //     0x7e6434: stur            w0, [x1, #7]
    // 0x7e6438: ldur            x0, [fp, #-8]
    // 0x7e643c: StoreField: r1->field_b = r0
    //     0x7e643c: stur            w0, [x1, #0xb]
    // 0x7e6440: r0 = Text()
    //     0x7e6440: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e6444: mov             x2, x0
    // 0x7e6448: r0 = "Bu otele ait oda eklenmedi."
    //     0x7e6448: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c0c8] "Bu otele ait oda eklenmedi."
    //     0x7e644c: ldr             x0, [x0, #0xc8]
    // 0x7e6450: stur            x2, [fp, #-8]
    // 0x7e6454: StoreField: r2->field_b = r0
    //     0x7e6454: stur            w0, [x2, #0xb]
    // 0x7e6458: ldur            x0, [fp, #-0x20]
    // 0x7e645c: StoreField: r2->field_13 = r0
    //     0x7e645c: stur            w0, [x2, #0x13]
    // 0x7e6460: ldur            x0, [fp, #-0x30]
    // 0x7e6464: LoadField: r1 = r0->field_b
    //     0x7e6464: ldur            w1, [x0, #0xb]
    // 0x7e6468: LoadField: r3 = r0->field_f
    //     0x7e6468: ldur            w3, [x0, #0xf]
    // 0x7e646c: DecompressPointer r3
    //     0x7e646c: add             x3, x3, HEAP, lsl #32
    // 0x7e6470: LoadField: r4 = r3->field_b
    //     0x7e6470: ldur            w4, [x3, #0xb]
    // 0x7e6474: r3 = LoadInt32Instr(r1)
    //     0x7e6474: sbfx            x3, x1, #1, #0x1f
    // 0x7e6478: stur            x3, [fp, #-0x50]
    // 0x7e647c: r1 = LoadInt32Instr(r4)
    //     0x7e647c: sbfx            x1, x4, #1, #0x1f
    // 0x7e6480: cmp             x3, x1
    // 0x7e6484: b.ne            #0x7e6490
    // 0x7e6488: mov             x1, x0
    // 0x7e648c: r0 = _growToNextCapacity()
    //     0x7e648c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e6490: ldur            x3, [fp, #-0x30]
    // 0x7e6494: ldur            x2, [fp, #-0x50]
    // 0x7e6498: add             x0, x2, #1
    // 0x7e649c: lsl             x1, x0, #1
    // 0x7e64a0: StoreField: r3->field_b = r1
    //     0x7e64a0: stur            w1, [x3, #0xb]
    // 0x7e64a4: LoadField: r1 = r3->field_f
    //     0x7e64a4: ldur            w1, [x3, #0xf]
    // 0x7e64a8: DecompressPointer r1
    //     0x7e64a8: add             x1, x1, HEAP, lsl #32
    // 0x7e64ac: ldur            x0, [fp, #-8]
    // 0x7e64b0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7e64b0: add             x25, x1, x2, lsl #2
    //     0x7e64b4: add             x25, x25, #0xf
    //     0x7e64b8: str             w0, [x25]
    //     0x7e64bc: tbz             w0, #0, #0x7e64d8
    //     0x7e64c0: ldurb           w16, [x1, #-1]
    //     0x7e64c4: ldurb           w17, [x0, #-1]
    //     0x7e64c8: and             x16, x17, x16, lsr #2
    //     0x7e64cc: tst             x16, HEAP, lsr #32
    //     0x7e64d0: b.eq            #0x7e64d8
    //     0x7e64d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e64d8: mov             x2, x3
    // 0x7e64dc: b               #0x7e6630
    // 0x7e64e0: ldur            x0, [fp, #-0x10]
    // 0x7e64e4: ldur            x3, [fp, #-0x30]
    // 0x7e64e8: r1 = Function '<anonymous closure>':.
    //     0x7e64e8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c0d0] AnonymousClosure: (0x7e6828), in [package:umrem_demo/features/admin/widgets/hotel/hotel_card.dart] HotelCard::build (0x7e5e60)
    //     0x7e64ec: ldr             x1, [x1, #0xd0]
    // 0x7e64f0: r2 = Null
    //     0x7e64f0: mov             x2, NULL
    // 0x7e64f4: r0 = AllocateClosure()
    //     0x7e64f4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e64f8: mov             x1, x0
    // 0x7e64fc: ldur            x0, [fp, #-0x10]
    // 0x7e6500: r2 = LoadClassIdInstr(r0)
    //     0x7e6500: ldur            x2, [x0, #-1]
    //     0x7e6504: ubfx            x2, x2, #0xc, #0x14
    // 0x7e6508: r16 = <Container>
    //     0x7e6508: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0d8] TypeArguments: <Container>
    //     0x7e650c: ldr             x16, [x16, #0xd8]
    // 0x7e6510: stp             x0, x16, [SP, #8]
    // 0x7e6514: str             x1, [SP]
    // 0x7e6518: mov             x0, x2
    // 0x7e651c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e651c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e6520: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x7e6520: mov             x17, #0xd1d6
    //     0x7e6524: add             lr, x0, x17
    //     0x7e6528: ldr             lr, [x21, lr, lsl #3]
    //     0x7e652c: blr             lr
    // 0x7e6530: r1 = LoadClassIdInstr(r0)
    //     0x7e6530: ldur            x1, [x0, #-1]
    //     0x7e6534: ubfx            x1, x1, #0xc, #0x14
    // 0x7e6538: mov             x16, x0
    // 0x7e653c: mov             x0, x1
    // 0x7e6540: mov             x1, x16
    // 0x7e6544: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e6544: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e6548: r0 = GDT[cid_x0 + 0xd299]()
    //     0x7e6548: mov             x17, #0xd299
    //     0x7e654c: add             lr, x0, x17
    //     0x7e6550: ldr             lr, [x21, lr, lsl #3]
    //     0x7e6554: blr             lr
    // 0x7e6558: stur            x0, [fp, #-8]
    // 0x7e655c: r0 = Wrap()
    //     0x7e655c: bl              #0x69a5b8  ; AllocateWrapStub -> Wrap (size=0x3c)
    // 0x7e6560: mov             x2, x0
    // 0x7e6564: r0 = Instance_Axis
    //     0x7e6564: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e6568: stur            x2, [fp, #-0x10]
    // 0x7e656c: StoreField: r2->field_f = r0
    //     0x7e656c: stur            w0, [x2, #0xf]
    // 0x7e6570: r0 = Instance_WrapAlignment
    //     0x7e6570: add             x0, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x7e6574: ldr             x0, [x0, #0x7d8]
    // 0x7e6578: StoreField: r2->field_13 = r0
    //     0x7e6578: stur            w0, [x2, #0x13]
    // 0x7e657c: d0 = 8.000000
    //     0x7e657c: fmov            d0, #8.00000000
    // 0x7e6580: ArrayStore: r2[0] = d0  ; List_8
    //     0x7e6580: stur            d0, [x2, #0x17]
    // 0x7e6584: StoreField: r2->field_1f = r0
    //     0x7e6584: stur            w0, [x2, #0x1f]
    // 0x7e6588: StoreField: r2->field_23 = d0
    //     0x7e6588: stur            d0, [x2, #0x23]
    // 0x7e658c: r0 = Instance_WrapCrossAlignment
    //     0x7e658c: add             x0, PP, #0x12, lsl #12  ; [pp+0x127e0] Obj!WrapCrossAlignment@a2a1b1
    //     0x7e6590: ldr             x0, [x0, #0x7e0]
    // 0x7e6594: StoreField: r2->field_2b = r0
    //     0x7e6594: stur            w0, [x2, #0x2b]
    // 0x7e6598: r0 = Instance_VerticalDirection
    //     0x7e6598: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e659c: ldr             x0, [x0, #0x340]
    // 0x7e65a0: StoreField: r2->field_33 = r0
    //     0x7e65a0: stur            w0, [x2, #0x33]
    // 0x7e65a4: r3 = Instance_Clip
    //     0x7e65a4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e65a8: ldr             x3, [x3, #0x348]
    // 0x7e65ac: StoreField: r2->field_37 = r3
    //     0x7e65ac: stur            w3, [x2, #0x37]
    // 0x7e65b0: ldur            x1, [fp, #-8]
    // 0x7e65b4: StoreField: r2->field_b = r1
    //     0x7e65b4: stur            w1, [x2, #0xb]
    // 0x7e65b8: ldur            x4, [fp, #-0x30]
    // 0x7e65bc: LoadField: r1 = r4->field_b
    //     0x7e65bc: ldur            w1, [x4, #0xb]
    // 0x7e65c0: LoadField: r5 = r4->field_f
    //     0x7e65c0: ldur            w5, [x4, #0xf]
    // 0x7e65c4: DecompressPointer r5
    //     0x7e65c4: add             x5, x5, HEAP, lsl #32
    // 0x7e65c8: LoadField: r6 = r5->field_b
    //     0x7e65c8: ldur            w6, [x5, #0xb]
    // 0x7e65cc: r5 = LoadInt32Instr(r1)
    //     0x7e65cc: sbfx            x5, x1, #1, #0x1f
    // 0x7e65d0: stur            x5, [fp, #-0x50]
    // 0x7e65d4: r1 = LoadInt32Instr(r6)
    //     0x7e65d4: sbfx            x1, x6, #1, #0x1f
    // 0x7e65d8: cmp             x5, x1
    // 0x7e65dc: b.ne            #0x7e65e8
    // 0x7e65e0: mov             x1, x4
    // 0x7e65e4: r0 = _growToNextCapacity()
    //     0x7e65e4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e65e8: ldur            x2, [fp, #-0x30]
    // 0x7e65ec: ldur            x3, [fp, #-0x50]
    // 0x7e65f0: add             x0, x3, #1
    // 0x7e65f4: lsl             x1, x0, #1
    // 0x7e65f8: StoreField: r2->field_b = r1
    //     0x7e65f8: stur            w1, [x2, #0xb]
    // 0x7e65fc: LoadField: r1 = r2->field_f
    //     0x7e65fc: ldur            w1, [x2, #0xf]
    // 0x7e6600: DecompressPointer r1
    //     0x7e6600: add             x1, x1, HEAP, lsl #32
    // 0x7e6604: ldur            x0, [fp, #-0x10]
    // 0x7e6608: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e6608: add             x25, x1, x3, lsl #2
    //     0x7e660c: add             x25, x25, #0xf
    //     0x7e6610: str             w0, [x25]
    //     0x7e6614: tbz             w0, #0, #0x7e6630
    //     0x7e6618: ldurb           w16, [x1, #-1]
    //     0x7e661c: ldurb           w17, [x0, #-1]
    //     0x7e6620: and             x16, x17, x16, lsr #2
    //     0x7e6624: tst             x16, HEAP, lsr #32
    //     0x7e6628: b.eq            #0x7e6630
    //     0x7e662c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e6630: r0 = Column()
    //     0x7e6630: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e6634: mov             x1, x0
    // 0x7e6638: r0 = Instance_Axis
    //     0x7e6638: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e663c: stur            x1, [fp, #-8]
    // 0x7e6640: StoreField: r1->field_f = r0
    //     0x7e6640: stur            w0, [x1, #0xf]
    // 0x7e6644: r0 = Instance_MainAxisAlignment
    //     0x7e6644: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e6648: ldr             x0, [x0, #0x230]
    // 0x7e664c: StoreField: r1->field_13 = r0
    //     0x7e664c: stur            w0, [x1, #0x13]
    // 0x7e6650: r0 = Instance_MainAxisSize
    //     0x7e6650: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e6654: ldr             x0, [x0, #0x330]
    // 0x7e6658: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e6658: stur            w0, [x1, #0x17]
    // 0x7e665c: r0 = Instance_CrossAxisAlignment
    //     0x7e665c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e6660: ldr             x0, [x0, #0x238]
    // 0x7e6664: StoreField: r1->field_1b = r0
    //     0x7e6664: stur            w0, [x1, #0x1b]
    // 0x7e6668: r0 = Instance_VerticalDirection
    //     0x7e6668: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e666c: ldr             x0, [x0, #0x340]
    // 0x7e6670: StoreField: r1->field_23 = r0
    //     0x7e6670: stur            w0, [x1, #0x23]
    // 0x7e6674: r0 = Instance_Clip
    //     0x7e6674: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e6678: ldr             x0, [x0, #0x348]
    // 0x7e667c: StoreField: r1->field_2b = r0
    //     0x7e667c: stur            w0, [x1, #0x2b]
    // 0x7e6680: StoreField: r1->field_2f = rZR
    //     0x7e6680: stur            xzr, [x1, #0x2f]
    // 0x7e6684: ldur            x0, [fp, #-0x30]
    // 0x7e6688: StoreField: r1->field_b = r0
    //     0x7e6688: stur            w0, [x1, #0xb]
    // 0x7e668c: r0 = Container()
    //     0x7e668c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e6690: stur            x0, [fp, #-0x10]
    // 0x7e6694: r16 = Instance_EdgeInsets
    //     0x7e6694: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7e6698: ldr             x16, [x16, #0xf18]
    // 0x7e669c: r30 = Instance_EdgeInsets
    //     0x7e669c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e66a0: ldr             lr, [lr, #0x240]
    // 0x7e66a4: stp             lr, x16, [SP, #0x10]
    // 0x7e66a8: ldur            x16, [fp, #-0x28]
    // 0x7e66ac: ldur            lr, [fp, #-8]
    // 0x7e66b0: stp             lr, x16, [SP]
    // 0x7e66b4: mov             x1, x0
    // 0x7e66b8: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x7e66b8: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x7e66bc: ldr             x4, [x4, #0x628]
    // 0x7e66c0: r0 = Container()
    //     0x7e66c0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e66c4: r0 = GestureDetector()
    //     0x7e66c4: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x7e66c8: ldur            x2, [fp, #-0x18]
    // 0x7e66cc: r1 = Function '<anonymous closure>':.
    //     0x7e66cc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c0e0] AnonymousClosure: (0x7e6718), in [package:umrem_demo/features/admin/widgets/hotel/hotel_card.dart] HotelCard::build (0x7e5e60)
    //     0x7e66d0: ldr             x1, [x1, #0xe0]
    // 0x7e66d4: stur            x0, [fp, #-8]
    // 0x7e66d8: r0 = AllocateClosure()
    //     0x7e66d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e66dc: ldur            x16, [fp, #-0x10]
    // 0x7e66e0: stp             x16, x0, [SP]
    // 0x7e66e4: ldur            x1, [fp, #-8]
    // 0x7e66e8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7e66e8: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7e66ec: ldr             x4, [x4, #0xd50]
    // 0x7e66f0: r0 = GestureDetector()
    //     0x7e66f0: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7e66f4: ldur            x0, [fp, #-8]
    // 0x7e66f8: LeaveFrame
    //     0x7e66f8: mov             SP, fp
    //     0x7e66fc: ldp             fp, lr, [SP], #0x10
    // 0x7e6700: ret
    //     0x7e6700: ret             
    // 0x7e6704: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e6704: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e6708: b               #0x7e5e80
    // 0x7e670c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e670c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e6710: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e6710: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e6714: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e6714: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e6718, size: 0xac
    // 0x7e6718: EnterFrame
    //     0x7e6718: stp             fp, lr, [SP, #-0x10]!
    //     0x7e671c: mov             fp, SP
    // 0x7e6720: AllocStack(0x30)
    //     0x7e6720: sub             SP, SP, #0x30
    // 0x7e6724: SetupParameters([dynamic _ /* r0 */])
    //     0x7e6724: ldr             x0, [fp, #0x10]
    //     0x7e6728: ldur            w2, [x0, #0x17]
    //     0x7e672c: add             x2, x2, HEAP, lsl #32
    // 0x7e6730: CheckStackOverflow
    //     0x7e6730: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e6734: cmp             SP, x16
    //     0x7e6738: b.ls            #0x7e67bc
    // 0x7e673c: LoadField: r0 = r2->field_13
    //     0x7e673c: ldur            w0, [x2, #0x13]
    // 0x7e6740: DecompressPointer r0
    //     0x7e6740: add             x0, x0, HEAP, lsl #32
    // 0x7e6744: stur            x0, [fp, #-8]
    // 0x7e6748: r1 = Function '<anonymous closure>':.
    //     0x7e6748: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c0e8] AnonymousClosure: (0x7e67c4), in [package:umrem_demo/features/admin/widgets/hotel/hotel_card.dart] HotelCard::build (0x7e5e60)
    //     0x7e674c: ldr             x1, [x1, #0xe8]
    // 0x7e6750: r0 = AllocateClosure()
    //     0x7e6750: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e6754: r1 = Null
    //     0x7e6754: mov             x1, NULL
    // 0x7e6758: stur            x0, [fp, #-0x10]
    // 0x7e675c: r0 = MaterialPageRoute()
    //     0x7e675c: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x7e6760: mov             x4, x0
    // 0x7e6764: ldur            x0, [fp, #-0x10]
    // 0x7e6768: stur            x4, [fp, #-0x18]
    // 0x7e676c: StoreField: r4->field_a3 = r0
    //     0x7e676c: stur            w0, [x4, #0xa3]
    // 0x7e6770: r0 = true
    //     0x7e6770: add             x0, NULL, #0x20  ; true
    // 0x7e6774: StoreField: r4->field_a7 = r0
    //     0x7e6774: stur            w0, [x4, #0xa7]
    // 0x7e6778: r1 = false
    //     0x7e6778: add             x1, NULL, #0x30  ; false
    // 0x7e677c: StoreField: r4->field_97 = r1
    //     0x7e677c: stur            w1, [x4, #0x97]
    // 0x7e6780: StoreField: r4->field_9b = r0
    //     0x7e6780: stur            w0, [x4, #0x9b]
    // 0x7e6784: StoreField: r4->field_9f = r1
    //     0x7e6784: stur            w1, [x4, #0x9f]
    // 0x7e6788: mov             x1, x4
    // 0x7e678c: r2 = Null
    //     0x7e678c: mov             x2, NULL
    // 0x7e6790: r3 = Null
    //     0x7e6790: mov             x3, NULL
    // 0x7e6794: r0 = ModalRoute()
    //     0x7e6794: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7e6798: ldur            x16, [fp, #-8]
    // 0x7e679c: stp             x16, NULL, [SP, #8]
    // 0x7e67a0: ldur            x16, [fp, #-0x18]
    // 0x7e67a4: str             x16, [SP]
    // 0x7e67a8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e67a8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e67ac: r0 = push()
    //     0x7e67ac: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7e67b0: LeaveFrame
    //     0x7e67b0: mov             SP, fp
    //     0x7e67b4: ldp             fp, lr, [SP], #0x10
    // 0x7e67b8: ret
    //     0x7e67b8: ret             
    // 0x7e67bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e67bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e67c0: b               #0x7e673c
  }
  [closure] RoomsManagementScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e67c4, size: 0x58
    // 0x7e67c4: EnterFrame
    //     0x7e67c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e67c8: mov             fp, SP
    // 0x7e67cc: AllocStack(0x10)
    //     0x7e67cc: sub             SP, SP, #0x10
    // 0x7e67d0: SetupParameters([dynamic _ /* r0 */])
    //     0x7e67d0: ldr             x0, [fp, #0x18]
    //     0x7e67d4: ldur            w1, [x0, #0x17]
    //     0x7e67d8: add             x1, x1, HEAP, lsl #32
    // 0x7e67dc: LoadField: r0 = r1->field_f
    //     0x7e67dc: ldur            w0, [x1, #0xf]
    // 0x7e67e0: DecompressPointer r0
    //     0x7e67e0: add             x0, x0, HEAP, lsl #32
    // 0x7e67e4: LoadField: r1 = r0->field_13
    //     0x7e67e4: ldur            w1, [x0, #0x13]
    // 0x7e67e8: DecompressPointer r1
    //     0x7e67e8: add             x1, x1, HEAP, lsl #32
    // 0x7e67ec: stur            x1, [fp, #-0x10]
    // 0x7e67f0: LoadField: r2 = r0->field_b
    //     0x7e67f0: ldur            w2, [x0, #0xb]
    // 0x7e67f4: DecompressPointer r2
    //     0x7e67f4: add             x2, x2, HEAP, lsl #32
    // 0x7e67f8: stur            x2, [fp, #-8]
    // 0x7e67fc: r0 = RoomsManagementScreen()
    //     0x7e67fc: bl              #0x7e681c  ; AllocateRoomsManagementScreenStub -> RoomsManagementScreen (size=0x14)
    // 0x7e6800: ldur            x1, [fp, #-0x10]
    // 0x7e6804: StoreField: r0->field_b = r1
    //     0x7e6804: stur            w1, [x0, #0xb]
    // 0x7e6808: ldur            x1, [fp, #-8]
    // 0x7e680c: StoreField: r0->field_f = r1
    //     0x7e680c: stur            w1, [x0, #0xf]
    // 0x7e6810: LeaveFrame
    //     0x7e6810: mov             SP, fp
    //     0x7e6814: ldp             fp, lr, [SP], #0x10
    // 0x7e6818: ret
    //     0x7e6818: ret             
  }
  [closure] Container <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x7e6828, size: 0x278
    // 0x7e6828: EnterFrame
    //     0x7e6828: stp             fp, lr, [SP, #-0x10]!
    //     0x7e682c: mov             fp, SP
    // 0x7e6830: AllocStack(0x30)
    //     0x7e6830: sub             SP, SP, #0x30
    // 0x7e6834: CheckStackOverflow
    //     0x7e6834: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e6838: cmp             SP, x16
    //     0x7e683c: b.ls            #0x7e6a94
    // 0x7e6840: r1 = _ConstMap len:12
    //     0x7e6840: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e6844: r2 = 200
    //     0x7e6844: mov             x2, #0xc8
    // 0x7e6848: r0 = []()
    //     0x7e6848: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e684c: stur            x0, [fp, #-8]
    // 0x7e6850: cmp             w0, NULL
    // 0x7e6854: b.eq            #0x7e6a9c
    // 0x7e6858: r0 = Radius()
    //     0x7e6858: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e685c: d0 = 10.000000
    //     0x7e685c: fmov            d0, #10.00000000
    // 0x7e6860: stur            x0, [fp, #-0x10]
    // 0x7e6864: StoreField: r0->field_7 = d0
    //     0x7e6864: stur            d0, [x0, #7]
    // 0x7e6868: StoreField: r0->field_f = d0
    //     0x7e6868: stur            d0, [x0, #0xf]
    // 0x7e686c: r0 = BorderRadius()
    //     0x7e686c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e6870: mov             x1, x0
    // 0x7e6874: ldur            x0, [fp, #-0x10]
    // 0x7e6878: stur            x1, [fp, #-0x18]
    // 0x7e687c: StoreField: r1->field_7 = r0
    //     0x7e687c: stur            w0, [x1, #7]
    // 0x7e6880: StoreField: r1->field_b = r0
    //     0x7e6880: stur            w0, [x1, #0xb]
    // 0x7e6884: StoreField: r1->field_f = r0
    //     0x7e6884: stur            w0, [x1, #0xf]
    // 0x7e6888: StoreField: r1->field_13 = r0
    //     0x7e6888: stur            w0, [x1, #0x13]
    // 0x7e688c: r0 = BoxDecoration()
    //     0x7e688c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e6890: mov             x3, x0
    // 0x7e6894: ldur            x0, [fp, #-8]
    // 0x7e6898: stur            x3, [fp, #-0x10]
    // 0x7e689c: StoreField: r3->field_7 = r0
    //     0x7e689c: stur            w0, [x3, #7]
    // 0x7e68a0: ldur            x0, [fp, #-0x18]
    // 0x7e68a4: StoreField: r3->field_13 = r0
    //     0x7e68a4: stur            w0, [x3, #0x13]
    // 0x7e68a8: r0 = Instance_BoxShape
    //     0x7e68a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e68ac: ldr             x0, [x0, #0x1c8]
    // 0x7e68b0: StoreField: r3->field_23 = r0
    //     0x7e68b0: stur            w0, [x3, #0x23]
    // 0x7e68b4: ldr             x0, [fp, #0x10]
    // 0x7e68b8: LoadField: r4 = r0->field_f
    //     0x7e68b8: ldur            w4, [x0, #0xf]
    // 0x7e68bc: DecompressPointer r4
    //     0x7e68bc: add             x4, x4, HEAP, lsl #32
    // 0x7e68c0: stur            x4, [fp, #-8]
    // 0x7e68c4: r1 = Null
    //     0x7e68c4: mov             x1, NULL
    // 0x7e68c8: r2 = 10
    //     0x7e68c8: mov             x2, #0xa
    // 0x7e68cc: r0 = AllocateArray()
    //     0x7e68cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e68d0: mov             x3, x0
    // 0x7e68d4: ldur            x0, [fp, #-8]
    // 0x7e68d8: stur            x3, [fp, #-0x18]
    // 0x7e68dc: StoreField: r3->field_f = r0
    //     0x7e68dc: stur            w0, [x3, #0xf]
    // 0x7e68e0: r16 = " • "
    //     0x7e68e0: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7e68e4: ldr             x16, [x16, #0x9d8]
    // 0x7e68e8: StoreField: r3->field_13 = r16
    //     0x7e68e8: stur            w16, [x3, #0x13]
    // 0x7e68ec: ldr             x2, [fp, #0x10]
    // 0x7e68f0: LoadField: r4 = r2->field_13
    //     0x7e68f0: ldur            x4, [x2, #0x13]
    // 0x7e68f4: r0 = BoxInt64Instr(r4)
    //     0x7e68f4: sbfiz           x0, x4, #1, #0x1f
    //     0x7e68f8: cmp             x4, x0, asr #1
    //     0x7e68fc: b.eq            #0x7e6908
    //     0x7e6900: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e6904: stur            x4, [x0, #7]
    // 0x7e6908: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e6908: stur            w0, [x3, #0x17]
    // 0x7e690c: r16 = " kişilik"
    //     0x7e690c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0f0] " kişilik"
    //     0x7e6910: ldr             x16, [x16, #0xf0]
    // 0x7e6914: StoreField: r3->field_1b = r16
    //     0x7e6914: stur            w16, [x3, #0x1b]
    // 0x7e6918: LoadField: r0 = r2->field_1b
    //     0x7e6918: ldur            w0, [x2, #0x1b]
    // 0x7e691c: DecompressPointer r0
    //     0x7e691c: add             x0, x0, HEAP, lsl #32
    // 0x7e6920: stur            x0, [fp, #-8]
    // 0x7e6924: cmp             w0, NULL
    // 0x7e6928: b.eq            #0x7e6958
    // 0x7e692c: r1 = Null
    //     0x7e692c: mov             x1, NULL
    // 0x7e6930: r2 = 4
    //     0x7e6930: mov             x2, #4
    // 0x7e6934: r0 = AllocateArray()
    //     0x7e6934: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e6938: r16 = " • "
    //     0x7e6938: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7e693c: ldr             x16, [x16, #0x9d8]
    // 0x7e6940: StoreField: r0->field_f = r16
    //     0x7e6940: stur            w16, [x0, #0xf]
    // 0x7e6944: ldur            x1, [fp, #-8]
    // 0x7e6948: StoreField: r0->field_13 = r1
    //     0x7e6948: stur            w1, [x0, #0x13]
    // 0x7e694c: str             x0, [SP]
    // 0x7e6950: r0 = _interpolate()
    //     0x7e6950: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e6954: b               #0x7e695c
    // 0x7e6958: r0 = ""
    //     0x7e6958: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7e695c: ldur            x1, [fp, #-0x18]
    // 0x7e6960: ArrayStore: r1[4] = r0  ; List_4
    //     0x7e6960: add             x25, x1, #0x1f
    //     0x7e6964: str             w0, [x25]
    //     0x7e6968: tbz             w0, #0, #0x7e6984
    //     0x7e696c: ldurb           w16, [x1, #-1]
    //     0x7e6970: ldurb           w17, [x0, #-1]
    //     0x7e6974: and             x16, x17, x16, lsr #2
    //     0x7e6978: tst             x16, HEAP, lsr #32
    //     0x7e697c: b.eq            #0x7e6984
    //     0x7e6980: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e6984: ldur            x16, [fp, #-0x18]
    // 0x7e6988: str             x16, [SP]
    // 0x7e698c: r0 = _interpolate()
    //     0x7e698c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e6990: stur            x0, [fp, #-8]
    // 0x7e6994: r0 = Text()
    //     0x7e6994: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e6998: mov             x3, x0
    // 0x7e699c: ldur            x0, [fp, #-8]
    // 0x7e69a0: stur            x3, [fp, #-0x18]
    // 0x7e69a4: StoreField: r3->field_b = r0
    //     0x7e69a4: stur            w0, [x3, #0xb]
    // 0x7e69a8: r1 = Null
    //     0x7e69a8: mov             x1, NULL
    // 0x7e69ac: r2 = 6
    //     0x7e69ac: mov             x2, #6
    // 0x7e69b0: r0 = AllocateArray()
    //     0x7e69b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e69b4: stur            x0, [fp, #-8]
    // 0x7e69b8: r16 = Instance_Icon
    //     0x7e69b8: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c0f8] Obj!Icon@a1f171
    //     0x7e69bc: ldr             x16, [x16, #0xf8]
    // 0x7e69c0: StoreField: r0->field_f = r16
    //     0x7e69c0: stur            w16, [x0, #0xf]
    // 0x7e69c4: r16 = Instance_SizedBox
    //     0x7e69c4: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c100] Obj!SizedBox@a1fbf1
    //     0x7e69c8: ldr             x16, [x16, #0x100]
    // 0x7e69cc: StoreField: r0->field_13 = r16
    //     0x7e69cc: stur            w16, [x0, #0x13]
    // 0x7e69d0: ldur            x1, [fp, #-0x18]
    // 0x7e69d4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e69d4: stur            w1, [x0, #0x17]
    // 0x7e69d8: r1 = <Widget>
    //     0x7e69d8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e69dc: r0 = AllocateGrowableArray()
    //     0x7e69dc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e69e0: mov             x1, x0
    // 0x7e69e4: ldur            x0, [fp, #-8]
    // 0x7e69e8: stur            x1, [fp, #-0x18]
    // 0x7e69ec: StoreField: r1->field_f = r0
    //     0x7e69ec: stur            w0, [x1, #0xf]
    // 0x7e69f0: r0 = 6
    //     0x7e69f0: mov             x0, #6
    // 0x7e69f4: StoreField: r1->field_b = r0
    //     0x7e69f4: stur            w0, [x1, #0xb]
    // 0x7e69f8: r0 = Row()
    //     0x7e69f8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e69fc: mov             x1, x0
    // 0x7e6a00: r0 = Instance_Axis
    //     0x7e6a00: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e6a04: stur            x1, [fp, #-8]
    // 0x7e6a08: StoreField: r1->field_f = r0
    //     0x7e6a08: stur            w0, [x1, #0xf]
    // 0x7e6a0c: r0 = Instance_MainAxisAlignment
    //     0x7e6a0c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e6a10: ldr             x0, [x0, #0x230]
    // 0x7e6a14: StoreField: r1->field_13 = r0
    //     0x7e6a14: stur            w0, [x1, #0x13]
    // 0x7e6a18: r0 = Instance_MainAxisSize
    //     0x7e6a18: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e6a1c: ldr             x0, [x0, #0xb60]
    // 0x7e6a20: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e6a20: stur            w0, [x1, #0x17]
    // 0x7e6a24: r0 = Instance_CrossAxisAlignment
    //     0x7e6a24: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e6a28: ldr             x0, [x0, #0x338]
    // 0x7e6a2c: StoreField: r1->field_1b = r0
    //     0x7e6a2c: stur            w0, [x1, #0x1b]
    // 0x7e6a30: r0 = Instance_VerticalDirection
    //     0x7e6a30: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e6a34: ldr             x0, [x0, #0x340]
    // 0x7e6a38: StoreField: r1->field_23 = r0
    //     0x7e6a38: stur            w0, [x1, #0x23]
    // 0x7e6a3c: r0 = Instance_Clip
    //     0x7e6a3c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e6a40: ldr             x0, [x0, #0x348]
    // 0x7e6a44: StoreField: r1->field_2b = r0
    //     0x7e6a44: stur            w0, [x1, #0x2b]
    // 0x7e6a48: StoreField: r1->field_2f = rZR
    //     0x7e6a48: stur            xzr, [x1, #0x2f]
    // 0x7e6a4c: ldur            x0, [fp, #-0x18]
    // 0x7e6a50: StoreField: r1->field_b = r0
    //     0x7e6a50: stur            w0, [x1, #0xb]
    // 0x7e6a54: r0 = Container()
    //     0x7e6a54: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e6a58: stur            x0, [fp, #-0x18]
    // 0x7e6a5c: r16 = Instance_EdgeInsets
    //     0x7e6a5c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c108] Obj!EdgeInsets@a0c9e1
    //     0x7e6a60: ldr             x16, [x16, #0x108]
    // 0x7e6a64: ldur            lr, [fp, #-0x10]
    // 0x7e6a68: stp             lr, x16, [SP, #8]
    // 0x7e6a6c: ldur            x16, [fp, #-8]
    // 0x7e6a70: str             x16, [SP]
    // 0x7e6a74: mov             x1, x0
    // 0x7e6a78: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e6a78: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e6a7c: ldr             x4, [x4, #0x1e8]
    // 0x7e6a80: r0 = Container()
    //     0x7e6a80: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e6a84: ldur            x0, [fp, #-0x18]
    // 0x7e6a88: LeaveFrame
    //     0x7e6a88: mov             SP, fp
    //     0x7e6a8c: ldp             fp, lr, [SP], #0x10
    // 0x7e6a90: ret
    //     0x7e6a90: ret             
    // 0x7e6a94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e6a94: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e6a98: b               #0x7e6840
    // 0x7e6a9c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e6a9c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

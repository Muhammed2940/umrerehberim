// lib: , url: package:umrem_demo/common/widgets/drawer_card.dart

// class id: 1049495, size: 0x8
class :: {
}

// class id: 2937, size: 0x20, field offset: 0xc
//   const constructor, 
class DrawerMenuCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7db350, size: 0x544
    // 0x7db350: EnterFrame
    //     0x7db350: stp             fp, lr, [SP, #-0x10]!
    //     0x7db354: mov             fp, SP
    // 0x7db358: AllocStack(0x58)
    //     0x7db358: sub             SP, SP, #0x58
    // 0x7db35c: SetupParameters(DrawerMenuCard this /* r1 => r1, fp-0x10 */)
    //     0x7db35c: stur            x1, [fp, #-0x10]
    // 0x7db360: CheckStackOverflow
    //     0x7db360: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7db364: cmp             SP, x16
    //     0x7db368: b.ls            #0x7db87c
    // 0x7db36c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7db36c: ldur            w0, [x1, #0x17]
    // 0x7db370: DecompressPointer r0
    //     0x7db370: add             x0, x0, HEAP, lsl #32
    // 0x7db374: stur            x0, [fp, #-8]
    // 0x7db378: r0 = Radius()
    //     0x7db378: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7db37c: d0 = 12.000000
    //     0x7db37c: fmov            d0, #12.00000000
    // 0x7db380: stur            x0, [fp, #-0x18]
    // 0x7db384: StoreField: r0->field_7 = d0
    //     0x7db384: stur            d0, [x0, #7]
    // 0x7db388: StoreField: r0->field_f = d0
    //     0x7db388: stur            d0, [x0, #0xf]
    // 0x7db38c: r0 = BorderRadius()
    //     0x7db38c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7db390: mov             x3, x0
    // 0x7db394: ldur            x0, [fp, #-0x18]
    // 0x7db398: stur            x3, [fp, #-0x20]
    // 0x7db39c: StoreField: r3->field_7 = r0
    //     0x7db39c: stur            w0, [x3, #7]
    // 0x7db3a0: StoreField: r3->field_b = r0
    //     0x7db3a0: stur            w0, [x3, #0xb]
    // 0x7db3a4: StoreField: r3->field_f = r0
    //     0x7db3a4: stur            w0, [x3, #0xf]
    // 0x7db3a8: StoreField: r3->field_13 = r0
    //     0x7db3a8: stur            w0, [x3, #0x13]
    // 0x7db3ac: r1 = _ConstMap len:12
    //     0x7db3ac: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7db3b0: r2 = 100
    //     0x7db3b0: mov             x2, #0x64
    // 0x7db3b4: r0 = []()
    //     0x7db3b4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7db3b8: stur            x0, [fp, #-0x18]
    // 0x7db3bc: cmp             w0, NULL
    // 0x7db3c0: b.eq            #0x7db884
    // 0x7db3c4: r0 = Radius()
    //     0x7db3c4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7db3c8: d0 = 12.000000
    //     0x7db3c8: fmov            d0, #12.00000000
    // 0x7db3cc: stur            x0, [fp, #-0x28]
    // 0x7db3d0: StoreField: r0->field_7 = d0
    //     0x7db3d0: stur            d0, [x0, #7]
    // 0x7db3d4: StoreField: r0->field_f = d0
    //     0x7db3d4: stur            d0, [x0, #0xf]
    // 0x7db3d8: r0 = BorderRadius()
    //     0x7db3d8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7db3dc: mov             x3, x0
    // 0x7db3e0: ldur            x0, [fp, #-0x28]
    // 0x7db3e4: stur            x3, [fp, #-0x30]
    // 0x7db3e8: StoreField: r3->field_7 = r0
    //     0x7db3e8: stur            w0, [x3, #7]
    // 0x7db3ec: StoreField: r3->field_b = r0
    //     0x7db3ec: stur            w0, [x3, #0xb]
    // 0x7db3f0: StoreField: r3->field_f = r0
    //     0x7db3f0: stur            w0, [x3, #0xf]
    // 0x7db3f4: StoreField: r3->field_13 = r0
    //     0x7db3f4: stur            w0, [x3, #0x13]
    // 0x7db3f8: r1 = _ConstMap len:12
    //     0x7db3f8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7db3fc: r2 = 400
    //     0x7db3fc: mov             x2, #0x190
    // 0x7db400: r0 = []()
    //     0x7db400: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7db404: cmp             w0, NULL
    // 0x7db408: b.eq            #0x7db888
    // 0x7db40c: str             x0, [SP]
    // 0x7db410: r1 = Null
    //     0x7db410: mov             x1, NULL
    // 0x7db414: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7db414: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7db418: ldr             x4, [x4, #0x788]
    // 0x7db41c: r0 = Border.all()
    //     0x7db41c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7db420: stur            x0, [fp, #-0x28]
    // 0x7db424: r0 = BoxDecoration()
    //     0x7db424: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7db428: mov             x2, x0
    // 0x7db42c: ldur            x0, [fp, #-0x18]
    // 0x7db430: stur            x2, [fp, #-0x38]
    // 0x7db434: StoreField: r2->field_7 = r0
    //     0x7db434: stur            w0, [x2, #7]
    // 0x7db438: ldur            x0, [fp, #-0x28]
    // 0x7db43c: StoreField: r2->field_f = r0
    //     0x7db43c: stur            w0, [x2, #0xf]
    // 0x7db440: ldur            x0, [fp, #-0x30]
    // 0x7db444: StoreField: r2->field_13 = r0
    //     0x7db444: stur            w0, [x2, #0x13]
    // 0x7db448: r0 = Instance_BoxShape
    //     0x7db448: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7db44c: ldr             x0, [x0, #0x1c8]
    // 0x7db450: StoreField: r2->field_23 = r0
    //     0x7db450: stur            w0, [x2, #0x23]
    // 0x7db454: r16 = 0.100000
    //     0x7db454: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7db458: ldr             x16, [x16, #0x1f8]
    // 0x7db45c: str             x16, [SP]
    // 0x7db460: r1 = Instance_Color
    //     0x7db460: add             x1, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x7db464: ldr             x1, [x1, #0x790]
    // 0x7db468: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7db468: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7db46c: ldr             x4, [x4, #0x198]
    // 0x7db470: r0 = withValues()
    //     0x7db470: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7db474: stur            x0, [fp, #-0x18]
    // 0x7db478: r0 = Radius()
    //     0x7db478: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7db47c: d0 = 8.000000
    //     0x7db47c: fmov            d0, #8.00000000
    // 0x7db480: stur            x0, [fp, #-0x28]
    // 0x7db484: StoreField: r0->field_7 = d0
    //     0x7db484: stur            d0, [x0, #7]
    // 0x7db488: StoreField: r0->field_f = d0
    //     0x7db488: stur            d0, [x0, #0xf]
    // 0x7db48c: r0 = BorderRadius()
    //     0x7db48c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7db490: mov             x1, x0
    // 0x7db494: ldur            x0, [fp, #-0x28]
    // 0x7db498: stur            x1, [fp, #-0x30]
    // 0x7db49c: StoreField: r1->field_7 = r0
    //     0x7db49c: stur            w0, [x1, #7]
    // 0x7db4a0: StoreField: r1->field_b = r0
    //     0x7db4a0: stur            w0, [x1, #0xb]
    // 0x7db4a4: StoreField: r1->field_f = r0
    //     0x7db4a4: stur            w0, [x1, #0xf]
    // 0x7db4a8: StoreField: r1->field_13 = r0
    //     0x7db4a8: stur            w0, [x1, #0x13]
    // 0x7db4ac: r0 = BoxDecoration()
    //     0x7db4ac: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7db4b0: mov             x1, x0
    // 0x7db4b4: ldur            x0, [fp, #-0x18]
    // 0x7db4b8: stur            x1, [fp, #-0x28]
    // 0x7db4bc: StoreField: r1->field_7 = r0
    //     0x7db4bc: stur            w0, [x1, #7]
    // 0x7db4c0: ldur            x0, [fp, #-0x30]
    // 0x7db4c4: StoreField: r1->field_13 = r0
    //     0x7db4c4: stur            w0, [x1, #0x13]
    // 0x7db4c8: r0 = Instance_BoxShape
    //     0x7db4c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7db4cc: ldr             x0, [x0, #0x1c8]
    // 0x7db4d0: StoreField: r1->field_23 = r0
    //     0x7db4d0: stur            w0, [x1, #0x23]
    // 0x7db4d4: ldur            x2, [fp, #-0x10]
    // 0x7db4d8: LoadField: r3 = r2->field_b
    //     0x7db4d8: ldur            w3, [x2, #0xb]
    // 0x7db4dc: DecompressPointer r3
    //     0x7db4dc: add             x3, x3, HEAP, lsl #32
    // 0x7db4e0: stur            x3, [fp, #-0x18]
    // 0x7db4e4: r0 = Icon()
    //     0x7db4e4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7db4e8: mov             x1, x0
    // 0x7db4ec: ldur            x0, [fp, #-0x18]
    // 0x7db4f0: stur            x1, [fp, #-0x30]
    // 0x7db4f4: StoreField: r1->field_b = r0
    //     0x7db4f4: stur            w0, [x1, #0xb]
    // 0x7db4f8: r0 = 20.000000
    //     0x7db4f8: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7db4fc: ldr             x0, [x0, #0xe48]
    // 0x7db500: StoreField: r1->field_f = r0
    //     0x7db500: stur            w0, [x1, #0xf]
    // 0x7db504: r0 = Instance_Color
    //     0x7db504: add             x0, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x7db508: ldr             x0, [x0, #0x790]
    // 0x7db50c: StoreField: r1->field_23 = r0
    //     0x7db50c: stur            w0, [x1, #0x23]
    // 0x7db510: r0 = Container()
    //     0x7db510: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7db514: stur            x0, [fp, #-0x18]
    // 0x7db518: r16 = Instance_EdgeInsets
    //     0x7db518: add             x16, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x7db51c: ldr             x16, [x16, #0x480]
    // 0x7db520: ldur            lr, [fp, #-0x28]
    // 0x7db524: stp             lr, x16, [SP, #8]
    // 0x7db528: ldur            x16, [fp, #-0x30]
    // 0x7db52c: str             x16, [SP]
    // 0x7db530: mov             x1, x0
    // 0x7db534: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7db534: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7db538: ldr             x4, [x4, #0x1e8]
    // 0x7db53c: r0 = Container()
    //     0x7db53c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7db540: ldur            x0, [fp, #-0x10]
    // 0x7db544: LoadField: r1 = r0->field_f
    //     0x7db544: ldur            w1, [x0, #0xf]
    // 0x7db548: DecompressPointer r1
    //     0x7db548: add             x1, x1, HEAP, lsl #32
    // 0x7db54c: stur            x1, [fp, #-0x28]
    // 0x7db550: r0 = Text()
    //     0x7db550: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7db554: mov             x3, x0
    // 0x7db558: ldur            x0, [fp, #-0x28]
    // 0x7db55c: stur            x3, [fp, #-0x30]
    // 0x7db560: StoreField: r3->field_b = r0
    //     0x7db560: stur            w0, [x3, #0xb]
    // 0x7db564: r0 = Instance_TextStyle
    //     0x7db564: add             x0, PP, #0x12, lsl #12  ; [pp+0x12330] Obj!TextStyle@a181d1
    //     0x7db568: ldr             x0, [x0, #0x330]
    // 0x7db56c: StoreField: r3->field_13 = r0
    //     0x7db56c: stur            w0, [x3, #0x13]
    // 0x7db570: ldur            x0, [fp, #-0x10]
    // 0x7db574: LoadField: r4 = r0->field_13
    //     0x7db574: ldur            w4, [x0, #0x13]
    // 0x7db578: DecompressPointer r4
    //     0x7db578: add             x4, x4, HEAP, lsl #32
    // 0x7db57c: stur            x4, [fp, #-0x28]
    // 0x7db580: r1 = _ConstMap len:12
    //     0x7db580: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7db584: r2 = 1200
    //     0x7db584: mov             x2, #0x4b0
    // 0x7db588: r0 = []()
    //     0x7db588: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7db58c: stur            x0, [fp, #-0x10]
    // 0x7db590: cmp             w0, NULL
    // 0x7db594: b.eq            #0x7db88c
    // 0x7db598: r0 = TextStyle()
    //     0x7db598: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7db59c: mov             x1, x0
    // 0x7db5a0: r0 = true
    //     0x7db5a0: add             x0, NULL, #0x20  ; true
    // 0x7db5a4: stur            x1, [fp, #-0x40]
    // 0x7db5a8: StoreField: r1->field_7 = r0
    //     0x7db5a8: stur            w0, [x1, #7]
    // 0x7db5ac: ldur            x2, [fp, #-0x10]
    // 0x7db5b0: StoreField: r1->field_b = r2
    //     0x7db5b0: stur            w2, [x1, #0xb]
    // 0x7db5b4: r2 = 12.000000
    //     0x7db5b4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7db5b8: ldr             x2, [x2, #0xae0]
    // 0x7db5bc: StoreField: r1->field_1f = r2
    //     0x7db5bc: stur            w2, [x1, #0x1f]
    // 0x7db5c0: r0 = Text()
    //     0x7db5c0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7db5c4: mov             x3, x0
    // 0x7db5c8: ldur            x0, [fp, #-0x28]
    // 0x7db5cc: stur            x3, [fp, #-0x10]
    // 0x7db5d0: StoreField: r3->field_b = r0
    //     0x7db5d0: stur            w0, [x3, #0xb]
    // 0x7db5d4: ldur            x0, [fp, #-0x40]
    // 0x7db5d8: StoreField: r3->field_13 = r0
    //     0x7db5d8: stur            w0, [x3, #0x13]
    // 0x7db5dc: r1 = Null
    //     0x7db5dc: mov             x1, NULL
    // 0x7db5e0: r2 = 6
    //     0x7db5e0: mov             x2, #6
    // 0x7db5e4: r0 = AllocateArray()
    //     0x7db5e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7db5e8: mov             x2, x0
    // 0x7db5ec: ldur            x0, [fp, #-0x30]
    // 0x7db5f0: stur            x2, [fp, #-0x28]
    // 0x7db5f4: StoreField: r2->field_f = r0
    //     0x7db5f4: stur            w0, [x2, #0xf]
    // 0x7db5f8: r16 = Instance_SizedBox
    //     0x7db5f8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7db5fc: ldr             x16, [x16, #0x338]
    // 0x7db600: StoreField: r2->field_13 = r16
    //     0x7db600: stur            w16, [x2, #0x13]
    // 0x7db604: ldur            x0, [fp, #-0x10]
    // 0x7db608: ArrayStore: r2[0] = r0  ; List_4
    //     0x7db608: stur            w0, [x2, #0x17]
    // 0x7db60c: r1 = <Widget>
    //     0x7db60c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7db610: r0 = AllocateGrowableArray()
    //     0x7db610: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7db614: mov             x1, x0
    // 0x7db618: ldur            x0, [fp, #-0x28]
    // 0x7db61c: stur            x1, [fp, #-0x10]
    // 0x7db620: StoreField: r1->field_f = r0
    //     0x7db620: stur            w0, [x1, #0xf]
    // 0x7db624: r0 = 6
    //     0x7db624: mov             x0, #6
    // 0x7db628: StoreField: r1->field_b = r0
    //     0x7db628: stur            w0, [x1, #0xb]
    // 0x7db62c: r0 = Column()
    //     0x7db62c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7db630: mov             x2, x0
    // 0x7db634: r0 = Instance_Axis
    //     0x7db634: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7db638: stur            x2, [fp, #-0x28]
    // 0x7db63c: StoreField: r2->field_f = r0
    //     0x7db63c: stur            w0, [x2, #0xf]
    // 0x7db640: r0 = Instance_MainAxisAlignment
    //     0x7db640: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7db644: ldr             x0, [x0, #0x230]
    // 0x7db648: StoreField: r2->field_13 = r0
    //     0x7db648: stur            w0, [x2, #0x13]
    // 0x7db64c: r3 = Instance_MainAxisSize
    //     0x7db64c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7db650: ldr             x3, [x3, #0x330]
    // 0x7db654: ArrayStore: r2[0] = r3  ; List_4
    //     0x7db654: stur            w3, [x2, #0x17]
    // 0x7db658: r1 = Instance_CrossAxisAlignment
    //     0x7db658: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7db65c: ldr             x1, [x1, #0x238]
    // 0x7db660: StoreField: r2->field_1b = r1
    //     0x7db660: stur            w1, [x2, #0x1b]
    // 0x7db664: r4 = Instance_VerticalDirection
    //     0x7db664: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7db668: ldr             x4, [x4, #0x340]
    // 0x7db66c: StoreField: r2->field_23 = r4
    //     0x7db66c: stur            w4, [x2, #0x23]
    // 0x7db670: r5 = Instance_Clip
    //     0x7db670: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7db674: ldr             x5, [x5, #0x348]
    // 0x7db678: StoreField: r2->field_2b = r5
    //     0x7db678: stur            w5, [x2, #0x2b]
    // 0x7db67c: StoreField: r2->field_2f = rZR
    //     0x7db67c: stur            xzr, [x2, #0x2f]
    // 0x7db680: ldur            x1, [fp, #-0x10]
    // 0x7db684: StoreField: r2->field_b = r1
    //     0x7db684: stur            w1, [x2, #0xb]
    // 0x7db688: r1 = <FlexParentData>
    //     0x7db688: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7db68c: ldr             x1, [x1, #0x340]
    // 0x7db690: r0 = Expanded()
    //     0x7db690: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7db694: mov             x3, x0
    // 0x7db698: r0 = 1
    //     0x7db698: mov             x0, #1
    // 0x7db69c: stur            x3, [fp, #-0x10]
    // 0x7db6a0: StoreField: r3->field_13 = r0
    //     0x7db6a0: stur            x0, [x3, #0x13]
    // 0x7db6a4: r0 = Instance_FlexFit
    //     0x7db6a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7db6a8: ldr             x0, [x0, #0x348]
    // 0x7db6ac: StoreField: r3->field_1b = r0
    //     0x7db6ac: stur            w0, [x3, #0x1b]
    // 0x7db6b0: ldur            x0, [fp, #-0x28]
    // 0x7db6b4: StoreField: r3->field_b = r0
    //     0x7db6b4: stur            w0, [x3, #0xb]
    // 0x7db6b8: r1 = _ConstMap len:12
    //     0x7db6b8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7db6bc: r2 = 800
    //     0x7db6bc: mov             x2, #0x320
    // 0x7db6c0: r0 = []()
    //     0x7db6c0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7db6c4: stur            x0, [fp, #-0x28]
    // 0x7db6c8: cmp             w0, NULL
    // 0x7db6cc: b.eq            #0x7db890
    // 0x7db6d0: r0 = Icon()
    //     0x7db6d0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7db6d4: mov             x3, x0
    // 0x7db6d8: r0 = Instance_IconData
    //     0x7db6d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x7db6dc: ldr             x0, [x0, #0x350]
    // 0x7db6e0: stur            x3, [fp, #-0x30]
    // 0x7db6e4: StoreField: r3->field_b = r0
    //     0x7db6e4: stur            w0, [x3, #0xb]
    // 0x7db6e8: r0 = 16.000000
    //     0x7db6e8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7db6ec: ldr             x0, [x0, #0x358]
    // 0x7db6f0: StoreField: r3->field_f = r0
    //     0x7db6f0: stur            w0, [x3, #0xf]
    // 0x7db6f4: ldur            x0, [fp, #-0x28]
    // 0x7db6f8: StoreField: r3->field_23 = r0
    //     0x7db6f8: stur            w0, [x3, #0x23]
    // 0x7db6fc: r1 = Null
    //     0x7db6fc: mov             x1, NULL
    // 0x7db700: r2 = 8
    //     0x7db700: mov             x2, #8
    // 0x7db704: r0 = AllocateArray()
    //     0x7db704: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7db708: mov             x2, x0
    // 0x7db70c: ldur            x0, [fp, #-0x18]
    // 0x7db710: stur            x2, [fp, #-0x28]
    // 0x7db714: StoreField: r2->field_f = r0
    //     0x7db714: stur            w0, [x2, #0xf]
    // 0x7db718: r16 = Instance_SizedBox
    //     0x7db718: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x7db71c: ldr             x16, [x16, #0x758]
    // 0x7db720: StoreField: r2->field_13 = r16
    //     0x7db720: stur            w16, [x2, #0x13]
    // 0x7db724: ldur            x0, [fp, #-0x10]
    // 0x7db728: ArrayStore: r2[0] = r0  ; List_4
    //     0x7db728: stur            w0, [x2, #0x17]
    // 0x7db72c: ldur            x0, [fp, #-0x30]
    // 0x7db730: StoreField: r2->field_1b = r0
    //     0x7db730: stur            w0, [x2, #0x1b]
    // 0x7db734: r1 = <Widget>
    //     0x7db734: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7db738: r0 = AllocateGrowableArray()
    //     0x7db738: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7db73c: mov             x1, x0
    // 0x7db740: ldur            x0, [fp, #-0x28]
    // 0x7db744: stur            x1, [fp, #-0x10]
    // 0x7db748: StoreField: r1->field_f = r0
    //     0x7db748: stur            w0, [x1, #0xf]
    // 0x7db74c: r0 = 8
    //     0x7db74c: mov             x0, #8
    // 0x7db750: StoreField: r1->field_b = r0
    //     0x7db750: stur            w0, [x1, #0xb]
    // 0x7db754: r0 = Row()
    //     0x7db754: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7db758: mov             x1, x0
    // 0x7db75c: r0 = Instance_Axis
    //     0x7db75c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7db760: stur            x1, [fp, #-0x18]
    // 0x7db764: StoreField: r1->field_f = r0
    //     0x7db764: stur            w0, [x1, #0xf]
    // 0x7db768: r0 = Instance_MainAxisAlignment
    //     0x7db768: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7db76c: ldr             x0, [x0, #0x230]
    // 0x7db770: StoreField: r1->field_13 = r0
    //     0x7db770: stur            w0, [x1, #0x13]
    // 0x7db774: r0 = Instance_MainAxisSize
    //     0x7db774: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7db778: ldr             x0, [x0, #0x330]
    // 0x7db77c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7db77c: stur            w0, [x1, #0x17]
    // 0x7db780: r0 = Instance_CrossAxisAlignment
    //     0x7db780: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7db784: ldr             x0, [x0, #0x338]
    // 0x7db788: StoreField: r1->field_1b = r0
    //     0x7db788: stur            w0, [x1, #0x1b]
    // 0x7db78c: r0 = Instance_VerticalDirection
    //     0x7db78c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7db790: ldr             x0, [x0, #0x340]
    // 0x7db794: StoreField: r1->field_23 = r0
    //     0x7db794: stur            w0, [x1, #0x23]
    // 0x7db798: r0 = Instance_Clip
    //     0x7db798: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7db79c: ldr             x0, [x0, #0x348]
    // 0x7db7a0: StoreField: r1->field_2b = r0
    //     0x7db7a0: stur            w0, [x1, #0x2b]
    // 0x7db7a4: StoreField: r1->field_2f = rZR
    //     0x7db7a4: stur            xzr, [x1, #0x2f]
    // 0x7db7a8: ldur            x2, [fp, #-0x10]
    // 0x7db7ac: StoreField: r1->field_b = r2
    //     0x7db7ac: stur            w2, [x1, #0xb]
    // 0x7db7b0: r0 = Container()
    //     0x7db7b0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7db7b4: stur            x0, [fp, #-0x10]
    // 0x7db7b8: r16 = Instance_EdgeInsets
    //     0x7db7b8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7db7bc: ldr             x16, [x16, #0x240]
    // 0x7db7c0: ldur            lr, [fp, #-0x38]
    // 0x7db7c4: stp             lr, x16, [SP, #8]
    // 0x7db7c8: ldur            x16, [fp, #-0x18]
    // 0x7db7cc: str             x16, [SP]
    // 0x7db7d0: mov             x1, x0
    // 0x7db7d4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7db7d4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7db7d8: ldr             x4, [x4, #0x1e8]
    // 0x7db7dc: r0 = Container()
    //     0x7db7dc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7db7e0: r0 = InkWell()
    //     0x7db7e0: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7db7e4: mov             x1, x0
    // 0x7db7e8: ldur            x0, [fp, #-0x10]
    // 0x7db7ec: stur            x1, [fp, #-0x18]
    // 0x7db7f0: StoreField: r1->field_b = r0
    //     0x7db7f0: stur            w0, [x1, #0xb]
    // 0x7db7f4: ldur            x0, [fp, #-8]
    // 0x7db7f8: StoreField: r1->field_f = r0
    //     0x7db7f8: stur            w0, [x1, #0xf]
    // 0x7db7fc: r0 = true
    //     0x7db7fc: add             x0, NULL, #0x20  ; true
    // 0x7db800: StoreField: r1->field_47 = r0
    //     0x7db800: stur            w0, [x1, #0x47]
    // 0x7db804: r2 = Instance_BoxShape
    //     0x7db804: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7db808: ldr             x2, [x2, #0x1c8]
    // 0x7db80c: StoreField: r1->field_4b = r2
    //     0x7db80c: stur            w2, [x1, #0x4b]
    // 0x7db810: ldur            x2, [fp, #-0x20]
    // 0x7db814: StoreField: r1->field_53 = r2
    //     0x7db814: stur            w2, [x1, #0x53]
    // 0x7db818: StoreField: r1->field_73 = r0
    //     0x7db818: stur            w0, [x1, #0x73]
    // 0x7db81c: r2 = false
    //     0x7db81c: add             x2, NULL, #0x30  ; false
    // 0x7db820: StoreField: r1->field_77 = r2
    //     0x7db820: stur            w2, [x1, #0x77]
    // 0x7db824: StoreField: r1->field_87 = r0
    //     0x7db824: stur            w0, [x1, #0x87]
    // 0x7db828: StoreField: r1->field_7f = r2
    //     0x7db828: stur            w2, [x1, #0x7f]
    // 0x7db82c: r0 = Material()
    //     0x7db82c: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x7db830: r1 = Instance_MaterialType
    //     0x7db830: add             x1, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x7db834: ldr             x1, [x1, #0xfa0]
    // 0x7db838: StoreField: r0->field_f = r1
    //     0x7db838: stur            w1, [x0, #0xf]
    // 0x7db83c: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7db83c: stur            xzr, [x0, #0x17]
    // 0x7db840: r1 = true
    //     0x7db840: add             x1, NULL, #0x20  ; true
    // 0x7db844: StoreField: r0->field_33 = r1
    //     0x7db844: stur            w1, [x0, #0x33]
    // 0x7db848: r1 = Instance_Clip
    //     0x7db848: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7db84c: ldr             x1, [x1, #0x348]
    // 0x7db850: StoreField: r0->field_37 = r1
    //     0x7db850: stur            w1, [x0, #0x37]
    // 0x7db854: r1 = Instance_Duration
    //     0x7db854: add             x1, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x7db858: ldr             x1, [x1, #0x2c8]
    // 0x7db85c: StoreField: r0->field_3b = r1
    //     0x7db85c: stur            w1, [x0, #0x3b]
    // 0x7db860: ldur            x1, [fp, #-0x18]
    // 0x7db864: StoreField: r0->field_b = r1
    //     0x7db864: stur            w1, [x0, #0xb]
    // 0x7db868: r1 = false
    //     0x7db868: add             x1, NULL, #0x30  ; false
    // 0x7db86c: StoreField: r0->field_13 = r1
    //     0x7db86c: stur            w1, [x0, #0x13]
    // 0x7db870: LeaveFrame
    //     0x7db870: mov             SP, fp
    //     0x7db874: ldp             fp, lr, [SP], #0x10
    // 0x7db878: ret
    //     0x7db878: ret             
    // 0x7db87c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7db87c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7db880: b               #0x7db36c
    // 0x7db884: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7db884: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7db888: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7db888: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7db88c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7db88c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7db890: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7db890: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

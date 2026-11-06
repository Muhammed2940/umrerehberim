// lib: , url: package:umrem_demo/features/admin/widgets/events/event_card.dart

// class id: 1049550, size: 0x8
class :: {
}

// class id: 2918, size: 0x18, field offset: 0xc
//   const constructor, 
class EventCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e46cc, size: 0xcbc
    // 0x7e46cc: EnterFrame
    //     0x7e46cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7e46d0: mov             fp, SP
    // 0x7e46d4: AllocStack(0x78)
    //     0x7e46d4: sub             SP, SP, #0x78
    // 0x7e46d8: SetupParameters(EventCard this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e46d8: stur            x1, [fp, #-8]
    //     0x7e46dc: stur            x2, [fp, #-0x10]
    // 0x7e46e0: CheckStackOverflow
    //     0x7e46e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e46e4: cmp             SP, x16
    //     0x7e46e8: b.ls            #0x7e5360
    // 0x7e46ec: r1 = 2
    //     0x7e46ec: mov             x1, #2
    // 0x7e46f0: r0 = AllocateContext()
    //     0x7e46f0: bl              #0x927010  ; AllocateContextStub
    // 0x7e46f4: mov             x3, x0
    // 0x7e46f8: ldur            x0, [fp, #-8]
    // 0x7e46fc: stur            x3, [fp, #-0x18]
    // 0x7e4700: StoreField: r3->field_f = r0
    //     0x7e4700: stur            w0, [x3, #0xf]
    // 0x7e4704: ldur            x1, [fp, #-0x10]
    // 0x7e4708: StoreField: r3->field_13 = r1
    //     0x7e4708: stur            w1, [x3, #0x13]
    // 0x7e470c: r1 = Function 'isUpcoming':.
    //     0x7e470c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c460] AnonymousClosure: (0x7e594c), in [package:umrem_demo/features/admin/widgets/events/event_card.dart] EventCard::build (0x7e46cc)
    //     0x7e4710: ldr             x1, [x1, #0x460]
    // 0x7e4714: r2 = Null
    //     0x7e4714: mov             x2, NULL
    // 0x7e4718: r0 = AllocateClosure()
    //     0x7e4718: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e471c: ldur            x1, [fp, #-8]
    // 0x7e4720: LoadField: r2 = r1->field_13
    //     0x7e4720: ldur            w2, [x1, #0x13]
    // 0x7e4724: DecompressPointer r2
    //     0x7e4724: add             x2, x2, HEAP, lsl #32
    // 0x7e4728: LoadField: r3 = r1->field_b
    //     0x7e4728: ldur            w3, [x1, #0xb]
    // 0x7e472c: DecompressPointer r3
    //     0x7e472c: add             x3, x3, HEAP, lsl #32
    // 0x7e4730: stur            x3, [fp, #-0x20]
    // 0x7e4734: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x7e4734: ldur            w4, [x3, #0x17]
    // 0x7e4738: DecompressPointer r4
    //     0x7e4738: add             x4, x4, HEAP, lsl #32
    // 0x7e473c: stur            x4, [fp, #-0x10]
    // 0x7e4740: stp             x2, x0, [SP, #8]
    // 0x7e4744: str             x4, [SP]
    // 0x7e4748: ClosureCall
    //     0x7e4748: ldr             x4, [PP, #0xa90]  ; [pp+0xa90] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x7e474c: ldur            x2, [x0, #0x1f]
    //     0x7e4750: blr             x2
    // 0x7e4754: stur            x0, [fp, #-0x28]
    // 0x7e4758: r0 = Radius()
    //     0x7e4758: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e475c: d0 = 14.000000
    //     0x7e475c: fmov            d0, #14.00000000
    // 0x7e4760: stur            x0, [fp, #-0x30]
    // 0x7e4764: StoreField: r0->field_7 = d0
    //     0x7e4764: stur            d0, [x0, #7]
    // 0x7e4768: StoreField: r0->field_f = d0
    //     0x7e4768: stur            d0, [x0, #0xf]
    // 0x7e476c: r0 = BorderRadius()
    //     0x7e476c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e4770: mov             x3, x0
    // 0x7e4774: ldur            x0, [fp, #-0x30]
    // 0x7e4778: stur            x3, [fp, #-0x38]
    // 0x7e477c: StoreField: r3->field_7 = r0
    //     0x7e477c: stur            w0, [x3, #7]
    // 0x7e4780: StoreField: r3->field_b = r0
    //     0x7e4780: stur            w0, [x3, #0xb]
    // 0x7e4784: StoreField: r3->field_f = r0
    //     0x7e4784: stur            w0, [x3, #0xf]
    // 0x7e4788: StoreField: r3->field_13 = r0
    //     0x7e4788: stur            w0, [x3, #0x13]
    // 0x7e478c: r1 = _ConstMap len:12
    //     0x7e478c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4790: r2 = 400
    //     0x7e4790: mov             x2, #0x190
    // 0x7e4794: r0 = []()
    //     0x7e4794: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4798: cmp             w0, NULL
    // 0x7e479c: b.eq            #0x7e5368
    // 0x7e47a0: str             x0, [SP]
    // 0x7e47a4: r1 = Null
    //     0x7e47a4: mov             x1, NULL
    // 0x7e47a8: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7e47a8: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7e47ac: ldr             x4, [x4, #0x788]
    // 0x7e47b0: r0 = Border.all()
    //     0x7e47b0: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e47b4: stur            x0, [fp, #-0x30]
    // 0x7e47b8: r16 = 0.020000
    //     0x7e47b8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f20] 0.02
    //     0x7e47bc: ldr             x16, [x16, #0xf20]
    // 0x7e47c0: str             x16, [SP]
    // 0x7e47c4: r1 = Instance_Color
    //     0x7e47c4: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7e47c8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e47c8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e47cc: ldr             x4, [x4, #0x198]
    // 0x7e47d0: r0 = withValues()
    //     0x7e47d0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e47d4: stur            x0, [fp, #-0x40]
    // 0x7e47d8: r0 = BoxShadow()
    //     0x7e47d8: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7e47dc: stur            x0, [fp, #-0x48]
    // 0x7e47e0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7e47e0: stur            xzr, [x0, #0x17]
    // 0x7e47e4: r1 = Instance_BlurStyle
    //     0x7e47e4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7e47e8: ldr             x1, [x1, #0x9b0]
    // 0x7e47ec: StoreField: r0->field_1f = r1
    //     0x7e47ec: stur            w1, [x0, #0x1f]
    // 0x7e47f0: ldur            x1, [fp, #-0x40]
    // 0x7e47f4: StoreField: r0->field_7 = r1
    //     0x7e47f4: stur            w1, [x0, #7]
    // 0x7e47f8: r1 = Instance_Offset
    //     0x7e47f8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f28] Obj!Offset@a26a11
    //     0x7e47fc: ldr             x1, [x1, #0xf28]
    // 0x7e4800: StoreField: r0->field_b = r1
    //     0x7e4800: stur            w1, [x0, #0xb]
    // 0x7e4804: d0 = 10.000000
    //     0x7e4804: fmov            d0, #10.00000000
    // 0x7e4808: StoreField: r0->field_f = d0
    //     0x7e4808: stur            d0, [x0, #0xf]
    // 0x7e480c: r1 = Null
    //     0x7e480c: mov             x1, NULL
    // 0x7e4810: r2 = 2
    //     0x7e4810: mov             x2, #2
    // 0x7e4814: r0 = AllocateArray()
    //     0x7e4814: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4818: mov             x2, x0
    // 0x7e481c: ldur            x0, [fp, #-0x48]
    // 0x7e4820: stur            x2, [fp, #-0x40]
    // 0x7e4824: StoreField: r2->field_f = r0
    //     0x7e4824: stur            w0, [x2, #0xf]
    // 0x7e4828: r1 = <BoxShadow>
    //     0x7e4828: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7e482c: ldr             x1, [x1, #0x9c0]
    // 0x7e4830: r0 = AllocateGrowableArray()
    //     0x7e4830: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4834: mov             x1, x0
    // 0x7e4838: ldur            x0, [fp, #-0x40]
    // 0x7e483c: stur            x1, [fp, #-0x48]
    // 0x7e4840: StoreField: r1->field_f = r0
    //     0x7e4840: stur            w0, [x1, #0xf]
    // 0x7e4844: r0 = 2
    //     0x7e4844: mov             x0, #2
    // 0x7e4848: StoreField: r1->field_b = r0
    //     0x7e4848: stur            w0, [x1, #0xb]
    // 0x7e484c: r0 = BoxDecoration()
    //     0x7e484c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e4850: mov             x1, x0
    // 0x7e4854: r0 = Instance_Color
    //     0x7e4854: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e4858: stur            x1, [fp, #-0x40]
    // 0x7e485c: StoreField: r1->field_7 = r0
    //     0x7e485c: stur            w0, [x1, #7]
    // 0x7e4860: ldur            x0, [fp, #-0x30]
    // 0x7e4864: StoreField: r1->field_f = r0
    //     0x7e4864: stur            w0, [x1, #0xf]
    // 0x7e4868: ldur            x0, [fp, #-0x38]
    // 0x7e486c: StoreField: r1->field_13 = r0
    //     0x7e486c: stur            w0, [x1, #0x13]
    // 0x7e4870: ldur            x0, [fp, #-0x48]
    // 0x7e4874: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e4874: stur            w0, [x1, #0x17]
    // 0x7e4878: r0 = Instance_BoxShape
    //     0x7e4878: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e487c: ldr             x0, [x0, #0x1c8]
    // 0x7e4880: StoreField: r1->field_23 = r0
    //     0x7e4880: stur            w0, [x1, #0x23]
    // 0x7e4884: r0 = Radius()
    //     0x7e4884: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e4888: d0 = 14.000000
    //     0x7e4888: fmov            d0, #14.00000000
    // 0x7e488c: stur            x0, [fp, #-0x30]
    // 0x7e4890: StoreField: r0->field_7 = d0
    //     0x7e4890: stur            d0, [x0, #7]
    // 0x7e4894: StoreField: r0->field_f = d0
    //     0x7e4894: stur            d0, [x0, #0xf]
    // 0x7e4898: r0 = BorderRadius()
    //     0x7e4898: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e489c: mov             x3, x0
    // 0x7e48a0: ldur            x0, [fp, #-0x30]
    // 0x7e48a4: stur            x3, [fp, #-0x38]
    // 0x7e48a8: StoreField: r3->field_7 = r0
    //     0x7e48a8: stur            w0, [x3, #7]
    // 0x7e48ac: StoreField: r3->field_b = r0
    //     0x7e48ac: stur            w0, [x3, #0xb]
    // 0x7e48b0: StoreField: r3->field_f = r0
    //     0x7e48b0: stur            w0, [x3, #0xf]
    // 0x7e48b4: StoreField: r3->field_13 = r0
    //     0x7e48b4: stur            w0, [x3, #0x13]
    // 0x7e48b8: ldur            x0, [fp, #-0x28]
    // 0x7e48bc: r16 = true
    //     0x7e48bc: add             x16, NULL, #0x20  ; true
    // 0x7e48c0: cmp             w0, w16
    // 0x7e48c4: b.ne            #0x7e48d4
    // 0x7e48c8: r4 = Instance_Color
    //     0x7e48c8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e48cc: ldr             x4, [x4, #0xb78]
    // 0x7e48d0: b               #0x7e48f4
    // 0x7e48d4: r1 = _ConstMap len:10
    //     0x7e48d4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7e48d8: ldr             x1, [x1, #0xf30]
    // 0x7e48dc: r2 = 1200
    //     0x7e48dc: mov             x2, #0x4b0
    // 0x7e48e0: r0 = []()
    //     0x7e48e0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e48e4: cmp             w0, NULL
    // 0x7e48e8: b.eq            #0x7e536c
    // 0x7e48ec: mov             x4, x0
    // 0x7e48f0: ldur            x0, [fp, #-0x28]
    // 0x7e48f4: ldur            x1, [fp, #-8]
    // 0x7e48f8: ldur            x2, [fp, #-0x20]
    // 0x7e48fc: ldur            x3, [fp, #-0x10]
    // 0x7e4900: stur            x4, [fp, #-0x30]
    // 0x7e4904: r0 = Radius()
    //     0x7e4904: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e4908: d0 = 4.000000
    //     0x7e4908: fmov            d0, #4.00000000
    // 0x7e490c: stur            x0, [fp, #-0x48]
    // 0x7e4910: StoreField: r0->field_7 = d0
    //     0x7e4910: stur            d0, [x0, #7]
    // 0x7e4914: StoreField: r0->field_f = d0
    //     0x7e4914: stur            d0, [x0, #0xf]
    // 0x7e4918: r0 = BorderRadius()
    //     0x7e4918: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e491c: mov             x1, x0
    // 0x7e4920: ldur            x0, [fp, #-0x48]
    // 0x7e4924: stur            x1, [fp, #-0x50]
    // 0x7e4928: StoreField: r1->field_7 = r0
    //     0x7e4928: stur            w0, [x1, #7]
    // 0x7e492c: StoreField: r1->field_b = r0
    //     0x7e492c: stur            w0, [x1, #0xb]
    // 0x7e4930: StoreField: r1->field_f = r0
    //     0x7e4930: stur            w0, [x1, #0xf]
    // 0x7e4934: StoreField: r1->field_13 = r0
    //     0x7e4934: stur            w0, [x1, #0x13]
    // 0x7e4938: r0 = BoxDecoration()
    //     0x7e4938: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e493c: mov             x1, x0
    // 0x7e4940: ldur            x0, [fp, #-0x30]
    // 0x7e4944: stur            x1, [fp, #-0x48]
    // 0x7e4948: StoreField: r1->field_7 = r0
    //     0x7e4948: stur            w0, [x1, #7]
    // 0x7e494c: ldur            x0, [fp, #-0x50]
    // 0x7e4950: StoreField: r1->field_13 = r0
    //     0x7e4950: stur            w0, [x1, #0x13]
    // 0x7e4954: r0 = Instance_BoxShape
    //     0x7e4954: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e4958: ldr             x0, [x0, #0x1c8]
    // 0x7e495c: StoreField: r1->field_23 = r0
    //     0x7e495c: stur            w0, [x1, #0x23]
    // 0x7e4960: r0 = Container()
    //     0x7e4960: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e4964: stur            x0, [fp, #-0x30]
    // 0x7e4968: r16 = 4.000000
    //     0x7e4968: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f38] 4
    //     0x7e496c: ldr             x16, [x16, #0xf38]
    // 0x7e4970: r30 = 64.000000
    //     0x7e4970: add             lr, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x7e4974: ldr             lr, [lr, #0xf40]
    // 0x7e4978: stp             lr, x16, [SP, #8]
    // 0x7e497c: ldur            x16, [fp, #-0x48]
    // 0x7e4980: str             x16, [SP]
    // 0x7e4984: mov             x1, x0
    // 0x7e4988: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x7e4988: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7e498c: ldr             x4, [x4, #0xa58]
    // 0x7e4990: r0 = Container()
    //     0x7e4990: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e4994: ldur            x0, [fp, #-0x20]
    // 0x7e4998: LoadField: r1 = r0->field_b
    //     0x7e4998: ldur            w1, [x0, #0xb]
    // 0x7e499c: DecompressPointer r1
    //     0x7e499c: add             x1, x1, HEAP, lsl #32
    // 0x7e49a0: stur            x1, [fp, #-0x48]
    // 0x7e49a4: r0 = Text()
    //     0x7e49a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e49a8: mov             x2, x0
    // 0x7e49ac: ldur            x0, [fp, #-0x48]
    // 0x7e49b0: stur            x2, [fp, #-0x50]
    // 0x7e49b4: StoreField: r2->field_b = r0
    //     0x7e49b4: stur            w0, [x2, #0xb]
    // 0x7e49b8: r0 = Instance_TextStyle
    //     0x7e49b8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f48] Obj!TextStyle@a182b1
    //     0x7e49bc: ldr             x0, [x0, #0xf48]
    // 0x7e49c0: StoreField: r2->field_13 = r0
    //     0x7e49c0: stur            w0, [x2, #0x13]
    // 0x7e49c4: r1 = <FlexParentData>
    //     0x7e49c4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e49c8: ldr             x1, [x1, #0x340]
    // 0x7e49cc: r0 = Expanded()
    //     0x7e49cc: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e49d0: mov             x1, x0
    // 0x7e49d4: r0 = 1
    //     0x7e49d4: mov             x0, #1
    // 0x7e49d8: stur            x1, [fp, #-0x48]
    // 0x7e49dc: StoreField: r1->field_13 = r0
    //     0x7e49dc: stur            x0, [x1, #0x13]
    // 0x7e49e0: r2 = Instance_FlexFit
    //     0x7e49e0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e49e4: ldr             x2, [x2, #0x348]
    // 0x7e49e8: StoreField: r1->field_1b = r2
    //     0x7e49e8: stur            w2, [x1, #0x1b]
    // 0x7e49ec: ldur            x3, [fp, #-0x50]
    // 0x7e49f0: StoreField: r1->field_b = r3
    //     0x7e49f0: stur            w3, [x1, #0xb]
    // 0x7e49f4: r0 = IconButton()
    //     0x7e49f4: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7e49f8: mov             x3, x0
    // 0x7e49fc: r0 = Instance_EdgeInsets
    //     0x7e49fc: ldr             x0, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7e4a00: stur            x3, [fp, #-0x50]
    // 0x7e4a04: StoreField: r3->field_13 = r0
    //     0x7e4a04: stur            w0, [x3, #0x13]
    // 0x7e4a08: r4 = 20.000000
    //     0x7e4a08: add             x4, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7e4a0c: ldr             x4, [x4, #0xe48]
    // 0x7e4a10: StoreField: r3->field_1b = r4
    //     0x7e4a10: stur            w4, [x3, #0x1b]
    // 0x7e4a14: r1 = Instance_MaterialColor
    //     0x7e4a14: add             x1, PP, #0x12, lsl #12  ; [pp+0x127a8] Obj!MaterialColor@a25a61
    //     0x7e4a18: ldr             x1, [x1, #0x7a8]
    // 0x7e4a1c: StoreField: r3->field_2b = r1
    //     0x7e4a1c: stur            w1, [x3, #0x2b]
    // 0x7e4a20: ldur            x2, [fp, #-0x18]
    // 0x7e4a24: r1 = Function '<anonymous closure>':.
    //     0x7e4a24: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c468] AnonymousClosure: (0x7e5388), in [package:umrem_demo/features/admin/widgets/events/event_card.dart] EventCard::build (0x7e46cc)
    //     0x7e4a28: ldr             x1, [x1, #0x468]
    // 0x7e4a2c: r0 = AllocateClosure()
    //     0x7e4a2c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e4a30: mov             x1, x0
    // 0x7e4a34: ldur            x0, [fp, #-0x50]
    // 0x7e4a38: StoreField: r0->field_3b = r1
    //     0x7e4a38: stur            w1, [x0, #0x3b]
    // 0x7e4a3c: r3 = false
    //     0x7e4a3c: add             x3, NULL, #0x30  ; false
    // 0x7e4a40: StoreField: r0->field_4f = r3
    //     0x7e4a40: stur            w3, [x0, #0x4f]
    // 0x7e4a44: r4 = Instance_BoxConstraints
    //     0x7e4a44: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c470] Obj!BoxConstraints@a0b3f1
    //     0x7e4a48: ldr             x4, [x4, #0x470]
    // 0x7e4a4c: StoreField: r0->field_5b = r4
    //     0x7e4a4c: stur            w4, [x0, #0x5b]
    // 0x7e4a50: r1 = Instance_Icon
    //     0x7e4a50: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c478] Obj!Icon@a1f131
    //     0x7e4a54: ldr             x1, [x1, #0x478]
    // 0x7e4a58: StoreField: r0->field_1f = r1
    //     0x7e4a58: stur            w1, [x0, #0x1f]
    // 0x7e4a5c: r5 = Instance__IconButtonVariant
    //     0x7e4a5c: add             x5, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7e4a60: ldr             x5, [x5, #0x1b8]
    // 0x7e4a64: StoreField: r0->field_6f = r5
    //     0x7e4a64: stur            w5, [x0, #0x6f]
    // 0x7e4a68: r1 = _ConstMap len:10
    //     0x7e4a68: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7e4a6c: r2 = 1200
    //     0x7e4a6c: mov             x2, #0x4b0
    // 0x7e4a70: r0 = []()
    //     0x7e4a70: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4a74: stur            x0, [fp, #-0x58]
    // 0x7e4a78: cmp             w0, NULL
    // 0x7e4a7c: b.eq            #0x7e5370
    // 0x7e4a80: r0 = IconButton()
    //     0x7e4a80: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7e4a84: mov             x3, x0
    // 0x7e4a88: r0 = Instance_EdgeInsets
    //     0x7e4a88: ldr             x0, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7e4a8c: stur            x3, [fp, #-0x60]
    // 0x7e4a90: StoreField: r3->field_13 = r0
    //     0x7e4a90: stur            w0, [x3, #0x13]
    // 0x7e4a94: r0 = 20.000000
    //     0x7e4a94: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7e4a98: ldr             x0, [x0, #0xe48]
    // 0x7e4a9c: StoreField: r3->field_1b = r0
    //     0x7e4a9c: stur            w0, [x3, #0x1b]
    // 0x7e4aa0: ldur            x0, [fp, #-0x58]
    // 0x7e4aa4: StoreField: r3->field_2b = r0
    //     0x7e4aa4: stur            w0, [x3, #0x2b]
    // 0x7e4aa8: ldur            x2, [fp, #-0x18]
    // 0x7e4aac: r1 = Function '<anonymous closure>':.
    //     0x7e4aac: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c480] AnonymousClosure: (0x7e5400), in [package:umrem_demo/features/admin/widgets/events/event_card.dart] EventCard::build (0x7e46cc)
    //     0x7e4ab0: ldr             x1, [x1, #0x480]
    // 0x7e4ab4: r0 = AllocateClosure()
    //     0x7e4ab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e4ab8: mov             x1, x0
    // 0x7e4abc: ldur            x0, [fp, #-0x60]
    // 0x7e4ac0: StoreField: r0->field_3b = r1
    //     0x7e4ac0: stur            w1, [x0, #0x3b]
    // 0x7e4ac4: r3 = false
    //     0x7e4ac4: add             x3, NULL, #0x30  ; false
    // 0x7e4ac8: StoreField: r0->field_4f = r3
    //     0x7e4ac8: stur            w3, [x0, #0x4f]
    // 0x7e4acc: r1 = Instance_BoxConstraints
    //     0x7e4acc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c470] Obj!BoxConstraints@a0b3f1
    //     0x7e4ad0: ldr             x1, [x1, #0x470]
    // 0x7e4ad4: StoreField: r0->field_5b = r1
    //     0x7e4ad4: stur            w1, [x0, #0x5b]
    // 0x7e4ad8: r1 = Instance_Icon
    //     0x7e4ad8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c488] Obj!Icon@a1f0f1
    //     0x7e4adc: ldr             x1, [x1, #0x488]
    // 0x7e4ae0: StoreField: r0->field_1f = r1
    //     0x7e4ae0: stur            w1, [x0, #0x1f]
    // 0x7e4ae4: r1 = Instance__IconButtonVariant
    //     0x7e4ae4: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7e4ae8: ldr             x1, [x1, #0x1b8]
    // 0x7e4aec: StoreField: r0->field_6f = r1
    //     0x7e4aec: stur            w1, [x0, #0x6f]
    // 0x7e4af0: r1 = Null
    //     0x7e4af0: mov             x1, NULL
    // 0x7e4af4: r2 = 6
    //     0x7e4af4: mov             x2, #6
    // 0x7e4af8: r0 = AllocateArray()
    //     0x7e4af8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4afc: mov             x2, x0
    // 0x7e4b00: ldur            x0, [fp, #-0x50]
    // 0x7e4b04: stur            x2, [fp, #-0x58]
    // 0x7e4b08: StoreField: r2->field_f = r0
    //     0x7e4b08: stur            w0, [x2, #0xf]
    // 0x7e4b0c: r16 = Instance_SizedBox
    //     0x7e4b0c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7e4b10: ldr             x16, [x16, #0x368]
    // 0x7e4b14: StoreField: r2->field_13 = r16
    //     0x7e4b14: stur            w16, [x2, #0x13]
    // 0x7e4b18: ldur            x0, [fp, #-0x60]
    // 0x7e4b1c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e4b1c: stur            w0, [x2, #0x17]
    // 0x7e4b20: r1 = <Widget>
    //     0x7e4b20: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e4b24: r0 = AllocateGrowableArray()
    //     0x7e4b24: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4b28: mov             x1, x0
    // 0x7e4b2c: ldur            x0, [fp, #-0x58]
    // 0x7e4b30: stur            x1, [fp, #-0x50]
    // 0x7e4b34: StoreField: r1->field_f = r0
    //     0x7e4b34: stur            w0, [x1, #0xf]
    // 0x7e4b38: r2 = 6
    //     0x7e4b38: mov             x2, #6
    // 0x7e4b3c: StoreField: r1->field_b = r2
    //     0x7e4b3c: stur            w2, [x1, #0xb]
    // 0x7e4b40: r0 = Row()
    //     0x7e4b40: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e4b44: mov             x3, x0
    // 0x7e4b48: r0 = Instance_Axis
    //     0x7e4b48: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e4b4c: stur            x3, [fp, #-0x58]
    // 0x7e4b50: StoreField: r3->field_f = r0
    //     0x7e4b50: stur            w0, [x3, #0xf]
    // 0x7e4b54: r4 = Instance_MainAxisAlignment
    //     0x7e4b54: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e4b58: ldr             x4, [x4, #0x230]
    // 0x7e4b5c: StoreField: r3->field_13 = r4
    //     0x7e4b5c: stur            w4, [x3, #0x13]
    // 0x7e4b60: r5 = Instance_MainAxisSize
    //     0x7e4b60: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e4b64: ldr             x5, [x5, #0xb60]
    // 0x7e4b68: ArrayStore: r3[0] = r5  ; List_4
    //     0x7e4b68: stur            w5, [x3, #0x17]
    // 0x7e4b6c: r6 = Instance_CrossAxisAlignment
    //     0x7e4b6c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e4b70: ldr             x6, [x6, #0x338]
    // 0x7e4b74: StoreField: r3->field_1b = r6
    //     0x7e4b74: stur            w6, [x3, #0x1b]
    // 0x7e4b78: r7 = Instance_VerticalDirection
    //     0x7e4b78: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e4b7c: ldr             x7, [x7, #0x340]
    // 0x7e4b80: StoreField: r3->field_23 = r7
    //     0x7e4b80: stur            w7, [x3, #0x23]
    // 0x7e4b84: r8 = Instance_Clip
    //     0x7e4b84: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4b88: ldr             x8, [x8, #0x348]
    // 0x7e4b8c: StoreField: r3->field_2b = r8
    //     0x7e4b8c: stur            w8, [x3, #0x2b]
    // 0x7e4b90: StoreField: r3->field_2f = rZR
    //     0x7e4b90: stur            xzr, [x3, #0x2f]
    // 0x7e4b94: ldur            x1, [fp, #-0x50]
    // 0x7e4b98: StoreField: r3->field_b = r1
    //     0x7e4b98: stur            w1, [x3, #0xb]
    // 0x7e4b9c: r1 = Null
    //     0x7e4b9c: mov             x1, NULL
    // 0x7e4ba0: r2 = 4
    //     0x7e4ba0: mov             x2, #4
    // 0x7e4ba4: r0 = AllocateArray()
    //     0x7e4ba4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4ba8: mov             x2, x0
    // 0x7e4bac: ldur            x0, [fp, #-0x48]
    // 0x7e4bb0: stur            x2, [fp, #-0x50]
    // 0x7e4bb4: StoreField: r2->field_f = r0
    //     0x7e4bb4: stur            w0, [x2, #0xf]
    // 0x7e4bb8: ldur            x0, [fp, #-0x58]
    // 0x7e4bbc: StoreField: r2->field_13 = r0
    //     0x7e4bbc: stur            w0, [x2, #0x13]
    // 0x7e4bc0: r1 = <Widget>
    //     0x7e4bc0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e4bc4: r0 = AllocateGrowableArray()
    //     0x7e4bc4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4bc8: mov             x1, x0
    // 0x7e4bcc: ldur            x0, [fp, #-0x50]
    // 0x7e4bd0: stur            x1, [fp, #-0x48]
    // 0x7e4bd4: StoreField: r1->field_f = r0
    //     0x7e4bd4: stur            w0, [x1, #0xf]
    // 0x7e4bd8: r2 = 4
    //     0x7e4bd8: mov             x2, #4
    // 0x7e4bdc: StoreField: r1->field_b = r2
    //     0x7e4bdc: stur            w2, [x1, #0xb]
    // 0x7e4be0: r0 = Row()
    //     0x7e4be0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e4be4: mov             x3, x0
    // 0x7e4be8: r0 = Instance_Axis
    //     0x7e4be8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e4bec: stur            x3, [fp, #-0x50]
    // 0x7e4bf0: StoreField: r3->field_f = r0
    //     0x7e4bf0: stur            w0, [x3, #0xf]
    // 0x7e4bf4: r4 = Instance_MainAxisAlignment
    //     0x7e4bf4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e4bf8: ldr             x4, [x4, #0x230]
    // 0x7e4bfc: StoreField: r3->field_13 = r4
    //     0x7e4bfc: stur            w4, [x3, #0x13]
    // 0x7e4c00: r5 = Instance_MainAxisSize
    //     0x7e4c00: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e4c04: ldr             x5, [x5, #0x330]
    // 0x7e4c08: ArrayStore: r3[0] = r5  ; List_4
    //     0x7e4c08: stur            w5, [x3, #0x17]
    // 0x7e4c0c: r6 = Instance_CrossAxisAlignment
    //     0x7e4c0c: add             x6, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e4c10: ldr             x6, [x6, #0x238]
    // 0x7e4c14: StoreField: r3->field_1b = r6
    //     0x7e4c14: stur            w6, [x3, #0x1b]
    // 0x7e4c18: r7 = Instance_VerticalDirection
    //     0x7e4c18: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e4c1c: ldr             x7, [x7, #0x340]
    // 0x7e4c20: StoreField: r3->field_23 = r7
    //     0x7e4c20: stur            w7, [x3, #0x23]
    // 0x7e4c24: r8 = Instance_Clip
    //     0x7e4c24: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4c28: ldr             x8, [x8, #0x348]
    // 0x7e4c2c: StoreField: r3->field_2b = r8
    //     0x7e4c2c: stur            w8, [x3, #0x2b]
    // 0x7e4c30: StoreField: r3->field_2f = rZR
    //     0x7e4c30: stur            xzr, [x3, #0x2f]
    // 0x7e4c34: ldur            x1, [fp, #-0x48]
    // 0x7e4c38: StoreField: r3->field_b = r1
    //     0x7e4c38: stur            w1, [x3, #0xb]
    // 0x7e4c3c: r1 = _ConstMap len:12
    //     0x7e4c3c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4c40: r2 = 200
    //     0x7e4c40: mov             x2, #0xc8
    // 0x7e4c44: r0 = []()
    //     0x7e4c44: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4c48: stur            x0, [fp, #-0x48]
    // 0x7e4c4c: cmp             w0, NULL
    // 0x7e4c50: b.eq            #0x7e5374
    // 0x7e4c54: r0 = Radius()
    //     0x7e4c54: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e4c58: d0 = 999.000000
    //     0x7e4c58: add             x17, PP, #0x14, lsl #12  ; [pp+0x14f50] IMM: double(999) from 0x408f380000000000
    //     0x7e4c5c: ldr             d0, [x17, #0xf50]
    // 0x7e4c60: stur            x0, [fp, #-0x58]
    // 0x7e4c64: StoreField: r0->field_7 = d0
    //     0x7e4c64: stur            d0, [x0, #7]
    // 0x7e4c68: StoreField: r0->field_f = d0
    //     0x7e4c68: stur            d0, [x0, #0xf]
    // 0x7e4c6c: r0 = BorderRadius()
    //     0x7e4c6c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e4c70: mov             x1, x0
    // 0x7e4c74: ldur            x0, [fp, #-0x58]
    // 0x7e4c78: stur            x1, [fp, #-0x60]
    // 0x7e4c7c: StoreField: r1->field_7 = r0
    //     0x7e4c7c: stur            w0, [x1, #7]
    // 0x7e4c80: StoreField: r1->field_b = r0
    //     0x7e4c80: stur            w0, [x1, #0xb]
    // 0x7e4c84: StoreField: r1->field_f = r0
    //     0x7e4c84: stur            w0, [x1, #0xf]
    // 0x7e4c88: StoreField: r1->field_13 = r0
    //     0x7e4c88: stur            w0, [x1, #0x13]
    // 0x7e4c8c: r0 = BoxDecoration()
    //     0x7e4c8c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e4c90: mov             x3, x0
    // 0x7e4c94: ldur            x0, [fp, #-0x48]
    // 0x7e4c98: stur            x3, [fp, #-0x58]
    // 0x7e4c9c: StoreField: r3->field_7 = r0
    //     0x7e4c9c: stur            w0, [x3, #7]
    // 0x7e4ca0: ldur            x0, [fp, #-0x60]
    // 0x7e4ca4: StoreField: r3->field_13 = r0
    //     0x7e4ca4: stur            w0, [x3, #0x13]
    // 0x7e4ca8: r0 = Instance_BoxShape
    //     0x7e4ca8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e4cac: ldr             x0, [x0, #0x1c8]
    // 0x7e4cb0: StoreField: r3->field_23 = r0
    //     0x7e4cb0: stur            w0, [x3, #0x23]
    // 0x7e4cb4: r1 = _ConstMap len:12
    //     0x7e4cb4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4cb8: r2 = 1400
    //     0x7e4cb8: mov             x2, #0x578
    // 0x7e4cbc: r0 = []()
    //     0x7e4cbc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4cc0: stur            x0, [fp, #-0x48]
    // 0x7e4cc4: cmp             w0, NULL
    // 0x7e4cc8: b.eq            #0x7e5378
    // 0x7e4ccc: r0 = Icon()
    //     0x7e4ccc: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e4cd0: mov             x3, x0
    // 0x7e4cd4: r0 = Instance_IconData
    //     0x7e4cd4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f58] Obj!IconData@a0a6a1
    //     0x7e4cd8: ldr             x0, [x0, #0xf58]
    // 0x7e4cdc: stur            x3, [fp, #-0x60]
    // 0x7e4ce0: StoreField: r3->field_b = r0
    //     0x7e4ce0: stur            w0, [x3, #0xb]
    // 0x7e4ce4: r0 = 14.000000
    //     0x7e4ce4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7e4ce8: ldr             x0, [x0, #0x1c8]
    // 0x7e4cec: StoreField: r3->field_f = r0
    //     0x7e4cec: stur            w0, [x3, #0xf]
    // 0x7e4cf0: ldur            x0, [fp, #-0x48]
    // 0x7e4cf4: StoreField: r3->field_23 = r0
    //     0x7e4cf4: stur            w0, [x3, #0x23]
    // 0x7e4cf8: r1 = Null
    //     0x7e4cf8: mov             x1, NULL
    // 0x7e4cfc: r2 = 6
    //     0x7e4cfc: mov             x2, #6
    // 0x7e4d00: r0 = AllocateArray()
    //     0x7e4d00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4d04: mov             x1, x0
    // 0x7e4d08: ldur            x0, [fp, #-0x10]
    // 0x7e4d0c: StoreField: r1->field_f = r0
    //     0x7e4d0c: stur            w0, [x1, #0xf]
    // 0x7e4d10: r16 = " - "
    //     0x7e4d10: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x7e4d14: ldr             x16, [x16, #0x9e8]
    // 0x7e4d18: StoreField: r1->field_13 = r16
    //     0x7e4d18: stur            w16, [x1, #0x13]
    // 0x7e4d1c: ldur            x0, [fp, #-8]
    // 0x7e4d20: LoadField: r2 = r0->field_f
    //     0x7e4d20: ldur            w2, [x0, #0xf]
    // 0x7e4d24: DecompressPointer r2
    //     0x7e4d24: add             x2, x2, HEAP, lsl #32
    // 0x7e4d28: ArrayStore: r1[0] = r2  ; List_4
    //     0x7e4d28: stur            w2, [x1, #0x17]
    // 0x7e4d2c: str             x1, [SP]
    // 0x7e4d30: r0 = _interpolate()
    //     0x7e4d30: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e4d34: r1 = _ConstMap len:12
    //     0x7e4d34: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4d38: r2 = 1600
    //     0x7e4d38: mov             x2, #0x640
    // 0x7e4d3c: stur            x0, [fp, #-8]
    // 0x7e4d40: r0 = []()
    //     0x7e4d40: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4d44: stur            x0, [fp, #-0x10]
    // 0x7e4d48: cmp             w0, NULL
    // 0x7e4d4c: b.eq            #0x7e537c
    // 0x7e4d50: r0 = TextStyle()
    //     0x7e4d50: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e4d54: mov             x1, x0
    // 0x7e4d58: r0 = true
    //     0x7e4d58: add             x0, NULL, #0x20  ; true
    // 0x7e4d5c: stur            x1, [fp, #-0x48]
    // 0x7e4d60: StoreField: r1->field_7 = r0
    //     0x7e4d60: stur            w0, [x1, #7]
    // 0x7e4d64: ldur            x2, [fp, #-0x10]
    // 0x7e4d68: StoreField: r1->field_b = r2
    //     0x7e4d68: stur            w2, [x1, #0xb]
    // 0x7e4d6c: r2 = 12.000000
    //     0x7e4d6c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7e4d70: ldr             x2, [x2, #0xae0]
    // 0x7e4d74: StoreField: r1->field_1f = r2
    //     0x7e4d74: stur            w2, [x1, #0x1f]
    // 0x7e4d78: r3 = Instance_FontWeight
    //     0x7e4d78: add             x3, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7e4d7c: ldr             x3, [x3, #0x990]
    // 0x7e4d80: StoreField: r1->field_23 = r3
    //     0x7e4d80: stur            w3, [x1, #0x23]
    // 0x7e4d84: r0 = Text()
    //     0x7e4d84: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e4d88: mov             x3, x0
    // 0x7e4d8c: ldur            x0, [fp, #-8]
    // 0x7e4d90: stur            x3, [fp, #-0x10]
    // 0x7e4d94: StoreField: r3->field_b = r0
    //     0x7e4d94: stur            w0, [x3, #0xb]
    // 0x7e4d98: ldur            x0, [fp, #-0x48]
    // 0x7e4d9c: StoreField: r3->field_13 = r0
    //     0x7e4d9c: stur            w0, [x3, #0x13]
    // 0x7e4da0: r1 = Null
    //     0x7e4da0: mov             x1, NULL
    // 0x7e4da4: r2 = 6
    //     0x7e4da4: mov             x2, #6
    // 0x7e4da8: r0 = AllocateArray()
    //     0x7e4da8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4dac: mov             x2, x0
    // 0x7e4db0: ldur            x0, [fp, #-0x60]
    // 0x7e4db4: stur            x2, [fp, #-8]
    // 0x7e4db8: StoreField: r2->field_f = r0
    //     0x7e4db8: stur            w0, [x2, #0xf]
    // 0x7e4dbc: r16 = Instance_SizedBox
    //     0x7e4dbc: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c100] Obj!SizedBox@a1fbf1
    //     0x7e4dc0: ldr             x16, [x16, #0x100]
    // 0x7e4dc4: StoreField: r2->field_13 = r16
    //     0x7e4dc4: stur            w16, [x2, #0x13]
    // 0x7e4dc8: ldur            x0, [fp, #-0x10]
    // 0x7e4dcc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e4dcc: stur            w0, [x2, #0x17]
    // 0x7e4dd0: r1 = <Widget>
    //     0x7e4dd0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e4dd4: r0 = AllocateGrowableArray()
    //     0x7e4dd4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4dd8: mov             x1, x0
    // 0x7e4ddc: ldur            x0, [fp, #-8]
    // 0x7e4de0: stur            x1, [fp, #-0x10]
    // 0x7e4de4: StoreField: r1->field_f = r0
    //     0x7e4de4: stur            w0, [x1, #0xf]
    // 0x7e4de8: r2 = 6
    //     0x7e4de8: mov             x2, #6
    // 0x7e4dec: StoreField: r1->field_b = r2
    //     0x7e4dec: stur            w2, [x1, #0xb]
    // 0x7e4df0: r0 = Row()
    //     0x7e4df0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e4df4: mov             x1, x0
    // 0x7e4df8: r0 = Instance_Axis
    //     0x7e4df8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e4dfc: stur            x1, [fp, #-8]
    // 0x7e4e00: StoreField: r1->field_f = r0
    //     0x7e4e00: stur            w0, [x1, #0xf]
    // 0x7e4e04: r2 = Instance_MainAxisAlignment
    //     0x7e4e04: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e4e08: ldr             x2, [x2, #0x230]
    // 0x7e4e0c: StoreField: r1->field_13 = r2
    //     0x7e4e0c: stur            w2, [x1, #0x13]
    // 0x7e4e10: r3 = Instance_MainAxisSize
    //     0x7e4e10: add             x3, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e4e14: ldr             x3, [x3, #0xb60]
    // 0x7e4e18: ArrayStore: r1[0] = r3  ; List_4
    //     0x7e4e18: stur            w3, [x1, #0x17]
    // 0x7e4e1c: r3 = Instance_CrossAxisAlignment
    //     0x7e4e1c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e4e20: ldr             x3, [x3, #0x338]
    // 0x7e4e24: StoreField: r1->field_1b = r3
    //     0x7e4e24: stur            w3, [x1, #0x1b]
    // 0x7e4e28: r3 = Instance_VerticalDirection
    //     0x7e4e28: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e4e2c: ldr             x3, [x3, #0x340]
    // 0x7e4e30: StoreField: r1->field_23 = r3
    //     0x7e4e30: stur            w3, [x1, #0x23]
    // 0x7e4e34: r4 = Instance_Clip
    //     0x7e4e34: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4e38: ldr             x4, [x4, #0x348]
    // 0x7e4e3c: StoreField: r1->field_2b = r4
    //     0x7e4e3c: stur            w4, [x1, #0x2b]
    // 0x7e4e40: StoreField: r1->field_2f = rZR
    //     0x7e4e40: stur            xzr, [x1, #0x2f]
    // 0x7e4e44: ldur            x5, [fp, #-0x10]
    // 0x7e4e48: StoreField: r1->field_b = r5
    //     0x7e4e48: stur            w5, [x1, #0xb]
    // 0x7e4e4c: r0 = Container()
    //     0x7e4e4c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e4e50: stur            x0, [fp, #-0x10]
    // 0x7e4e54: r16 = Instance_EdgeInsets
    //     0x7e4e54: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x7e4e58: ldr             x16, [x16, #0xf70]
    // 0x7e4e5c: ldur            lr, [fp, #-0x58]
    // 0x7e4e60: stp             lr, x16, [SP, #8]
    // 0x7e4e64: ldur            x16, [fp, #-8]
    // 0x7e4e68: str             x16, [SP]
    // 0x7e4e6c: mov             x1, x0
    // 0x7e4e70: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e4e70: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e4e74: ldr             x4, [x4, #0x1e8]
    // 0x7e4e78: r0 = Container()
    //     0x7e4e78: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e4e7c: ldur            x0, [fp, #-0x28]
    // 0x7e4e80: r16 = true
    //     0x7e4e80: add             x16, NULL, #0x20  ; true
    // 0x7e4e84: cmp             w0, w16
    // 0x7e4e88: b.ne            #0x7e4e98
    // 0x7e4e8c: r3 = "Yaklaşan"
    //     0x7e4e8c: add             x3, PP, #0x14, lsl #12  ; [pp+0x14f80] "Yaklaşan"
    //     0x7e4e90: ldr             x3, [x3, #0xf80]
    // 0x7e4e94: b               #0x7e4ea0
    // 0x7e4e98: r3 = "Gerçekleşti"
    //     0x7e4e98: add             x3, PP, #0x14, lsl #12  ; [pp+0x14f88] "Gerçekleşti"
    //     0x7e4e9c: ldr             x3, [x3, #0xf88]
    // 0x7e4ea0: stur            x3, [fp, #-8]
    // 0x7e4ea4: r16 = true
    //     0x7e4ea4: add             x16, NULL, #0x20  ; true
    // 0x7e4ea8: cmp             w0, w16
    // 0x7e4eac: b.ne            #0x7e4ec0
    // 0x7e4eb0: mov             x0, x3
    // 0x7e4eb4: r4 = Instance_Color
    //     0x7e4eb4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e4eb8: ldr             x4, [x4, #0xb78]
    // 0x7e4ebc: b               #0x7e4ee0
    // 0x7e4ec0: r1 = _ConstMap len:10
    //     0x7e4ec0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7e4ec4: ldr             x1, [x1, #0xf30]
    // 0x7e4ec8: r2 = 1400
    //     0x7e4ec8: mov             x2, #0x578
    // 0x7e4ecc: r0 = []()
    //     0x7e4ecc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4ed0: cmp             w0, NULL
    // 0x7e4ed4: b.eq            #0x7e5380
    // 0x7e4ed8: mov             x4, x0
    // 0x7e4edc: ldur            x0, [fp, #-8]
    // 0x7e4ee0: ldur            x3, [fp, #-0x20]
    // 0x7e4ee4: ldur            x2, [fp, #-0x50]
    // 0x7e4ee8: ldur            x1, [fp, #-0x10]
    // 0x7e4eec: stur            x4, [fp, #-0x28]
    // 0x7e4ef0: r0 = TextStyle()
    //     0x7e4ef0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e4ef4: mov             x1, x0
    // 0x7e4ef8: r0 = true
    //     0x7e4ef8: add             x0, NULL, #0x20  ; true
    // 0x7e4efc: stur            x1, [fp, #-0x48]
    // 0x7e4f00: StoreField: r1->field_7 = r0
    //     0x7e4f00: stur            w0, [x1, #7]
    // 0x7e4f04: ldur            x2, [fp, #-0x28]
    // 0x7e4f08: StoreField: r1->field_b = r2
    //     0x7e4f08: stur            w2, [x1, #0xb]
    // 0x7e4f0c: r2 = 12.000000
    //     0x7e4f0c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7e4f10: ldr             x2, [x2, #0xae0]
    // 0x7e4f14: StoreField: r1->field_1f = r2
    //     0x7e4f14: stur            w2, [x1, #0x1f]
    // 0x7e4f18: r2 = Instance_FontWeight
    //     0x7e4f18: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7e4f1c: ldr             x2, [x2, #0x990]
    // 0x7e4f20: StoreField: r1->field_23 = r2
    //     0x7e4f20: stur            w2, [x1, #0x23]
    // 0x7e4f24: r0 = Text()
    //     0x7e4f24: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e4f28: mov             x3, x0
    // 0x7e4f2c: ldur            x0, [fp, #-8]
    // 0x7e4f30: stur            x3, [fp, #-0x28]
    // 0x7e4f34: StoreField: r3->field_b = r0
    //     0x7e4f34: stur            w0, [x3, #0xb]
    // 0x7e4f38: ldur            x0, [fp, #-0x48]
    // 0x7e4f3c: StoreField: r3->field_13 = r0
    //     0x7e4f3c: stur            w0, [x3, #0x13]
    // 0x7e4f40: r1 = Null
    //     0x7e4f40: mov             x1, NULL
    // 0x7e4f44: r2 = 4
    //     0x7e4f44: mov             x2, #4
    // 0x7e4f48: r0 = AllocateArray()
    //     0x7e4f48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4f4c: mov             x2, x0
    // 0x7e4f50: ldur            x0, [fp, #-0x10]
    // 0x7e4f54: stur            x2, [fp, #-8]
    // 0x7e4f58: StoreField: r2->field_f = r0
    //     0x7e4f58: stur            w0, [x2, #0xf]
    // 0x7e4f5c: ldur            x0, [fp, #-0x28]
    // 0x7e4f60: StoreField: r2->field_13 = r0
    //     0x7e4f60: stur            w0, [x2, #0x13]
    // 0x7e4f64: r1 = <Widget>
    //     0x7e4f64: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e4f68: r0 = AllocateGrowableArray()
    //     0x7e4f68: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4f6c: mov             x1, x0
    // 0x7e4f70: ldur            x0, [fp, #-8]
    // 0x7e4f74: stur            x1, [fp, #-0x10]
    // 0x7e4f78: StoreField: r1->field_f = r0
    //     0x7e4f78: stur            w0, [x1, #0xf]
    // 0x7e4f7c: r2 = 4
    //     0x7e4f7c: mov             x2, #4
    // 0x7e4f80: StoreField: r1->field_b = r2
    //     0x7e4f80: stur            w2, [x1, #0xb]
    // 0x7e4f84: r0 = Row()
    //     0x7e4f84: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e4f88: mov             x3, x0
    // 0x7e4f8c: r0 = Instance_Axis
    //     0x7e4f8c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e4f90: stur            x3, [fp, #-8]
    // 0x7e4f94: StoreField: r3->field_f = r0
    //     0x7e4f94: stur            w0, [x3, #0xf]
    // 0x7e4f98: r1 = Instance_MainAxisAlignment
    //     0x7e4f98: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x7e4f9c: ldr             x1, [x1, #0xd20]
    // 0x7e4fa0: StoreField: r3->field_13 = r1
    //     0x7e4fa0: stur            w1, [x3, #0x13]
    // 0x7e4fa4: r4 = Instance_MainAxisSize
    //     0x7e4fa4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e4fa8: ldr             x4, [x4, #0x330]
    // 0x7e4fac: ArrayStore: r3[0] = r4  ; List_4
    //     0x7e4fac: stur            w4, [x3, #0x17]
    // 0x7e4fb0: r5 = Instance_CrossAxisAlignment
    //     0x7e4fb0: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e4fb4: ldr             x5, [x5, #0x238]
    // 0x7e4fb8: StoreField: r3->field_1b = r5
    //     0x7e4fb8: stur            w5, [x3, #0x1b]
    // 0x7e4fbc: r6 = Instance_VerticalDirection
    //     0x7e4fbc: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e4fc0: ldr             x6, [x6, #0x340]
    // 0x7e4fc4: StoreField: r3->field_23 = r6
    //     0x7e4fc4: stur            w6, [x3, #0x23]
    // 0x7e4fc8: r7 = Instance_Clip
    //     0x7e4fc8: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4fcc: ldr             x7, [x7, #0x348]
    // 0x7e4fd0: StoreField: r3->field_2b = r7
    //     0x7e4fd0: stur            w7, [x3, #0x2b]
    // 0x7e4fd4: StoreField: r3->field_2f = rZR
    //     0x7e4fd4: stur            xzr, [x3, #0x2f]
    // 0x7e4fd8: ldur            x1, [fp, #-0x10]
    // 0x7e4fdc: StoreField: r3->field_b = r1
    //     0x7e4fdc: stur            w1, [x3, #0xb]
    // 0x7e4fe0: r1 = Null
    //     0x7e4fe0: mov             x1, NULL
    // 0x7e4fe4: r2 = 6
    //     0x7e4fe4: mov             x2, #6
    // 0x7e4fe8: r0 = AllocateArray()
    //     0x7e4fe8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4fec: mov             x2, x0
    // 0x7e4ff0: ldur            x0, [fp, #-0x50]
    // 0x7e4ff4: stur            x2, [fp, #-0x10]
    // 0x7e4ff8: StoreField: r2->field_f = r0
    //     0x7e4ff8: stur            w0, [x2, #0xf]
    // 0x7e4ffc: r16 = Instance_SizedBox
    //     0x7e4ffc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7e5000: ldr             x16, [x16, #0x318]
    // 0x7e5004: StoreField: r2->field_13 = r16
    //     0x7e5004: stur            w16, [x2, #0x13]
    // 0x7e5008: ldur            x0, [fp, #-8]
    // 0x7e500c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e500c: stur            w0, [x2, #0x17]
    // 0x7e5010: r1 = <Widget>
    //     0x7e5010: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e5014: r0 = AllocateGrowableArray()
    //     0x7e5014: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e5018: mov             x3, x0
    // 0x7e501c: ldur            x0, [fp, #-0x10]
    // 0x7e5020: stur            x3, [fp, #-0x28]
    // 0x7e5024: StoreField: r3->field_f = r0
    //     0x7e5024: stur            w0, [x3, #0xf]
    // 0x7e5028: r0 = 6
    //     0x7e5028: mov             x0, #6
    // 0x7e502c: StoreField: r3->field_b = r0
    //     0x7e502c: stur            w0, [x3, #0xb]
    // 0x7e5030: ldur            x1, [fp, #-0x20]
    // 0x7e5034: LoadField: r4 = r1->field_f
    //     0x7e5034: ldur            w4, [x1, #0xf]
    // 0x7e5038: DecompressPointer r4
    //     0x7e5038: add             x4, x4, HEAP, lsl #32
    // 0x7e503c: stur            x4, [fp, #-8]
    // 0x7e5040: cmp             w4, NULL
    // 0x7e5044: b.eq            #0x7e5110
    // 0x7e5048: r1 = _ConstMap len:12
    //     0x7e5048: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e504c: r2 = 1400
    //     0x7e504c: mov             x2, #0x578
    // 0x7e5050: r0 = []()
    //     0x7e5050: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e5054: stur            x0, [fp, #-0x10]
    // 0x7e5058: cmp             w0, NULL
    // 0x7e505c: b.eq            #0x7e5384
    // 0x7e5060: r0 = TextStyle()
    //     0x7e5060: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e5064: mov             x1, x0
    // 0x7e5068: r0 = true
    //     0x7e5068: add             x0, NULL, #0x20  ; true
    // 0x7e506c: stur            x1, [fp, #-0x20]
    // 0x7e5070: StoreField: r1->field_7 = r0
    //     0x7e5070: stur            w0, [x1, #7]
    // 0x7e5074: ldur            x2, [fp, #-0x10]
    // 0x7e5078: StoreField: r1->field_b = r2
    //     0x7e5078: stur            w2, [x1, #0xb]
    // 0x7e507c: r2 = 13.000000
    //     0x7e507c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e5080: ldr             x2, [x2, #0xb00]
    // 0x7e5084: StoreField: r1->field_1f = r2
    //     0x7e5084: stur            w2, [x1, #0x1f]
    // 0x7e5088: r2 = 1.450000
    //     0x7e5088: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f90] 1.45
    //     0x7e508c: ldr             x2, [x2, #0xf90]
    // 0x7e5090: StoreField: r1->field_37 = r2
    //     0x7e5090: stur            w2, [x1, #0x37]
    // 0x7e5094: r0 = Text()
    //     0x7e5094: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e5098: mov             x3, x0
    // 0x7e509c: ldur            x0, [fp, #-8]
    // 0x7e50a0: stur            x3, [fp, #-0x10]
    // 0x7e50a4: StoreField: r3->field_b = r0
    //     0x7e50a4: stur            w0, [x3, #0xb]
    // 0x7e50a8: ldur            x0, [fp, #-0x20]
    // 0x7e50ac: StoreField: r3->field_13 = r0
    //     0x7e50ac: stur            w0, [x3, #0x13]
    // 0x7e50b0: r0 = Instance_TextOverflow
    //     0x7e50b0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7e50b4: ldr             x0, [x0, #0x68]
    // 0x7e50b8: StoreField: r3->field_2b = r0
    //     0x7e50b8: stur            w0, [x3, #0x2b]
    // 0x7e50bc: r0 = 6
    //     0x7e50bc: mov             x0, #6
    // 0x7e50c0: StoreField: r3->field_37 = r0
    //     0x7e50c0: stur            w0, [x3, #0x37]
    // 0x7e50c4: r1 = Null
    //     0x7e50c4: mov             x1, NULL
    // 0x7e50c8: r2 = 4
    //     0x7e50c8: mov             x2, #4
    // 0x7e50cc: r0 = AllocateArray()
    //     0x7e50cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e50d0: stur            x0, [fp, #-8]
    // 0x7e50d4: r16 = Instance_SizedBox
    //     0x7e50d4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7e50d8: ldr             x16, [x16, #0x318]
    // 0x7e50dc: StoreField: r0->field_f = r16
    //     0x7e50dc: stur            w16, [x0, #0xf]
    // 0x7e50e0: ldur            x1, [fp, #-0x10]
    // 0x7e50e4: StoreField: r0->field_13 = r1
    //     0x7e50e4: stur            w1, [x0, #0x13]
    // 0x7e50e8: r1 = <Widget>
    //     0x7e50e8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e50ec: r0 = AllocateGrowableArray()
    //     0x7e50ec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e50f0: mov             x1, x0
    // 0x7e50f4: ldur            x0, [fp, #-8]
    // 0x7e50f8: StoreField: r1->field_f = r0
    //     0x7e50f8: stur            w0, [x1, #0xf]
    // 0x7e50fc: r0 = 4
    //     0x7e50fc: mov             x0, #4
    // 0x7e5100: StoreField: r1->field_b = r0
    //     0x7e5100: stur            w0, [x1, #0xb]
    // 0x7e5104: mov             x2, x1
    // 0x7e5108: ldur            x1, [fp, #-0x28]
    // 0x7e510c: r0 = addAll()
    //     0x7e510c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7e5110: ldur            x2, [fp, #-0x38]
    // 0x7e5114: ldur            x1, [fp, #-0x30]
    // 0x7e5118: ldur            x0, [fp, #-0x28]
    // 0x7e511c: r0 = Column()
    //     0x7e511c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e5120: mov             x2, x0
    // 0x7e5124: r0 = Instance_Axis
    //     0x7e5124: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e5128: stur            x2, [fp, #-8]
    // 0x7e512c: StoreField: r2->field_f = r0
    //     0x7e512c: stur            w0, [x2, #0xf]
    // 0x7e5130: r0 = Instance_MainAxisAlignment
    //     0x7e5130: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e5134: ldr             x0, [x0, #0x230]
    // 0x7e5138: StoreField: r2->field_13 = r0
    //     0x7e5138: stur            w0, [x2, #0x13]
    // 0x7e513c: r3 = Instance_MainAxisSize
    //     0x7e513c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e5140: ldr             x3, [x3, #0x330]
    // 0x7e5144: ArrayStore: r2[0] = r3  ; List_4
    //     0x7e5144: stur            w3, [x2, #0x17]
    // 0x7e5148: r4 = Instance_CrossAxisAlignment
    //     0x7e5148: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e514c: ldr             x4, [x4, #0x238]
    // 0x7e5150: StoreField: r2->field_1b = r4
    //     0x7e5150: stur            w4, [x2, #0x1b]
    // 0x7e5154: r5 = Instance_VerticalDirection
    //     0x7e5154: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e5158: ldr             x5, [x5, #0x340]
    // 0x7e515c: StoreField: r2->field_23 = r5
    //     0x7e515c: stur            w5, [x2, #0x23]
    // 0x7e5160: r6 = Instance_Clip
    //     0x7e5160: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e5164: ldr             x6, [x6, #0x348]
    // 0x7e5168: StoreField: r2->field_2b = r6
    //     0x7e5168: stur            w6, [x2, #0x2b]
    // 0x7e516c: StoreField: r2->field_2f = rZR
    //     0x7e516c: stur            xzr, [x2, #0x2f]
    // 0x7e5170: ldur            x1, [fp, #-0x28]
    // 0x7e5174: StoreField: r2->field_b = r1
    //     0x7e5174: stur            w1, [x2, #0xb]
    // 0x7e5178: r1 = <FlexParentData>
    //     0x7e5178: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e517c: ldr             x1, [x1, #0x340]
    // 0x7e5180: r0 = Expanded()
    //     0x7e5180: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e5184: mov             x3, x0
    // 0x7e5188: r0 = 1
    //     0x7e5188: mov             x0, #1
    // 0x7e518c: stur            x3, [fp, #-0x10]
    // 0x7e5190: StoreField: r3->field_13 = r0
    //     0x7e5190: stur            x0, [x3, #0x13]
    // 0x7e5194: r0 = Instance_FlexFit
    //     0x7e5194: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e5198: ldr             x0, [x0, #0x348]
    // 0x7e519c: StoreField: r3->field_1b = r0
    //     0x7e519c: stur            w0, [x3, #0x1b]
    // 0x7e51a0: ldur            x0, [fp, #-8]
    // 0x7e51a4: StoreField: r3->field_b = r0
    //     0x7e51a4: stur            w0, [x3, #0xb]
    // 0x7e51a8: r1 = Null
    //     0x7e51a8: mov             x1, NULL
    // 0x7e51ac: r2 = 6
    //     0x7e51ac: mov             x2, #6
    // 0x7e51b0: r0 = AllocateArray()
    //     0x7e51b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e51b4: mov             x2, x0
    // 0x7e51b8: ldur            x0, [fp, #-0x30]
    // 0x7e51bc: stur            x2, [fp, #-8]
    // 0x7e51c0: StoreField: r2->field_f = r0
    //     0x7e51c0: stur            w0, [x2, #0xf]
    // 0x7e51c4: r16 = Instance_SizedBox
    //     0x7e51c4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e51c8: ldr             x16, [x16, #0x360]
    // 0x7e51cc: StoreField: r2->field_13 = r16
    //     0x7e51cc: stur            w16, [x2, #0x13]
    // 0x7e51d0: ldur            x0, [fp, #-0x10]
    // 0x7e51d4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e51d4: stur            w0, [x2, #0x17]
    // 0x7e51d8: r1 = <Widget>
    //     0x7e51d8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e51dc: r0 = AllocateGrowableArray()
    //     0x7e51dc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e51e0: mov             x1, x0
    // 0x7e51e4: ldur            x0, [fp, #-8]
    // 0x7e51e8: stur            x1, [fp, #-0x10]
    // 0x7e51ec: StoreField: r1->field_f = r0
    //     0x7e51ec: stur            w0, [x1, #0xf]
    // 0x7e51f0: r0 = 6
    //     0x7e51f0: mov             x0, #6
    // 0x7e51f4: StoreField: r1->field_b = r0
    //     0x7e51f4: stur            w0, [x1, #0xb]
    // 0x7e51f8: r0 = Row()
    //     0x7e51f8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e51fc: mov             x1, x0
    // 0x7e5200: r0 = Instance_Axis
    //     0x7e5200: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e5204: stur            x1, [fp, #-8]
    // 0x7e5208: StoreField: r1->field_f = r0
    //     0x7e5208: stur            w0, [x1, #0xf]
    // 0x7e520c: r0 = Instance_MainAxisAlignment
    //     0x7e520c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e5210: ldr             x0, [x0, #0x230]
    // 0x7e5214: StoreField: r1->field_13 = r0
    //     0x7e5214: stur            w0, [x1, #0x13]
    // 0x7e5218: r0 = Instance_MainAxisSize
    //     0x7e5218: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e521c: ldr             x0, [x0, #0x330]
    // 0x7e5220: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e5220: stur            w0, [x1, #0x17]
    // 0x7e5224: r0 = Instance_CrossAxisAlignment
    //     0x7e5224: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e5228: ldr             x0, [x0, #0x238]
    // 0x7e522c: StoreField: r1->field_1b = r0
    //     0x7e522c: stur            w0, [x1, #0x1b]
    // 0x7e5230: r0 = Instance_VerticalDirection
    //     0x7e5230: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e5234: ldr             x0, [x0, #0x340]
    // 0x7e5238: StoreField: r1->field_23 = r0
    //     0x7e5238: stur            w0, [x1, #0x23]
    // 0x7e523c: r0 = Instance_Clip
    //     0x7e523c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e5240: ldr             x0, [x0, #0x348]
    // 0x7e5244: StoreField: r1->field_2b = r0
    //     0x7e5244: stur            w0, [x1, #0x2b]
    // 0x7e5248: StoreField: r1->field_2f = rZR
    //     0x7e5248: stur            xzr, [x1, #0x2f]
    // 0x7e524c: ldur            x2, [fp, #-0x10]
    // 0x7e5250: StoreField: r1->field_b = r2
    //     0x7e5250: stur            w2, [x1, #0xb]
    // 0x7e5254: r0 = Padding()
    //     0x7e5254: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7e5258: mov             x1, x0
    // 0x7e525c: r0 = Instance_EdgeInsets
    //     0x7e525c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e5260: ldr             x0, [x0, #0x240]
    // 0x7e5264: stur            x1, [fp, #-0x10]
    // 0x7e5268: StoreField: r1->field_f = r0
    //     0x7e5268: stur            w0, [x1, #0xf]
    // 0x7e526c: ldur            x0, [fp, #-8]
    // 0x7e5270: StoreField: r1->field_b = r0
    //     0x7e5270: stur            w0, [x1, #0xb]
    // 0x7e5274: r0 = InkWell()
    //     0x7e5274: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7e5278: mov             x3, x0
    // 0x7e527c: ldur            x0, [fp, #-0x10]
    // 0x7e5280: stur            x3, [fp, #-8]
    // 0x7e5284: StoreField: r3->field_b = r0
    //     0x7e5284: stur            w0, [x3, #0xb]
    // 0x7e5288: ldur            x2, [fp, #-0x18]
    // 0x7e528c: r1 = Function '<anonymous closure>':.
    //     0x7e528c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c490] AnonymousClosure: (0x7e5388), in [package:umrem_demo/features/admin/widgets/events/event_card.dart] EventCard::build (0x7e46cc)
    //     0x7e5290: ldr             x1, [x1, #0x490]
    // 0x7e5294: r0 = AllocateClosure()
    //     0x7e5294: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e5298: mov             x1, x0
    // 0x7e529c: ldur            x0, [fp, #-8]
    // 0x7e52a0: StoreField: r0->field_f = r1
    //     0x7e52a0: stur            w1, [x0, #0xf]
    // 0x7e52a4: r1 = true
    //     0x7e52a4: add             x1, NULL, #0x20  ; true
    // 0x7e52a8: StoreField: r0->field_47 = r1
    //     0x7e52a8: stur            w1, [x0, #0x47]
    // 0x7e52ac: r2 = Instance_BoxShape
    //     0x7e52ac: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e52b0: ldr             x2, [x2, #0x1c8]
    // 0x7e52b4: StoreField: r0->field_4b = r2
    //     0x7e52b4: stur            w2, [x0, #0x4b]
    // 0x7e52b8: ldur            x2, [fp, #-0x38]
    // 0x7e52bc: StoreField: r0->field_53 = r2
    //     0x7e52bc: stur            w2, [x0, #0x53]
    // 0x7e52c0: StoreField: r0->field_73 = r1
    //     0x7e52c0: stur            w1, [x0, #0x73]
    // 0x7e52c4: r2 = false
    //     0x7e52c4: add             x2, NULL, #0x30  ; false
    // 0x7e52c8: StoreField: r0->field_77 = r2
    //     0x7e52c8: stur            w2, [x0, #0x77]
    // 0x7e52cc: StoreField: r0->field_87 = r1
    //     0x7e52cc: stur            w1, [x0, #0x87]
    // 0x7e52d0: StoreField: r0->field_7f = r2
    //     0x7e52d0: stur            w2, [x0, #0x7f]
    // 0x7e52d4: r0 = Material()
    //     0x7e52d4: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x7e52d8: mov             x1, x0
    // 0x7e52dc: r0 = Instance_MaterialType
    //     0x7e52dc: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x7e52e0: ldr             x0, [x0, #0xfa0]
    // 0x7e52e4: stur            x1, [fp, #-0x10]
    // 0x7e52e8: StoreField: r1->field_f = r0
    //     0x7e52e8: stur            w0, [x1, #0xf]
    // 0x7e52ec: ArrayStore: r1[0] = rZR  ; List_8
    //     0x7e52ec: stur            xzr, [x1, #0x17]
    // 0x7e52f0: r0 = Instance_Color
    //     0x7e52f0: add             x0, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7e52f4: ldr             x0, [x0, #0x860]
    // 0x7e52f8: StoreField: r1->field_1f = r0
    //     0x7e52f8: stur            w0, [x1, #0x1f]
    // 0x7e52fc: r0 = true
    //     0x7e52fc: add             x0, NULL, #0x20  ; true
    // 0x7e5300: StoreField: r1->field_33 = r0
    //     0x7e5300: stur            w0, [x1, #0x33]
    // 0x7e5304: r0 = Instance_Clip
    //     0x7e5304: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e5308: ldr             x0, [x0, #0x348]
    // 0x7e530c: StoreField: r1->field_37 = r0
    //     0x7e530c: stur            w0, [x1, #0x37]
    // 0x7e5310: r0 = Instance_Duration
    //     0x7e5310: add             x0, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x7e5314: ldr             x0, [x0, #0x2c8]
    // 0x7e5318: StoreField: r1->field_3b = r0
    //     0x7e5318: stur            w0, [x1, #0x3b]
    // 0x7e531c: ldur            x0, [fp, #-8]
    // 0x7e5320: StoreField: r1->field_b = r0
    //     0x7e5320: stur            w0, [x1, #0xb]
    // 0x7e5324: r0 = false
    //     0x7e5324: add             x0, NULL, #0x30  ; false
    // 0x7e5328: StoreField: r1->field_13 = r0
    //     0x7e5328: stur            w0, [x1, #0x13]
    // 0x7e532c: r0 = Container()
    //     0x7e532c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e5330: stur            x0, [fp, #-8]
    // 0x7e5334: ldur            x16, [fp, #-0x40]
    // 0x7e5338: ldur            lr, [fp, #-0x10]
    // 0x7e533c: stp             lr, x16, [SP]
    // 0x7e5340: mov             x1, x0
    // 0x7e5344: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x7e5344: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x7e5348: ldr             x4, [x4, #0xfa8]
    // 0x7e534c: r0 = Container()
    //     0x7e534c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e5350: ldur            x0, [fp, #-8]
    // 0x7e5354: LeaveFrame
    //     0x7e5354: mov             SP, fp
    //     0x7e5358: ldp             fp, lr, [SP], #0x10
    // 0x7e535c: ret
    //     0x7e535c: ret             
    // 0x7e5360: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5360: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5364: b               #0x7e46ec
    // 0x7e5368: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5368: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e536c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e536c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5370: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5370: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5374: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5374: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5378: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5378: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e537c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e537c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5380: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5380: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5384: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5384: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e5388, size: 0x78
    // 0x7e5388: EnterFrame
    //     0x7e5388: stp             fp, lr, [SP, #-0x10]!
    //     0x7e538c: mov             fp, SP
    // 0x7e5390: ldr             x0, [fp, #0x10]
    // 0x7e5394: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e5394: ldur            w1, [x0, #0x17]
    // 0x7e5398: DecompressPointer r1
    //     0x7e5398: add             x1, x1, HEAP, lsl #32
    // 0x7e539c: CheckStackOverflow
    //     0x7e539c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e53a0: cmp             SP, x16
    //     0x7e53a4: b.ls            #0x7e53f8
    // 0x7e53a8: LoadField: r0 = r1->field_f
    //     0x7e53a8: ldur            w0, [x1, #0xf]
    // 0x7e53ac: DecompressPointer r0
    //     0x7e53ac: add             x0, x0, HEAP, lsl #32
    // 0x7e53b0: LoadField: r2 = r0->field_b
    //     0x7e53b0: ldur            w2, [x0, #0xb]
    // 0x7e53b4: DecompressPointer r2
    //     0x7e53b4: add             x2, x2, HEAP, lsl #32
    // 0x7e53b8: LoadField: r3 = r1->field_13
    //     0x7e53b8: ldur            w3, [x1, #0x13]
    // 0x7e53bc: DecompressPointer r3
    //     0x7e53bc: add             x3, x3, HEAP, lsl #32
    // 0x7e53c0: LoadField: r1 = r0->field_13
    //     0x7e53c0: ldur            w1, [x0, #0x13]
    // 0x7e53c4: DecompressPointer r1
    //     0x7e53c4: add             x1, x1, HEAP, lsl #32
    // 0x7e53c8: mov             x16, x3
    // 0x7e53cc: mov             x3, x2
    // 0x7e53d0: mov             x2, x16
    // 0x7e53d4: mov             x16, x1
    // 0x7e53d8: mov             x1, x3
    // 0x7e53dc: mov             x3, x16
    // 0x7e53e0: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x7e53e0: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x7e53e4: r0 = showAddEditDialog()
    //     0x7e53e4: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x7e53e8: r0 = Null
    //     0x7e53e8: mov             x0, NULL
    // 0x7e53ec: LeaveFrame
    //     0x7e53ec: mov             SP, fp
    //     0x7e53f0: ldp             fp, lr, [SP], #0x10
    // 0x7e53f4: ret
    //     0x7e53f4: ret             
    // 0x7e53f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e53f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e53fc: b               #0x7e53a8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e5400, size: 0x58
    // 0x7e5400: EnterFrame
    //     0x7e5400: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5404: mov             fp, SP
    // 0x7e5408: ldr             x0, [fp, #0x10]
    // 0x7e540c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e540c: ldur            w1, [x0, #0x17]
    // 0x7e5410: DecompressPointer r1
    //     0x7e5410: add             x1, x1, HEAP, lsl #32
    // 0x7e5414: CheckStackOverflow
    //     0x7e5414: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5418: cmp             SP, x16
    //     0x7e541c: b.ls            #0x7e5450
    // 0x7e5420: LoadField: r0 = r1->field_f
    //     0x7e5420: ldur            w0, [x1, #0xf]
    // 0x7e5424: DecompressPointer r0
    //     0x7e5424: add             x0, x0, HEAP, lsl #32
    // 0x7e5428: LoadField: r2 = r0->field_b
    //     0x7e5428: ldur            w2, [x0, #0xb]
    // 0x7e542c: DecompressPointer r2
    //     0x7e542c: add             x2, x2, HEAP, lsl #32
    // 0x7e5430: LoadField: r0 = r1->field_13
    //     0x7e5430: ldur            w0, [x1, #0x13]
    // 0x7e5434: DecompressPointer r0
    //     0x7e5434: add             x0, x0, HEAP, lsl #32
    // 0x7e5438: mov             x1, x2
    // 0x7e543c: mov             x2, x0
    // 0x7e5440: r0 = showDelete()
    //     0x7e5440: bl              #0x7e5458  ; [package:umrem_demo/features/admin/widgets/events/delete_dialog.dart] ::showDelete
    // 0x7e5444: LeaveFrame
    //     0x7e5444: mov             SP, fp
    //     0x7e5448: ldp             fp, lr, [SP], #0x10
    // 0x7e544c: ret
    //     0x7e544c: ret             
    // 0x7e5450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5450: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5454: b               #0x7e5420
  }
  [closure] bool isUpcoming(dynamic, DateTime, String) {
    // ** addr: 0x7e594c, size: 0x190
    // 0x7e594c: EnterFrame
    //     0x7e594c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5950: mov             fp, SP
    // 0x7e5954: AllocStack(0x50)
    //     0x7e5954: sub             SP, SP, #0x50
    // 0x7e5958: CheckStackOverflow
    //     0x7e5958: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e595c: cmp             SP, x16
    //     0x7e5960: b.ls            #0x7e5ac8
    // 0x7e5964: ldr             x1, [fp, #0x10]
    // 0x7e5968: r0 = parseTime()
    //     0x7e5968: bl              #0x7e5adc  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::parseTime
    // 0x7e596c: ldr             x1, [fp, #0x18]
    // 0x7e5970: stur            x0, [fp, #-8]
    // 0x7e5974: r0 = _parts()
    //     0x7e5974: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e5978: mov             x2, x0
    // 0x7e597c: LoadField: r0 = r2->field_b
    //     0x7e597c: ldur            w0, [x2, #0xb]
    // 0x7e5980: r1 = LoadInt32Instr(r0)
    //     0x7e5980: sbfx            x1, x0, #1, #0x1f
    // 0x7e5984: mov             x0, x1
    // 0x7e5988: r1 = 8
    //     0x7e5988: mov             x1, #8
    // 0x7e598c: cmp             x1, x0
    // 0x7e5990: b.hs            #0x7e5ad0
    // 0x7e5994: LoadField: r0 = r2->field_2f
    //     0x7e5994: ldur            w0, [x2, #0x2f]
    // 0x7e5998: DecompressPointer r0
    //     0x7e5998: add             x0, x0, HEAP, lsl #32
    // 0x7e599c: ldr             x1, [fp, #0x18]
    // 0x7e59a0: stur            x0, [fp, #-0x10]
    // 0x7e59a4: r0 = _parts()
    //     0x7e59a4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e59a8: mov             x2, x0
    // 0x7e59ac: LoadField: r0 = r2->field_b
    //     0x7e59ac: ldur            w0, [x2, #0xb]
    // 0x7e59b0: r1 = LoadInt32Instr(r0)
    //     0x7e59b0: sbfx            x1, x0, #1, #0x1f
    // 0x7e59b4: mov             x0, x1
    // 0x7e59b8: r1 = 7
    //     0x7e59b8: mov             x1, #7
    // 0x7e59bc: cmp             x1, x0
    // 0x7e59c0: b.hs            #0x7e5ad4
    // 0x7e59c4: LoadField: r0 = r2->field_2b
    //     0x7e59c4: ldur            w0, [x2, #0x2b]
    // 0x7e59c8: DecompressPointer r0
    //     0x7e59c8: add             x0, x0, HEAP, lsl #32
    // 0x7e59cc: ldr             x1, [fp, #0x18]
    // 0x7e59d0: stur            x0, [fp, #-0x18]
    // 0x7e59d4: r0 = _parts()
    //     0x7e59d4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e59d8: mov             x2, x0
    // 0x7e59dc: LoadField: r0 = r2->field_b
    //     0x7e59dc: ldur            w0, [x2, #0xb]
    // 0x7e59e0: r1 = LoadInt32Instr(r0)
    //     0x7e59e0: sbfx            x1, x0, #1, #0x1f
    // 0x7e59e4: mov             x0, x1
    // 0x7e59e8: r1 = 5
    //     0x7e59e8: mov             x1, #5
    // 0x7e59ec: cmp             x1, x0
    // 0x7e59f0: b.hs            #0x7e5ad8
    // 0x7e59f4: LoadField: r3 = r2->field_23
    //     0x7e59f4: ldur            w3, [x2, #0x23]
    // 0x7e59f8: DecompressPointer r3
    //     0x7e59f8: add             x3, x3, HEAP, lsl #32
    // 0x7e59fc: ldur            x0, [fp, #-8]
    // 0x7e5a00: stur            x3, [fp, #-0x28]
    // 0x7e5a04: LoadField: r2 = r0->field_7
    //     0x7e5a04: ldur            x2, [x0, #7]
    // 0x7e5a08: LoadField: r4 = r0->field_f
    //     0x7e5a08: ldur            x4, [x0, #0xf]
    // 0x7e5a0c: ldur            x0, [fp, #-0x10]
    // 0x7e5a10: r5 = LoadInt32Instr(r0)
    //     0x7e5a10: sbfx            x5, x0, #1, #0x1f
    //     0x7e5a14: tbz             w0, #0, #0x7e5a1c
    //     0x7e5a18: ldur            x5, [x0, #7]
    // 0x7e5a1c: stur            x5, [fp, #-0x20]
    // 0x7e5a20: r0 = BoxInt64Instr(r2)
    //     0x7e5a20: sbfiz           x0, x2, #1, #0x1f
    //     0x7e5a24: cmp             x2, x0, asr #1
    //     0x7e5a28: b.eq            #0x7e5a34
    //     0x7e5a2c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e5a30: stur            x2, [x0, #7]
    // 0x7e5a34: mov             x2, x0
    // 0x7e5a38: stur            x2, [fp, #-0x10]
    // 0x7e5a3c: r0 = BoxInt64Instr(r4)
    //     0x7e5a3c: sbfiz           x0, x4, #1, #0x1f
    //     0x7e5a40: cmp             x4, x0, asr #1
    //     0x7e5a44: b.eq            #0x7e5a50
    //     0x7e5a48: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e5a4c: stur            x4, [x0, #7]
    // 0x7e5a50: stur            x0, [fp, #-8]
    // 0x7e5a54: r0 = DateTime()
    //     0x7e5a54: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7e5a58: stur            x0, [fp, #-0x30]
    // 0x7e5a5c: ldur            x16, [fp, #-0x18]
    // 0x7e5a60: ldur            lr, [fp, #-0x28]
    // 0x7e5a64: stp             lr, x16, [SP, #0x10]
    // 0x7e5a68: ldur            x16, [fp, #-0x10]
    // 0x7e5a6c: ldur            lr, [fp, #-8]
    // 0x7e5a70: stp             lr, x16, [SP]
    // 0x7e5a74: mov             x1, x0
    // 0x7e5a78: ldur            x2, [fp, #-0x20]
    // 0x7e5a7c: r4 = const [0, 0x6, 0x4, 0x6, null]
    //     0x7e5a7c: add             x4, PP, #0xc, lsl #12  ; [pp+0xc410] List(5) [0, 0x6, 0x4, 0x6, Null]
    //     0x7e5a80: ldr             x4, [x4, #0x410]
    // 0x7e5a84: r0 = DateTime()
    //     0x7e5a84: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x7e5a88: r0 = DateTime()
    //     0x7e5a88: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7e5a8c: mov             x1, x0
    // 0x7e5a90: r0 = false
    //     0x7e5a90: add             x0, NULL, #0x30  ; false
    // 0x7e5a94: stur            x1, [fp, #-8]
    // 0x7e5a98: StoreField: r1->field_7 = r0
    //     0x7e5a98: stur            w0, [x1, #7]
    // 0x7e5a9c: r0 = _getCurrentMicros()
    //     0x7e5a9c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7e5aa0: r1 = LoadInt32Instr(r0)
    //     0x7e5aa0: sbfx            x1, x0, #1, #0x1f
    //     0x7e5aa4: tbz             w0, #0, #0x7e5aac
    //     0x7e5aa8: ldur            x1, [x0, #7]
    // 0x7e5aac: ldur            x2, [fp, #-8]
    // 0x7e5ab0: StoreField: r2->field_b = r1
    //     0x7e5ab0: stur            x1, [x2, #0xb]
    // 0x7e5ab4: ldur            x1, [fp, #-0x30]
    // 0x7e5ab8: r0 = isAfter()
    //     0x7e5ab8: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x7e5abc: LeaveFrame
    //     0x7e5abc: mov             SP, fp
    //     0x7e5ac0: ldp             fp, lr, [SP], #0x10
    // 0x7e5ac4: ret
    //     0x7e5ac4: ret             
    // 0x7e5ac8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5ac8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5acc: b               #0x7e5964
    // 0x7e5ad0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e5ad0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e5ad4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e5ad4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e5ad8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e5ad8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

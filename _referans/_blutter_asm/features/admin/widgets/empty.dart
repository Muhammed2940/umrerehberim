// lib: , url: package:umrem_demo/features/admin/widgets/empty.dart

// class id: 1049546, size: 0x8
class :: {
}

// class id: 2920, size: 0x14, field offset: 0xc
//   const constructor, 
class EmptyCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e4080, size: 0x264
    // 0x7e4080: EnterFrame
    //     0x7e4080: stp             fp, lr, [SP, #-0x10]!
    //     0x7e4084: mov             fp, SP
    // 0x7e4088: AllocStack(0x40)
    //     0x7e4088: sub             SP, SP, #0x40
    // 0x7e408c: SetupParameters(EmptyCard this /* r1 => r1, fp-0x8 */)
    //     0x7e408c: stur            x1, [fp, #-8]
    // 0x7e4090: CheckStackOverflow
    //     0x7e4090: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e4094: cmp             SP, x16
    //     0x7e4098: b.ls            #0x7e42d4
    // 0x7e409c: r0 = Radius()
    //     0x7e409c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e40a0: d0 = 16.000000
    //     0x7e40a0: fmov            d0, #16.00000000
    // 0x7e40a4: stur            x0, [fp, #-0x10]
    // 0x7e40a8: StoreField: r0->field_7 = d0
    //     0x7e40a8: stur            d0, [x0, #7]
    // 0x7e40ac: StoreField: r0->field_f = d0
    //     0x7e40ac: stur            d0, [x0, #0xf]
    // 0x7e40b0: r0 = BorderRadius()
    //     0x7e40b0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e40b4: mov             x3, x0
    // 0x7e40b8: ldur            x0, [fp, #-0x10]
    // 0x7e40bc: stur            x3, [fp, #-0x18]
    // 0x7e40c0: StoreField: r3->field_7 = r0
    //     0x7e40c0: stur            w0, [x3, #7]
    // 0x7e40c4: StoreField: r3->field_b = r0
    //     0x7e40c4: stur            w0, [x3, #0xb]
    // 0x7e40c8: StoreField: r3->field_f = r0
    //     0x7e40c8: stur            w0, [x3, #0xf]
    // 0x7e40cc: StoreField: r3->field_13 = r0
    //     0x7e40cc: stur            w0, [x3, #0x13]
    // 0x7e40d0: r1 = _ConstMap len:12
    //     0x7e40d0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e40d4: r2 = 400
    //     0x7e40d4: mov             x2, #0x190
    // 0x7e40d8: r0 = []()
    //     0x7e40d8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e40dc: cmp             w0, NULL
    // 0x7e40e0: b.eq            #0x7e42dc
    // 0x7e40e4: str             x0, [SP]
    // 0x7e40e8: r1 = Null
    //     0x7e40e8: mov             x1, NULL
    // 0x7e40ec: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7e40ec: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7e40f0: ldr             x4, [x4, #0x788]
    // 0x7e40f4: r0 = Border.all()
    //     0x7e40f4: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e40f8: stur            x0, [fp, #-0x10]
    // 0x7e40fc: r0 = BoxDecoration()
    //     0x7e40fc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e4100: mov             x1, x0
    // 0x7e4104: r0 = Instance_Color
    //     0x7e4104: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e4108: stur            x1, [fp, #-0x20]
    // 0x7e410c: StoreField: r1->field_7 = r0
    //     0x7e410c: stur            w0, [x1, #7]
    // 0x7e4110: ldur            x0, [fp, #-0x10]
    // 0x7e4114: StoreField: r1->field_f = r0
    //     0x7e4114: stur            w0, [x1, #0xf]
    // 0x7e4118: ldur            x0, [fp, #-0x18]
    // 0x7e411c: StoreField: r1->field_13 = r0
    //     0x7e411c: stur            w0, [x1, #0x13]
    // 0x7e4120: r0 = Instance_BoxShape
    //     0x7e4120: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e4124: ldr             x0, [x0, #0x1c8]
    // 0x7e4128: StoreField: r1->field_23 = r0
    //     0x7e4128: stur            w0, [x1, #0x23]
    // 0x7e412c: ldur            x0, [fp, #-8]
    // 0x7e4130: LoadField: r2 = r0->field_f
    //     0x7e4130: ldur            w2, [x0, #0xf]
    // 0x7e4134: DecompressPointer r2
    //     0x7e4134: add             x2, x2, HEAP, lsl #32
    // 0x7e4138: stur            x2, [fp, #-0x10]
    // 0x7e413c: r0 = Icon()
    //     0x7e413c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e4140: mov             x3, x0
    // 0x7e4144: r0 = Instance_IconData
    //     0x7e4144: add             x0, PP, #0x18, lsl #12  ; [pp+0x18920] Obj!IconData@a09f81
    //     0x7e4148: ldr             x0, [x0, #0x920]
    // 0x7e414c: stur            x3, [fp, #-0x18]
    // 0x7e4150: StoreField: r3->field_b = r0
    //     0x7e4150: stur            w0, [x3, #0xb]
    // 0x7e4154: ldur            x0, [fp, #-0x10]
    // 0x7e4158: StoreField: r3->field_23 = r0
    //     0x7e4158: stur            w0, [x3, #0x23]
    // 0x7e415c: ldur            x0, [fp, #-8]
    // 0x7e4160: LoadField: r4 = r0->field_b
    //     0x7e4160: ldur            w4, [x0, #0xb]
    // 0x7e4164: DecompressPointer r4
    //     0x7e4164: add             x4, x4, HEAP, lsl #32
    // 0x7e4168: stur            x4, [fp, #-0x10]
    // 0x7e416c: r1 = _ConstMap len:12
    //     0x7e416c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4170: r2 = 1200
    //     0x7e4170: mov             x2, #0x4b0
    // 0x7e4174: r0 = []()
    //     0x7e4174: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e4178: stur            x0, [fp, #-8]
    // 0x7e417c: cmp             w0, NULL
    // 0x7e4180: b.eq            #0x7e42e0
    // 0x7e4184: r0 = TextStyle()
    //     0x7e4184: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e4188: mov             x1, x0
    // 0x7e418c: r0 = true
    //     0x7e418c: add             x0, NULL, #0x20  ; true
    // 0x7e4190: stur            x1, [fp, #-0x28]
    // 0x7e4194: StoreField: r1->field_7 = r0
    //     0x7e4194: stur            w0, [x1, #7]
    // 0x7e4198: ldur            x0, [fp, #-8]
    // 0x7e419c: StoreField: r1->field_b = r0
    //     0x7e419c: stur            w0, [x1, #0xb]
    // 0x7e41a0: r0 = Text()
    //     0x7e41a0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e41a4: mov             x2, x0
    // 0x7e41a8: ldur            x0, [fp, #-0x10]
    // 0x7e41ac: stur            x2, [fp, #-8]
    // 0x7e41b0: StoreField: r2->field_b = r0
    //     0x7e41b0: stur            w0, [x2, #0xb]
    // 0x7e41b4: ldur            x0, [fp, #-0x28]
    // 0x7e41b8: StoreField: r2->field_13 = r0
    //     0x7e41b8: stur            w0, [x2, #0x13]
    // 0x7e41bc: r1 = <FlexParentData>
    //     0x7e41bc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e41c0: ldr             x1, [x1, #0x340]
    // 0x7e41c4: r0 = Expanded()
    //     0x7e41c4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e41c8: mov             x3, x0
    // 0x7e41cc: r0 = 1
    //     0x7e41cc: mov             x0, #1
    // 0x7e41d0: stur            x3, [fp, #-0x10]
    // 0x7e41d4: StoreField: r3->field_13 = r0
    //     0x7e41d4: stur            x0, [x3, #0x13]
    // 0x7e41d8: r0 = Instance_FlexFit
    //     0x7e41d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e41dc: ldr             x0, [x0, #0x348]
    // 0x7e41e0: StoreField: r3->field_1b = r0
    //     0x7e41e0: stur            w0, [x3, #0x1b]
    // 0x7e41e4: ldur            x0, [fp, #-8]
    // 0x7e41e8: StoreField: r3->field_b = r0
    //     0x7e41e8: stur            w0, [x3, #0xb]
    // 0x7e41ec: r1 = Null
    //     0x7e41ec: mov             x1, NULL
    // 0x7e41f0: r2 = 6
    //     0x7e41f0: mov             x2, #6
    // 0x7e41f4: r0 = AllocateArray()
    //     0x7e41f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e41f8: mov             x2, x0
    // 0x7e41fc: ldur            x0, [fp, #-0x18]
    // 0x7e4200: stur            x2, [fp, #-8]
    // 0x7e4204: StoreField: r2->field_f = r0
    //     0x7e4204: stur            w0, [x2, #0xf]
    // 0x7e4208: r16 = Instance_SizedBox
    //     0x7e4208: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e420c: ldr             x16, [x16, #0x360]
    // 0x7e4210: StoreField: r2->field_13 = r16
    //     0x7e4210: stur            w16, [x2, #0x13]
    // 0x7e4214: ldur            x0, [fp, #-0x10]
    // 0x7e4218: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e4218: stur            w0, [x2, #0x17]
    // 0x7e421c: r1 = <Widget>
    //     0x7e421c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e4220: r0 = AllocateGrowableArray()
    //     0x7e4220: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e4224: mov             x1, x0
    // 0x7e4228: ldur            x0, [fp, #-8]
    // 0x7e422c: stur            x1, [fp, #-0x10]
    // 0x7e4230: StoreField: r1->field_f = r0
    //     0x7e4230: stur            w0, [x1, #0xf]
    // 0x7e4234: r0 = 6
    //     0x7e4234: mov             x0, #6
    // 0x7e4238: StoreField: r1->field_b = r0
    //     0x7e4238: stur            w0, [x1, #0xb]
    // 0x7e423c: r0 = Row()
    //     0x7e423c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e4240: mov             x1, x0
    // 0x7e4244: r0 = Instance_Axis
    //     0x7e4244: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e4248: stur            x1, [fp, #-8]
    // 0x7e424c: StoreField: r1->field_f = r0
    //     0x7e424c: stur            w0, [x1, #0xf]
    // 0x7e4250: r0 = Instance_MainAxisAlignment
    //     0x7e4250: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e4254: ldr             x0, [x0, #0x230]
    // 0x7e4258: StoreField: r1->field_13 = r0
    //     0x7e4258: stur            w0, [x1, #0x13]
    // 0x7e425c: r0 = Instance_MainAxisSize
    //     0x7e425c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e4260: ldr             x0, [x0, #0x330]
    // 0x7e4264: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e4264: stur            w0, [x1, #0x17]
    // 0x7e4268: r0 = Instance_CrossAxisAlignment
    //     0x7e4268: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e426c: ldr             x0, [x0, #0x338]
    // 0x7e4270: StoreField: r1->field_1b = r0
    //     0x7e4270: stur            w0, [x1, #0x1b]
    // 0x7e4274: r0 = Instance_VerticalDirection
    //     0x7e4274: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e4278: ldr             x0, [x0, #0x340]
    // 0x7e427c: StoreField: r1->field_23 = r0
    //     0x7e427c: stur            w0, [x1, #0x23]
    // 0x7e4280: r0 = Instance_Clip
    //     0x7e4280: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4284: ldr             x0, [x0, #0x348]
    // 0x7e4288: StoreField: r1->field_2b = r0
    //     0x7e4288: stur            w0, [x1, #0x2b]
    // 0x7e428c: StoreField: r1->field_2f = rZR
    //     0x7e428c: stur            xzr, [x1, #0x2f]
    // 0x7e4290: ldur            x0, [fp, #-0x10]
    // 0x7e4294: StoreField: r1->field_b = r0
    //     0x7e4294: stur            w0, [x1, #0xb]
    // 0x7e4298: r0 = Container()
    //     0x7e4298: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e429c: stur            x0, [fp, #-0x10]
    // 0x7e42a0: r16 = Instance_EdgeInsets
    //     0x7e42a0: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e42a4: ldur            lr, [fp, #-0x20]
    // 0x7e42a8: stp             lr, x16, [SP, #8]
    // 0x7e42ac: ldur            x16, [fp, #-8]
    // 0x7e42b0: str             x16, [SP]
    // 0x7e42b4: mov             x1, x0
    // 0x7e42b8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e42b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e42bc: ldr             x4, [x4, #0x1e8]
    // 0x7e42c0: r0 = Container()
    //     0x7e42c0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e42c4: ldur            x0, [fp, #-0x10]
    // 0x7e42c8: LeaveFrame
    //     0x7e42c8: mov             SP, fp
    //     0x7e42cc: ldp             fp, lr, [SP], #0x10
    // 0x7e42d0: ret
    //     0x7e42d0: ret             
    // 0x7e42d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e42d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e42d8: b               #0x7e409c
    // 0x7e42dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e42dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e42e0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e42e0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

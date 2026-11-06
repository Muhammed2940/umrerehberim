// lib: , url: package:umrem_demo/features/admin/widgets/info_card.dart

// class id: 1049555, size: 0x8
class :: {
}

// class id: 2914, size: 0x28, field offset: 0xc
//   const constructor, 
class InfoCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e7024, size: 0x6c4
    // 0x7e7024: EnterFrame
    //     0x7e7024: stp             fp, lr, [SP, #-0x10]!
    //     0x7e7028: mov             fp, SP
    // 0x7e702c: AllocStack(0x70)
    //     0x7e702c: sub             SP, SP, #0x70
    // 0x7e7030: SetupParameters(InfoCard this /* r1 => r1, fp-0x10 */)
    //     0x7e7030: stur            x1, [fp, #-0x10]
    // 0x7e7034: CheckStackOverflow
    //     0x7e7034: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e7038: cmp             SP, x16
    //     0x7e703c: b.ls            #0x7e76d0
    // 0x7e7040: LoadField: r0 = r1->field_1f
    //     0x7e7040: ldur            w0, [x1, #0x1f]
    // 0x7e7044: DecompressPointer r0
    //     0x7e7044: add             x0, x0, HEAP, lsl #32
    // 0x7e7048: stur            x0, [fp, #-8]
    // 0x7e704c: r0 = cardDecoration()
    //     0x7e704c: bl              #0x7e76e8  ; [package:umrem_demo/app/app_theme.dart] AppTheme::cardDecoration
    // 0x7e7050: mov             x2, x0
    // 0x7e7054: ldur            x0, [fp, #-0x10]
    // 0x7e7058: stur            x2, [fp, #-0x20]
    // 0x7e705c: LoadField: r3 = r0->field_1b
    //     0x7e705c: ldur            w3, [x0, #0x1b]
    // 0x7e7060: DecompressPointer r3
    //     0x7e7060: add             x3, x3, HEAP, lsl #32
    // 0x7e7064: stur            x3, [fp, #-0x18]
    // 0x7e7068: r16 = 0.100000
    //     0x7e7068: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e706c: ldr             x16, [x16, #0x1f8]
    // 0x7e7070: str             x16, [SP]
    // 0x7e7074: mov             x1, x3
    // 0x7e7078: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e7078: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e707c: ldr             x4, [x4, #0x198]
    // 0x7e7080: r0 = withValues()
    //     0x7e7080: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e7084: stur            x0, [fp, #-0x28]
    // 0x7e7088: r0 = BoxDecoration()
    //     0x7e7088: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e708c: mov             x1, x0
    // 0x7e7090: ldur            x0, [fp, #-0x28]
    // 0x7e7094: stur            x1, [fp, #-0x30]
    // 0x7e7098: StoreField: r1->field_7 = r0
    //     0x7e7098: stur            w0, [x1, #7]
    // 0x7e709c: r0 = Instance_BoxShape
    //     0x7e709c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7e70a0: ldr             x0, [x0, #0x1a0]
    // 0x7e70a4: StoreField: r1->field_23 = r0
    //     0x7e70a4: stur            w0, [x1, #0x23]
    // 0x7e70a8: ldur            x0, [fp, #-0x10]
    // 0x7e70ac: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7e70ac: ldur            w2, [x0, #0x17]
    // 0x7e70b0: DecompressPointer r2
    //     0x7e70b0: add             x2, x2, HEAP, lsl #32
    // 0x7e70b4: stur            x2, [fp, #-0x28]
    // 0x7e70b8: r0 = Icon()
    //     0x7e70b8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e70bc: mov             x1, x0
    // 0x7e70c0: ldur            x0, [fp, #-0x28]
    // 0x7e70c4: stur            x1, [fp, #-0x38]
    // 0x7e70c8: StoreField: r1->field_b = r0
    //     0x7e70c8: stur            w0, [x1, #0xb]
    // 0x7e70cc: ldur            x0, [fp, #-0x18]
    // 0x7e70d0: StoreField: r1->field_23 = r0
    //     0x7e70d0: stur            w0, [x1, #0x23]
    // 0x7e70d4: r0 = Container()
    //     0x7e70d4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e70d8: stur            x0, [fp, #-0x18]
    // 0x7e70dc: r16 = Instance_EdgeInsets
    //     0x7e70dc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7e70e0: ldr             x16, [x16, #0x370]
    // 0x7e70e4: ldur            lr, [fp, #-0x30]
    // 0x7e70e8: stp             lr, x16, [SP, #8]
    // 0x7e70ec: ldur            x16, [fp, #-0x38]
    // 0x7e70f0: str             x16, [SP]
    // 0x7e70f4: mov             x1, x0
    // 0x7e70f8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e70f8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e70fc: ldr             x4, [x4, #0x1e8]
    // 0x7e7100: r0 = Container()
    //     0x7e7100: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e7104: ldur            x0, [fp, #-0x10]
    // 0x7e7108: LoadField: r1 = r0->field_b
    //     0x7e7108: ldur            w1, [x0, #0xb]
    // 0x7e710c: DecompressPointer r1
    //     0x7e710c: add             x1, x1, HEAP, lsl #32
    // 0x7e7110: stur            x1, [fp, #-0x28]
    // 0x7e7114: r0 = Text()
    //     0x7e7114: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e7118: mov             x3, x0
    // 0x7e711c: ldur            x0, [fp, #-0x28]
    // 0x7e7120: stur            x3, [fp, #-0x30]
    // 0x7e7124: StoreField: r3->field_b = r0
    //     0x7e7124: stur            w0, [x3, #0xb]
    // 0x7e7128: r0 = Instance_TextStyle
    //     0x7e7128: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c0a8] Obj!TextStyle@a17c91
    //     0x7e712c: ldr             x0, [x0, #0xa8]
    // 0x7e7130: StoreField: r3->field_13 = r0
    //     0x7e7130: stur            w0, [x3, #0x13]
    // 0x7e7134: ldur            x0, [fp, #-0x10]
    // 0x7e7138: LoadField: r4 = r0->field_f
    //     0x7e7138: ldur            w4, [x0, #0xf]
    // 0x7e713c: DecompressPointer r4
    //     0x7e713c: add             x4, x4, HEAP, lsl #32
    // 0x7e7140: stur            x4, [fp, #-0x28]
    // 0x7e7144: r1 = _ConstMap len:12
    //     0x7e7144: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e7148: r2 = 1200
    //     0x7e7148: mov             x2, #0x4b0
    // 0x7e714c: r0 = []()
    //     0x7e714c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e7150: stur            x0, [fp, #-0x38]
    // 0x7e7154: cmp             w0, NULL
    // 0x7e7158: b.eq            #0x7e76d8
    // 0x7e715c: r0 = TextStyle()
    //     0x7e715c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e7160: mov             x1, x0
    // 0x7e7164: r0 = true
    //     0x7e7164: add             x0, NULL, #0x20  ; true
    // 0x7e7168: stur            x1, [fp, #-0x40]
    // 0x7e716c: StoreField: r1->field_7 = r0
    //     0x7e716c: stur            w0, [x1, #7]
    // 0x7e7170: ldur            x2, [fp, #-0x38]
    // 0x7e7174: StoreField: r1->field_b = r2
    //     0x7e7174: stur            w2, [x1, #0xb]
    // 0x7e7178: r2 = 13.000000
    //     0x7e7178: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e717c: ldr             x2, [x2, #0xb00]
    // 0x7e7180: StoreField: r1->field_1f = r2
    //     0x7e7180: stur            w2, [x1, #0x1f]
    // 0x7e7184: r0 = Text()
    //     0x7e7184: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e7188: mov             x3, x0
    // 0x7e718c: ldur            x0, [fp, #-0x28]
    // 0x7e7190: stur            x3, [fp, #-0x38]
    // 0x7e7194: StoreField: r3->field_b = r0
    //     0x7e7194: stur            w0, [x3, #0xb]
    // 0x7e7198: ldur            x0, [fp, #-0x40]
    // 0x7e719c: StoreField: r3->field_13 = r0
    //     0x7e719c: stur            w0, [x3, #0x13]
    // 0x7e71a0: r1 = Null
    //     0x7e71a0: mov             x1, NULL
    // 0x7e71a4: r2 = 8
    //     0x7e71a4: mov             x2, #8
    // 0x7e71a8: r0 = AllocateArray()
    //     0x7e71a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e71ac: mov             x2, x0
    // 0x7e71b0: ldur            x0, [fp, #-0x30]
    // 0x7e71b4: stur            x2, [fp, #-0x28]
    // 0x7e71b8: StoreField: r2->field_f = r0
    //     0x7e71b8: stur            w0, [x2, #0xf]
    // 0x7e71bc: r16 = Instance_SizedBox
    //     0x7e71bc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7e71c0: ldr             x16, [x16, #0x338]
    // 0x7e71c4: StoreField: r2->field_13 = r16
    //     0x7e71c4: stur            w16, [x2, #0x13]
    // 0x7e71c8: ldur            x0, [fp, #-0x38]
    // 0x7e71cc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e71cc: stur            w0, [x2, #0x17]
    // 0x7e71d0: r16 = Instance_SizedBox
    //     0x7e71d0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc80] Obj!SizedBox@a1fd51
    //     0x7e71d4: ldr             x16, [x16, #0xc80]
    // 0x7e71d8: StoreField: r2->field_1b = r16
    //     0x7e71d8: stur            w16, [x2, #0x1b]
    // 0x7e71dc: r1 = <Widget>
    //     0x7e71dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e71e0: r0 = AllocateGrowableArray()
    //     0x7e71e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e71e4: mov             x3, x0
    // 0x7e71e8: ldur            x0, [fp, #-0x28]
    // 0x7e71ec: stur            x3, [fp, #-0x38]
    // 0x7e71f0: StoreField: r3->field_f = r0
    //     0x7e71f0: stur            w0, [x3, #0xf]
    // 0x7e71f4: r0 = 8
    //     0x7e71f4: mov             x0, #8
    // 0x7e71f8: StoreField: r3->field_b = r0
    //     0x7e71f8: stur            w0, [x3, #0xb]
    // 0x7e71fc: ldur            x0, [fp, #-0x10]
    // 0x7e7200: LoadField: r4 = r0->field_13
    //     0x7e7200: ldur            w4, [x0, #0x13]
    // 0x7e7204: DecompressPointer r4
    //     0x7e7204: add             x4, x4, HEAP, lsl #32
    // 0x7e7208: stur            x4, [fp, #-0x30]
    // 0x7e720c: LoadField: r5 = r4->field_7
    //     0x7e720c: ldur            w5, [x4, #7]
    // 0x7e7210: stur            x5, [fp, #-0x28]
    // 0x7e7214: cbz             w5, #0x7e72f0
    // 0x7e7218: r1 = _ConstMap len:12
    //     0x7e7218: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e721c: r2 = 1400
    //     0x7e721c: mov             x2, #0x578
    // 0x7e7220: r0 = []()
    //     0x7e7220: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e7224: stur            x0, [fp, #-0x40]
    // 0x7e7228: cmp             w0, NULL
    // 0x7e722c: b.eq            #0x7e76dc
    // 0x7e7230: r0 = TextStyle()
    //     0x7e7230: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e7234: mov             x1, x0
    // 0x7e7238: r0 = true
    //     0x7e7238: add             x0, NULL, #0x20  ; true
    // 0x7e723c: stur            x1, [fp, #-0x48]
    // 0x7e7240: StoreField: r1->field_7 = r0
    //     0x7e7240: stur            w0, [x1, #7]
    // 0x7e7244: ldur            x0, [fp, #-0x40]
    // 0x7e7248: StoreField: r1->field_b = r0
    //     0x7e7248: stur            w0, [x1, #0xb]
    // 0x7e724c: r0 = 14.000000
    //     0x7e724c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7e7250: ldr             x0, [x0, #0x1c8]
    // 0x7e7254: StoreField: r1->field_1f = r0
    //     0x7e7254: stur            w0, [x1, #0x1f]
    // 0x7e7258: r0 = Text()
    //     0x7e7258: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e725c: mov             x2, x0
    // 0x7e7260: ldur            x0, [fp, #-0x30]
    // 0x7e7264: stur            x2, [fp, #-0x40]
    // 0x7e7268: StoreField: r2->field_b = r0
    //     0x7e7268: stur            w0, [x2, #0xb]
    // 0x7e726c: ldur            x0, [fp, #-0x48]
    // 0x7e7270: StoreField: r2->field_13 = r0
    //     0x7e7270: stur            w0, [x2, #0x13]
    // 0x7e7274: ldur            x0, [fp, #-0x38]
    // 0x7e7278: LoadField: r1 = r0->field_b
    //     0x7e7278: ldur            w1, [x0, #0xb]
    // 0x7e727c: LoadField: r3 = r0->field_f
    //     0x7e727c: ldur            w3, [x0, #0xf]
    // 0x7e7280: DecompressPointer r3
    //     0x7e7280: add             x3, x3, HEAP, lsl #32
    // 0x7e7284: LoadField: r4 = r3->field_b
    //     0x7e7284: ldur            w4, [x3, #0xb]
    // 0x7e7288: r3 = LoadInt32Instr(r1)
    //     0x7e7288: sbfx            x3, x1, #1, #0x1f
    // 0x7e728c: stur            x3, [fp, #-0x50]
    // 0x7e7290: r1 = LoadInt32Instr(r4)
    //     0x7e7290: sbfx            x1, x4, #1, #0x1f
    // 0x7e7294: cmp             x3, x1
    // 0x7e7298: b.ne            #0x7e72a4
    // 0x7e729c: mov             x1, x0
    // 0x7e72a0: r0 = _growToNextCapacity()
    //     0x7e72a0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e72a4: ldur            x2, [fp, #-0x38]
    // 0x7e72a8: ldur            x3, [fp, #-0x50]
    // 0x7e72ac: add             x0, x3, #1
    // 0x7e72b0: lsl             x1, x0, #1
    // 0x7e72b4: StoreField: r2->field_b = r1
    //     0x7e72b4: stur            w1, [x2, #0xb]
    // 0x7e72b8: LoadField: r1 = r2->field_f
    //     0x7e72b8: ldur            w1, [x2, #0xf]
    // 0x7e72bc: DecompressPointer r1
    //     0x7e72bc: add             x1, x1, HEAP, lsl #32
    // 0x7e72c0: ldur            x0, [fp, #-0x40]
    // 0x7e72c4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e72c4: add             x25, x1, x3, lsl #2
    //     0x7e72c8: add             x25, x25, #0xf
    //     0x7e72cc: str             w0, [x25]
    //     0x7e72d0: tbz             w0, #0, #0x7e72ec
    //     0x7e72d4: ldurb           w16, [x1, #-1]
    //     0x7e72d8: ldurb           w17, [x0, #-1]
    //     0x7e72dc: and             x16, x17, x16, lsr #2
    //     0x7e72e0: tst             x16, HEAP, lsr #32
    //     0x7e72e4: b.eq            #0x7e72ec
    //     0x7e72e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e72ec: b               #0x7e72f4
    // 0x7e72f0: mov             x2, x3
    // 0x7e72f4: ldur            x0, [fp, #-0x28]
    // 0x7e72f8: r0 = Column()
    //     0x7e72f8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e72fc: mov             x3, x0
    // 0x7e7300: r0 = Instance_Axis
    //     0x7e7300: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e7304: stur            x3, [fp, #-0x30]
    // 0x7e7308: StoreField: r3->field_f = r0
    //     0x7e7308: stur            w0, [x3, #0xf]
    // 0x7e730c: r0 = Instance_MainAxisAlignment
    //     0x7e730c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e7310: ldr             x0, [x0, #0x230]
    // 0x7e7314: StoreField: r3->field_13 = r0
    //     0x7e7314: stur            w0, [x3, #0x13]
    // 0x7e7318: r4 = Instance_MainAxisSize
    //     0x7e7318: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e731c: ldr             x4, [x4, #0x330]
    // 0x7e7320: ArrayStore: r3[0] = r4  ; List_4
    //     0x7e7320: stur            w4, [x3, #0x17]
    // 0x7e7324: r5 = Instance_CrossAxisAlignment
    //     0x7e7324: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e7328: ldr             x5, [x5, #0x238]
    // 0x7e732c: StoreField: r3->field_1b = r5
    //     0x7e732c: stur            w5, [x3, #0x1b]
    // 0x7e7330: r6 = Instance_VerticalDirection
    //     0x7e7330: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7334: ldr             x6, [x6, #0x340]
    // 0x7e7338: StoreField: r3->field_23 = r6
    //     0x7e7338: stur            w6, [x3, #0x23]
    // 0x7e733c: r7 = Instance_Clip
    //     0x7e733c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7340: ldr             x7, [x7, #0x348]
    // 0x7e7344: StoreField: r3->field_2b = r7
    //     0x7e7344: stur            w7, [x3, #0x2b]
    // 0x7e7348: StoreField: r3->field_2f = rZR
    //     0x7e7348: stur            xzr, [x3, #0x2f]
    // 0x7e734c: ldur            x1, [fp, #-0x38]
    // 0x7e7350: StoreField: r3->field_b = r1
    //     0x7e7350: stur            w1, [x3, #0xb]
    // 0x7e7354: r1 = Null
    //     0x7e7354: mov             x1, NULL
    // 0x7e7358: r2 = 2
    //     0x7e7358: mov             x2, #2
    // 0x7e735c: r0 = AllocateArray()
    //     0x7e735c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7360: mov             x2, x0
    // 0x7e7364: ldur            x0, [fp, #-0x30]
    // 0x7e7368: stur            x2, [fp, #-0x38]
    // 0x7e736c: StoreField: r2->field_f = r0
    //     0x7e736c: stur            w0, [x2, #0xf]
    // 0x7e7370: r1 = <Widget>
    //     0x7e7370: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e7374: r0 = AllocateGrowableArray()
    //     0x7e7374: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7378: mov             x3, x0
    // 0x7e737c: ldur            x0, [fp, #-0x38]
    // 0x7e7380: stur            x3, [fp, #-0x30]
    // 0x7e7384: StoreField: r3->field_f = r0
    //     0x7e7384: stur            w0, [x3, #0xf]
    // 0x7e7388: r1 = 2
    //     0x7e7388: mov             x1, #2
    // 0x7e738c: StoreField: r3->field_b = r1
    //     0x7e738c: stur            w1, [x3, #0xb]
    // 0x7e7390: ldur            x1, [fp, #-0x28]
    // 0x7e7394: cbnz            w1, #0x7e7480
    // 0x7e7398: ldur            x4, [fp, #-0x10]
    // 0x7e739c: LoadField: r1 = r4->field_23
    //     0x7e739c: ldur            w1, [x4, #0x23]
    // 0x7e73a0: DecompressPointer r1
    //     0x7e73a0: add             x1, x1, HEAP, lsl #32
    // 0x7e73a4: cmp             w1, NULL
    // 0x7e73a8: b.ne            #0x7e7478
    // 0x7e73ac: r1 = _ConstMap len:12
    //     0x7e73ac: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e73b0: r2 = 800
    //     0x7e73b0: mov             x2, #0x320
    // 0x7e73b4: r0 = []()
    //     0x7e73b4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e73b8: stur            x0, [fp, #-0x28]
    // 0x7e73bc: cmp             w0, NULL
    // 0x7e73c0: b.eq            #0x7e76e0
    // 0x7e73c4: r0 = Icon()
    //     0x7e73c4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e73c8: mov             x2, x0
    // 0x7e73cc: r0 = Instance_IconData
    //     0x7e73cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x7e73d0: ldr             x0, [x0, #0x350]
    // 0x7e73d4: stur            x2, [fp, #-0x40]
    // 0x7e73d8: StoreField: r2->field_b = r0
    //     0x7e73d8: stur            w0, [x2, #0xb]
    // 0x7e73dc: r0 = 16.000000
    //     0x7e73dc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7e73e0: ldr             x0, [x0, #0x358]
    // 0x7e73e4: StoreField: r2->field_f = r0
    //     0x7e73e4: stur            w0, [x2, #0xf]
    // 0x7e73e8: ldur            x0, [fp, #-0x28]
    // 0x7e73ec: StoreField: r2->field_23 = r0
    //     0x7e73ec: stur            w0, [x2, #0x23]
    // 0x7e73f0: ldur            x0, [fp, #-0x30]
    // 0x7e73f4: LoadField: r1 = r0->field_b
    //     0x7e73f4: ldur            w1, [x0, #0xb]
    // 0x7e73f8: LoadField: r3 = r0->field_f
    //     0x7e73f8: ldur            w3, [x0, #0xf]
    // 0x7e73fc: DecompressPointer r3
    //     0x7e73fc: add             x3, x3, HEAP, lsl #32
    // 0x7e7400: LoadField: r4 = r3->field_b
    //     0x7e7400: ldur            w4, [x3, #0xb]
    // 0x7e7404: r3 = LoadInt32Instr(r1)
    //     0x7e7404: sbfx            x3, x1, #1, #0x1f
    // 0x7e7408: stur            x3, [fp, #-0x50]
    // 0x7e740c: r1 = LoadInt32Instr(r4)
    //     0x7e740c: sbfx            x1, x4, #1, #0x1f
    // 0x7e7410: cmp             x3, x1
    // 0x7e7414: b.ne            #0x7e7420
    // 0x7e7418: mov             x1, x0
    // 0x7e741c: r0 = _growToNextCapacity()
    //     0x7e741c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e7420: ldur            x2, [fp, #-0x30]
    // 0x7e7424: ldur            x3, [fp, #-0x50]
    // 0x7e7428: add             x4, x3, #1
    // 0x7e742c: lsl             x0, x4, #1
    // 0x7e7430: StoreField: r2->field_b = r0
    //     0x7e7430: stur            w0, [x2, #0xb]
    // 0x7e7434: LoadField: r5 = r2->field_f
    //     0x7e7434: ldur            w5, [x2, #0xf]
    // 0x7e7438: DecompressPointer r5
    //     0x7e7438: add             x5, x5, HEAP, lsl #32
    // 0x7e743c: mov             x1, x5
    // 0x7e7440: ldur            x0, [fp, #-0x40]
    // 0x7e7444: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e7444: add             x25, x1, x3, lsl #2
    //     0x7e7448: add             x25, x25, #0xf
    //     0x7e744c: str             w0, [x25]
    //     0x7e7450: tbz             w0, #0, #0x7e746c
    //     0x7e7454: ldurb           w16, [x1, #-1]
    //     0x7e7458: ldurb           w17, [x0, #-1]
    //     0x7e745c: and             x16, x17, x16, lsr #2
    //     0x7e7460: tst             x16, HEAP, lsr #32
    //     0x7e7464: b.eq            #0x7e746c
    //     0x7e7468: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e746c: mov             x1, x5
    // 0x7e7470: mov             x3, x4
    // 0x7e7474: b               #0x7e748c
    // 0x7e7478: mov             x2, x3
    // 0x7e747c: b               #0x7e7484
    // 0x7e7480: mov             x2, x3
    // 0x7e7484: mov             x1, x0
    // 0x7e7488: r3 = 1
    //     0x7e7488: mov             x3, #1
    // 0x7e748c: ldur            x0, [fp, #-0x10]
    // 0x7e7490: stur            x3, [fp, #-0x50]
    // 0x7e7494: LoadField: r4 = r0->field_23
    //     0x7e7494: ldur            w4, [x0, #0x23]
    // 0x7e7498: DecompressPointer r4
    //     0x7e7498: add             x4, x4, HEAP, lsl #32
    // 0x7e749c: stur            x4, [fp, #-0x28]
    // 0x7e74a0: cmp             w4, NULL
    // 0x7e74a4: b.eq            #0x7e7528
    // 0x7e74a8: LoadField: r0 = r1->field_b
    //     0x7e74a8: ldur            w0, [x1, #0xb]
    // 0x7e74ac: r1 = LoadInt32Instr(r0)
    //     0x7e74ac: sbfx            x1, x0, #1, #0x1f
    // 0x7e74b0: cmp             x3, x1
    // 0x7e74b4: b.ne            #0x7e74c0
    // 0x7e74b8: mov             x1, x2
    // 0x7e74bc: r0 = _growToNextCapacity()
    //     0x7e74bc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e74c0: ldur            x2, [fp, #-0x30]
    // 0x7e74c4: ldur            x3, [fp, #-0x50]
    // 0x7e74c8: add             x4, x3, #1
    // 0x7e74cc: r0 = BoxInt64Instr(r4)
    //     0x7e74cc: sbfiz           x0, x4, #1, #0x1f
    //     0x7e74d0: cmp             x4, x0, asr #1
    //     0x7e74d4: b.eq            #0x7e74e0
    //     0x7e74d8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e74dc: stur            x4, [x0, #7]
    // 0x7e74e0: StoreField: r2->field_b = r0
    //     0x7e74e0: stur            w0, [x2, #0xb]
    // 0x7e74e4: mov             x0, x4
    // 0x7e74e8: mov             x1, x3
    // 0x7e74ec: cmp             x1, x0
    // 0x7e74f0: b.hs            #0x7e76e4
    // 0x7e74f4: LoadField: r1 = r2->field_f
    //     0x7e74f4: ldur            w1, [x2, #0xf]
    // 0x7e74f8: DecompressPointer r1
    //     0x7e74f8: add             x1, x1, HEAP, lsl #32
    // 0x7e74fc: ldur            x0, [fp, #-0x28]
    // 0x7e7500: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e7500: add             x25, x1, x3, lsl #2
    //     0x7e7504: add             x25, x25, #0xf
    //     0x7e7508: str             w0, [x25]
    //     0x7e750c: tbz             w0, #0, #0x7e7528
    //     0x7e7510: ldurb           w16, [x1, #-1]
    //     0x7e7514: ldurb           w17, [x0, #-1]
    //     0x7e7518: and             x16, x17, x16, lsr #2
    //     0x7e751c: tst             x16, HEAP, lsr #32
    //     0x7e7520: b.eq            #0x7e7528
    //     0x7e7524: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e7528: ldur            x0, [fp, #-0x18]
    // 0x7e752c: r0 = Row()
    //     0x7e752c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e7530: mov             x2, x0
    // 0x7e7534: r0 = Instance_Axis
    //     0x7e7534: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e7538: stur            x2, [fp, #-0x10]
    // 0x7e753c: StoreField: r2->field_f = r0
    //     0x7e753c: stur            w0, [x2, #0xf]
    // 0x7e7540: r1 = Instance_MainAxisAlignment
    //     0x7e7540: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x7e7544: ldr             x1, [x1, #0xd20]
    // 0x7e7548: StoreField: r2->field_13 = r1
    //     0x7e7548: stur            w1, [x2, #0x13]
    // 0x7e754c: r3 = Instance_MainAxisSize
    //     0x7e754c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e7550: ldr             x3, [x3, #0x330]
    // 0x7e7554: ArrayStore: r2[0] = r3  ; List_4
    //     0x7e7554: stur            w3, [x2, #0x17]
    // 0x7e7558: r1 = Instance_CrossAxisAlignment
    //     0x7e7558: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e755c: ldr             x1, [x1, #0x338]
    // 0x7e7560: StoreField: r2->field_1b = r1
    //     0x7e7560: stur            w1, [x2, #0x1b]
    // 0x7e7564: r4 = Instance_VerticalDirection
    //     0x7e7564: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7568: ldr             x4, [x4, #0x340]
    // 0x7e756c: StoreField: r2->field_23 = r4
    //     0x7e756c: stur            w4, [x2, #0x23]
    // 0x7e7570: r5 = Instance_Clip
    //     0x7e7570: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7574: ldr             x5, [x5, #0x348]
    // 0x7e7578: StoreField: r2->field_2b = r5
    //     0x7e7578: stur            w5, [x2, #0x2b]
    // 0x7e757c: StoreField: r2->field_2f = rZR
    //     0x7e757c: stur            xzr, [x2, #0x2f]
    // 0x7e7580: ldur            x1, [fp, #-0x30]
    // 0x7e7584: StoreField: r2->field_b = r1
    //     0x7e7584: stur            w1, [x2, #0xb]
    // 0x7e7588: r1 = <FlexParentData>
    //     0x7e7588: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e758c: ldr             x1, [x1, #0x340]
    // 0x7e7590: r0 = Expanded()
    //     0x7e7590: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e7594: mov             x3, x0
    // 0x7e7598: r0 = 1
    //     0x7e7598: mov             x0, #1
    // 0x7e759c: stur            x3, [fp, #-0x28]
    // 0x7e75a0: StoreField: r3->field_13 = r0
    //     0x7e75a0: stur            x0, [x3, #0x13]
    // 0x7e75a4: r0 = Instance_FlexFit
    //     0x7e75a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e75a8: ldr             x0, [x0, #0x348]
    // 0x7e75ac: StoreField: r3->field_1b = r0
    //     0x7e75ac: stur            w0, [x3, #0x1b]
    // 0x7e75b0: ldur            x0, [fp, #-0x10]
    // 0x7e75b4: StoreField: r3->field_b = r0
    //     0x7e75b4: stur            w0, [x3, #0xb]
    // 0x7e75b8: r1 = Null
    //     0x7e75b8: mov             x1, NULL
    // 0x7e75bc: r2 = 6
    //     0x7e75bc: mov             x2, #6
    // 0x7e75c0: r0 = AllocateArray()
    //     0x7e75c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e75c4: mov             x2, x0
    // 0x7e75c8: ldur            x0, [fp, #-0x18]
    // 0x7e75cc: stur            x2, [fp, #-0x10]
    // 0x7e75d0: StoreField: r2->field_f = r0
    //     0x7e75d0: stur            w0, [x2, #0xf]
    // 0x7e75d4: r16 = Instance_SizedBox
    //     0x7e75d4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e75d8: ldr             x16, [x16, #0x360]
    // 0x7e75dc: StoreField: r2->field_13 = r16
    //     0x7e75dc: stur            w16, [x2, #0x13]
    // 0x7e75e0: ldur            x0, [fp, #-0x28]
    // 0x7e75e4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e75e4: stur            w0, [x2, #0x17]
    // 0x7e75e8: r1 = <Widget>
    //     0x7e75e8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e75ec: r0 = AllocateGrowableArray()
    //     0x7e75ec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e75f0: mov             x1, x0
    // 0x7e75f4: ldur            x0, [fp, #-0x10]
    // 0x7e75f8: stur            x1, [fp, #-0x18]
    // 0x7e75fc: StoreField: r1->field_f = r0
    //     0x7e75fc: stur            w0, [x1, #0xf]
    // 0x7e7600: r0 = 6
    //     0x7e7600: mov             x0, #6
    // 0x7e7604: StoreField: r1->field_b = r0
    //     0x7e7604: stur            w0, [x1, #0xb]
    // 0x7e7608: r0 = Row()
    //     0x7e7608: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e760c: mov             x1, x0
    // 0x7e7610: r0 = Instance_Axis
    //     0x7e7610: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e7614: stur            x1, [fp, #-0x10]
    // 0x7e7618: StoreField: r1->field_f = r0
    //     0x7e7618: stur            w0, [x1, #0xf]
    // 0x7e761c: r0 = Instance_MainAxisAlignment
    //     0x7e761c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e7620: ldr             x0, [x0, #0x230]
    // 0x7e7624: StoreField: r1->field_13 = r0
    //     0x7e7624: stur            w0, [x1, #0x13]
    // 0x7e7628: r0 = Instance_MainAxisSize
    //     0x7e7628: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e762c: ldr             x0, [x0, #0x330]
    // 0x7e7630: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e7630: stur            w0, [x1, #0x17]
    // 0x7e7634: r0 = Instance_CrossAxisAlignment
    //     0x7e7634: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e7638: ldr             x0, [x0, #0x238]
    // 0x7e763c: StoreField: r1->field_1b = r0
    //     0x7e763c: stur            w0, [x1, #0x1b]
    // 0x7e7640: r0 = Instance_VerticalDirection
    //     0x7e7640: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7644: ldr             x0, [x0, #0x340]
    // 0x7e7648: StoreField: r1->field_23 = r0
    //     0x7e7648: stur            w0, [x1, #0x23]
    // 0x7e764c: r0 = Instance_Clip
    //     0x7e764c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7650: ldr             x0, [x0, #0x348]
    // 0x7e7654: StoreField: r1->field_2b = r0
    //     0x7e7654: stur            w0, [x1, #0x2b]
    // 0x7e7658: StoreField: r1->field_2f = rZR
    //     0x7e7658: stur            xzr, [x1, #0x2f]
    // 0x7e765c: ldur            x0, [fp, #-0x18]
    // 0x7e7660: StoreField: r1->field_b = r0
    //     0x7e7660: stur            w0, [x1, #0xb]
    // 0x7e7664: r0 = Container()
    //     0x7e7664: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e7668: stur            x0, [fp, #-0x18]
    // 0x7e766c: ldur            x16, [fp, #-0x20]
    // 0x7e7670: r30 = Instance_EdgeInsets
    //     0x7e7670: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a660] Obj!EdgeInsets@a0c201
    //     0x7e7674: ldr             lr, [lr, #0x660]
    // 0x7e7678: stp             lr, x16, [SP, #0x10]
    // 0x7e767c: r16 = Instance_EdgeInsets
    //     0x7e767c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e7680: ldr             x16, [x16, #0x240]
    // 0x7e7684: ldur            lr, [fp, #-0x10]
    // 0x7e7688: stp             lr, x16, [SP]
    // 0x7e768c: mov             x1, x0
    // 0x7e7690: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x1, margin, 0x2, padding, 0x3, null]
    //     0x7e7690: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c0b0] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x1, "margin", 0x2, "padding", 0x3, Null]
    //     0x7e7694: ldr             x4, [x4, #0xb0]
    // 0x7e7698: r0 = Container()
    //     0x7e7698: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e769c: r0 = GestureDetector()
    //     0x7e769c: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x7e76a0: stur            x0, [fp, #-0x10]
    // 0x7e76a4: ldur            x16, [fp, #-8]
    // 0x7e76a8: ldur            lr, [fp, #-0x18]
    // 0x7e76ac: stp             lr, x16, [SP]
    // 0x7e76b0: mov             x1, x0
    // 0x7e76b4: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7e76b4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7e76b8: ldr             x4, [x4, #0xd50]
    // 0x7e76bc: r0 = GestureDetector()
    //     0x7e76bc: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7e76c0: ldur            x0, [fp, #-0x10]
    // 0x7e76c4: LeaveFrame
    //     0x7e76c4: mov             SP, fp
    //     0x7e76c8: ldp             fp, lr, [SP], #0x10
    // 0x7e76cc: ret
    //     0x7e76cc: ret             
    // 0x7e76d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e76d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e76d4: b               #0x7e7040
    // 0x7e76d8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e76d8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e76dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e76dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e76e0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e76e0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e76e4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e76e4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

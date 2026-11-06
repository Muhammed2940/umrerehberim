// lib: , url: package:umrem_demo/features/home/widgets/quick_action_card.dart

// class id: 1049594, size: 0x8
class :: {
}

// class id: 2899, size: 0x20, field offset: 0xc
//   const constructor, 
class QuickActionCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ec1dc, size: 0x5b8
    // 0x7ec1dc: EnterFrame
    //     0x7ec1dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7ec1e0: mov             fp, SP
    // 0x7ec1e4: AllocStack(0x50)
    //     0x7ec1e4: sub             SP, SP, #0x50
    // 0x7ec1e8: CheckStackOverflow
    //     0x7ec1e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ec1ec: cmp             SP, x16
    //     0x7ec1f0: b.ls            #0x7ec784
    // 0x7ec1f4: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7ec1f4: ldur            w0, [x1, #0x17]
    // 0x7ec1f8: DecompressPointer r0
    //     0x7ec1f8: add             x0, x0, HEAP, lsl #32
    // 0x7ec1fc: stur            x0, [fp, #-8]
    // 0x7ec200: r0 = Radius()
    //     0x7ec200: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ec204: d0 = 12.000000
    //     0x7ec204: fmov            d0, #12.00000000
    // 0x7ec208: stur            x0, [fp, #-0x10]
    // 0x7ec20c: StoreField: r0->field_7 = d0
    //     0x7ec20c: stur            d0, [x0, #7]
    // 0x7ec210: StoreField: r0->field_f = d0
    //     0x7ec210: stur            d0, [x0, #0xf]
    // 0x7ec214: r0 = BorderRadius()
    //     0x7ec214: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ec218: mov             x1, x0
    // 0x7ec21c: ldur            x0, [fp, #-0x10]
    // 0x7ec220: stur            x1, [fp, #-0x18]
    // 0x7ec224: StoreField: r1->field_7 = r0
    //     0x7ec224: stur            w0, [x1, #7]
    // 0x7ec228: StoreField: r1->field_b = r0
    //     0x7ec228: stur            w0, [x1, #0xb]
    // 0x7ec22c: StoreField: r1->field_f = r0
    //     0x7ec22c: stur            w0, [x1, #0xf]
    // 0x7ec230: StoreField: r1->field_13 = r0
    //     0x7ec230: stur            w0, [x1, #0x13]
    // 0x7ec234: r0 = Radius()
    //     0x7ec234: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ec238: d0 = 12.000000
    //     0x7ec238: fmov            d0, #12.00000000
    // 0x7ec23c: stur            x0, [fp, #-0x10]
    // 0x7ec240: StoreField: r0->field_7 = d0
    //     0x7ec240: stur            d0, [x0, #7]
    // 0x7ec244: StoreField: r0->field_f = d0
    //     0x7ec244: stur            d0, [x0, #0xf]
    // 0x7ec248: r0 = BorderRadius()
    //     0x7ec248: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ec24c: mov             x2, x0
    // 0x7ec250: ldur            x0, [fp, #-0x10]
    // 0x7ec254: stur            x2, [fp, #-0x20]
    // 0x7ec258: StoreField: r2->field_7 = r0
    //     0x7ec258: stur            w0, [x2, #7]
    // 0x7ec25c: StoreField: r2->field_b = r0
    //     0x7ec25c: stur            w0, [x2, #0xb]
    // 0x7ec260: StoreField: r2->field_f = r0
    //     0x7ec260: stur            w0, [x2, #0xf]
    // 0x7ec264: StoreField: r2->field_13 = r0
    //     0x7ec264: stur            w0, [x2, #0x13]
    // 0x7ec268: r16 = Instance_Color
    //     0x7ec268: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ec26c: ldr             x16, [x16, #0xb78]
    // 0x7ec270: r30 = 1.500000
    //     0x7ec270: add             lr, PP, #0x15, lsl #12  ; [pp+0x154b0] 1.5
    //     0x7ec274: ldr             lr, [lr, #0x4b0]
    // 0x7ec278: stp             lr, x16, [SP]
    // 0x7ec27c: r1 = Null
    //     0x7ec27c: mov             x1, NULL
    // 0x7ec280: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7ec280: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7ec284: ldr             x4, [x4, #0x208]
    // 0x7ec288: r0 = Border.all()
    //     0x7ec288: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7ec28c: stur            x0, [fp, #-0x10]
    // 0x7ec290: r16 = 0.100000
    //     0x7ec290: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7ec294: ldr             x16, [x16, #0x1f8]
    // 0x7ec298: str             x16, [SP]
    // 0x7ec29c: r1 = Instance_Color
    //     0x7ec29c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ec2a0: ldr             x1, [x1, #0xb78]
    // 0x7ec2a4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ec2a4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ec2a8: ldr             x4, [x4, #0x198]
    // 0x7ec2ac: r0 = withValues()
    //     0x7ec2ac: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ec2b0: stur            x0, [fp, #-0x28]
    // 0x7ec2b4: r0 = BoxShadow()
    //     0x7ec2b4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7ec2b8: stur            x0, [fp, #-0x30]
    // 0x7ec2bc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7ec2bc: stur            xzr, [x0, #0x17]
    // 0x7ec2c0: r1 = Instance_BlurStyle
    //     0x7ec2c0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7ec2c4: ldr             x1, [x1, #0x9b0]
    // 0x7ec2c8: StoreField: r0->field_1f = r1
    //     0x7ec2c8: stur            w1, [x0, #0x1f]
    // 0x7ec2cc: ldur            x1, [fp, #-0x28]
    // 0x7ec2d0: StoreField: r0->field_7 = r1
    //     0x7ec2d0: stur            w1, [x0, #7]
    // 0x7ec2d4: r1 = Instance_Offset
    //     0x7ec2d4: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x7ec2d8: ldr             x1, [x1, #0x4e8]
    // 0x7ec2dc: StoreField: r0->field_b = r1
    //     0x7ec2dc: stur            w1, [x0, #0xb]
    // 0x7ec2e0: d0 = 8.000000
    //     0x7ec2e0: fmov            d0, #8.00000000
    // 0x7ec2e4: StoreField: r0->field_f = d0
    //     0x7ec2e4: stur            d0, [x0, #0xf]
    // 0x7ec2e8: r1 = Null
    //     0x7ec2e8: mov             x1, NULL
    // 0x7ec2ec: r2 = 2
    //     0x7ec2ec: mov             x2, #2
    // 0x7ec2f0: r0 = AllocateArray()
    //     0x7ec2f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ec2f4: mov             x2, x0
    // 0x7ec2f8: ldur            x0, [fp, #-0x30]
    // 0x7ec2fc: stur            x2, [fp, #-0x28]
    // 0x7ec300: StoreField: r2->field_f = r0
    //     0x7ec300: stur            w0, [x2, #0xf]
    // 0x7ec304: r1 = <BoxShadow>
    //     0x7ec304: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7ec308: ldr             x1, [x1, #0x9c0]
    // 0x7ec30c: r0 = AllocateGrowableArray()
    //     0x7ec30c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ec310: mov             x1, x0
    // 0x7ec314: ldur            x0, [fp, #-0x28]
    // 0x7ec318: stur            x1, [fp, #-0x30]
    // 0x7ec31c: StoreField: r1->field_f = r0
    //     0x7ec31c: stur            w0, [x1, #0xf]
    // 0x7ec320: r2 = 2
    //     0x7ec320: mov             x2, #2
    // 0x7ec324: StoreField: r1->field_b = r2
    //     0x7ec324: stur            w2, [x1, #0xb]
    // 0x7ec328: r0 = BoxDecoration()
    //     0x7ec328: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ec32c: mov             x2, x0
    // 0x7ec330: r0 = Instance_Color
    //     0x7ec330: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ec334: stur            x2, [fp, #-0x28]
    // 0x7ec338: StoreField: r2->field_7 = r0
    //     0x7ec338: stur            w0, [x2, #7]
    // 0x7ec33c: ldur            x0, [fp, #-0x10]
    // 0x7ec340: StoreField: r2->field_f = r0
    //     0x7ec340: stur            w0, [x2, #0xf]
    // 0x7ec344: ldur            x0, [fp, #-0x20]
    // 0x7ec348: StoreField: r2->field_13 = r0
    //     0x7ec348: stur            w0, [x2, #0x13]
    // 0x7ec34c: ldur            x0, [fp, #-0x30]
    // 0x7ec350: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ec350: stur            w0, [x2, #0x17]
    // 0x7ec354: r0 = Instance_BoxShape
    //     0x7ec354: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ec358: ldr             x0, [x0, #0x1c8]
    // 0x7ec35c: StoreField: r2->field_23 = r0
    //     0x7ec35c: stur            w0, [x2, #0x23]
    // 0x7ec360: r16 = 0.100000
    //     0x7ec360: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7ec364: ldr             x16, [x16, #0x1f8]
    // 0x7ec368: str             x16, [SP]
    // 0x7ec36c: r1 = Instance_Color
    //     0x7ec36c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ec370: ldr             x1, [x1, #0xb78]
    // 0x7ec374: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ec374: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ec378: ldr             x4, [x4, #0x198]
    // 0x7ec37c: r0 = withValues()
    //     0x7ec37c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ec380: stur            x0, [fp, #-0x10]
    // 0x7ec384: r0 = Radius()
    //     0x7ec384: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ec388: d0 = 8.000000
    //     0x7ec388: fmov            d0, #8.00000000
    // 0x7ec38c: stur            x0, [fp, #-0x20]
    // 0x7ec390: StoreField: r0->field_7 = d0
    //     0x7ec390: stur            d0, [x0, #7]
    // 0x7ec394: StoreField: r0->field_f = d0
    //     0x7ec394: stur            d0, [x0, #0xf]
    // 0x7ec398: r0 = BorderRadius()
    //     0x7ec398: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ec39c: mov             x1, x0
    // 0x7ec3a0: ldur            x0, [fp, #-0x20]
    // 0x7ec3a4: stur            x1, [fp, #-0x30]
    // 0x7ec3a8: StoreField: r1->field_7 = r0
    //     0x7ec3a8: stur            w0, [x1, #7]
    // 0x7ec3ac: StoreField: r1->field_b = r0
    //     0x7ec3ac: stur            w0, [x1, #0xb]
    // 0x7ec3b0: StoreField: r1->field_f = r0
    //     0x7ec3b0: stur            w0, [x1, #0xf]
    // 0x7ec3b4: StoreField: r1->field_13 = r0
    //     0x7ec3b4: stur            w0, [x1, #0x13]
    // 0x7ec3b8: r0 = BoxDecoration()
    //     0x7ec3b8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ec3bc: mov             x1, x0
    // 0x7ec3c0: ldur            x0, [fp, #-0x10]
    // 0x7ec3c4: stur            x1, [fp, #-0x20]
    // 0x7ec3c8: StoreField: r1->field_7 = r0
    //     0x7ec3c8: stur            w0, [x1, #7]
    // 0x7ec3cc: ldur            x0, [fp, #-0x30]
    // 0x7ec3d0: StoreField: r1->field_13 = r0
    //     0x7ec3d0: stur            w0, [x1, #0x13]
    // 0x7ec3d4: r0 = Instance_BoxShape
    //     0x7ec3d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ec3d8: ldr             x0, [x0, #0x1c8]
    // 0x7ec3dc: StoreField: r1->field_23 = r0
    //     0x7ec3dc: stur            w0, [x1, #0x23]
    // 0x7ec3e0: r0 = Icon()
    //     0x7ec3e0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ec3e4: mov             x1, x0
    // 0x7ec3e8: r0 = Instance_IconData
    //     0x7ec3e8: add             x0, PP, #0x15, lsl #12  ; [pp+0x159d8] Obj!IconData@a0a5c1
    //     0x7ec3ec: ldr             x0, [x0, #0x9d8]
    // 0x7ec3f0: stur            x1, [fp, #-0x10]
    // 0x7ec3f4: StoreField: r1->field_b = r0
    //     0x7ec3f4: stur            w0, [x1, #0xb]
    // 0x7ec3f8: r0 = 20.000000
    //     0x7ec3f8: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7ec3fc: ldr             x0, [x0, #0xe48]
    // 0x7ec400: StoreField: r1->field_f = r0
    //     0x7ec400: stur            w0, [x1, #0xf]
    // 0x7ec404: r0 = Instance_Color
    //     0x7ec404: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ec408: ldr             x0, [x0, #0xb78]
    // 0x7ec40c: StoreField: r1->field_23 = r0
    //     0x7ec40c: stur            w0, [x1, #0x23]
    // 0x7ec410: r0 = Container()
    //     0x7ec410: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ec414: stur            x0, [fp, #-0x30]
    // 0x7ec418: r16 = Instance_EdgeInsets
    //     0x7ec418: add             x16, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x7ec41c: ldr             x16, [x16, #0x480]
    // 0x7ec420: ldur            lr, [fp, #-0x20]
    // 0x7ec424: stp             lr, x16, [SP, #8]
    // 0x7ec428: ldur            x16, [fp, #-0x10]
    // 0x7ec42c: str             x16, [SP]
    // 0x7ec430: mov             x1, x0
    // 0x7ec434: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ec434: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ec438: ldr             x4, [x4, #0x1e8]
    // 0x7ec43c: r0 = Container()
    //     0x7ec43c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ec440: r0 = TextStyle()
    //     0x7ec440: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ec444: mov             x1, x0
    // 0x7ec448: r0 = true
    //     0x7ec448: add             x0, NULL, #0x20  ; true
    // 0x7ec44c: stur            x1, [fp, #-0x10]
    // 0x7ec450: StoreField: r1->field_7 = r0
    //     0x7ec450: stur            w0, [x1, #7]
    // 0x7ec454: r2 = Instance_Color
    //     0x7ec454: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ec458: ldr             x2, [x2, #0xb88]
    // 0x7ec45c: StoreField: r1->field_b = r2
    //     0x7ec45c: stur            w2, [x1, #0xb]
    // 0x7ec460: r2 = 14.000000
    //     0x7ec460: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7ec464: ldr             x2, [x2, #0x1c8]
    // 0x7ec468: StoreField: r1->field_1f = r2
    //     0x7ec468: stur            w2, [x1, #0x1f]
    // 0x7ec46c: r2 = Instance_FontWeight
    //     0x7ec46c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7ec470: ldr             x2, [x2, #0x990]
    // 0x7ec474: StoreField: r1->field_23 = r2
    //     0x7ec474: stur            w2, [x1, #0x23]
    // 0x7ec478: r0 = Text()
    //     0x7ec478: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ec47c: mov             x3, x0
    // 0x7ec480: r0 = "Rehberle İletişim"
    //     0x7ec480: add             x0, PP, #0x15, lsl #12  ; [pp+0x15458] "Rehberle İletişim"
    //     0x7ec484: ldr             x0, [x0, #0x458]
    // 0x7ec488: stur            x3, [fp, #-0x20]
    // 0x7ec48c: StoreField: r3->field_b = r0
    //     0x7ec48c: stur            w0, [x3, #0xb]
    // 0x7ec490: ldur            x0, [fp, #-0x10]
    // 0x7ec494: StoreField: r3->field_13 = r0
    //     0x7ec494: stur            w0, [x3, #0x13]
    // 0x7ec498: r1 = Null
    //     0x7ec498: mov             x1, NULL
    // 0x7ec49c: r2 = 2
    //     0x7ec49c: mov             x2, #2
    // 0x7ec4a0: r0 = AllocateArray()
    //     0x7ec4a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ec4a4: mov             x2, x0
    // 0x7ec4a8: ldur            x0, [fp, #-0x20]
    // 0x7ec4ac: stur            x2, [fp, #-0x10]
    // 0x7ec4b0: StoreField: r2->field_f = r0
    //     0x7ec4b0: stur            w0, [x2, #0xf]
    // 0x7ec4b4: r1 = <Widget>
    //     0x7ec4b4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ec4b8: r0 = AllocateGrowableArray()
    //     0x7ec4b8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ec4bc: mov             x3, x0
    // 0x7ec4c0: ldur            x0, [fp, #-0x10]
    // 0x7ec4c4: stur            x3, [fp, #-0x20]
    // 0x7ec4c8: StoreField: r3->field_f = r0
    //     0x7ec4c8: stur            w0, [x3, #0xf]
    // 0x7ec4cc: r0 = 2
    //     0x7ec4cc: mov             x0, #2
    // 0x7ec4d0: StoreField: r3->field_b = r0
    //     0x7ec4d0: stur            w0, [x3, #0xb]
    // 0x7ec4d4: r1 = _ConstMap len:12
    //     0x7ec4d4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ec4d8: r2 = 1200
    //     0x7ec4d8: mov             x2, #0x4b0
    // 0x7ec4dc: r0 = []()
    //     0x7ec4dc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ec4e0: stur            x0, [fp, #-0x10]
    // 0x7ec4e4: cmp             w0, NULL
    // 0x7ec4e8: b.eq            #0x7ec78c
    // 0x7ec4ec: r0 = TextStyle()
    //     0x7ec4ec: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ec4f0: mov             x1, x0
    // 0x7ec4f4: r0 = true
    //     0x7ec4f4: add             x0, NULL, #0x20  ; true
    // 0x7ec4f8: stur            x1, [fp, #-0x38]
    // 0x7ec4fc: StoreField: r1->field_7 = r0
    //     0x7ec4fc: stur            w0, [x1, #7]
    // 0x7ec500: ldur            x2, [fp, #-0x10]
    // 0x7ec504: StoreField: r1->field_b = r2
    //     0x7ec504: stur            w2, [x1, #0xb]
    // 0x7ec508: r2 = 12.000000
    //     0x7ec508: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7ec50c: ldr             x2, [x2, #0xae0]
    // 0x7ec510: StoreField: r1->field_1f = r2
    //     0x7ec510: stur            w2, [x1, #0x1f]
    // 0x7ec514: r0 = Text()
    //     0x7ec514: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ec518: mov             x3, x0
    // 0x7ec51c: r0 = "Rehberinizle iletişim kurun"
    //     0x7ec51c: add             x0, PP, #0x15, lsl #12  ; [pp+0x159e0] "Rehberinizle iletişim kurun"
    //     0x7ec520: ldr             x0, [x0, #0x9e0]
    // 0x7ec524: stur            x3, [fp, #-0x10]
    // 0x7ec528: StoreField: r3->field_b = r0
    //     0x7ec528: stur            w0, [x3, #0xb]
    // 0x7ec52c: ldur            x0, [fp, #-0x38]
    // 0x7ec530: StoreField: r3->field_13 = r0
    //     0x7ec530: stur            w0, [x3, #0x13]
    // 0x7ec534: r1 = Null
    //     0x7ec534: mov             x1, NULL
    // 0x7ec538: r2 = 4
    //     0x7ec538: mov             x2, #4
    // 0x7ec53c: r0 = AllocateArray()
    //     0x7ec53c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ec540: stur            x0, [fp, #-0x38]
    // 0x7ec544: r16 = Instance_SizedBox
    //     0x7ec544: add             x16, PP, #0x15, lsl #12  ; [pp+0x15620] Obj!SizedBox@a1f9b1
    //     0x7ec548: ldr             x16, [x16, #0x620]
    // 0x7ec54c: StoreField: r0->field_f = r16
    //     0x7ec54c: stur            w16, [x0, #0xf]
    // 0x7ec550: ldur            x1, [fp, #-0x10]
    // 0x7ec554: StoreField: r0->field_13 = r1
    //     0x7ec554: stur            w1, [x0, #0x13]
    // 0x7ec558: r1 = <Widget>
    //     0x7ec558: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ec55c: r0 = AllocateGrowableArray()
    //     0x7ec55c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ec560: mov             x1, x0
    // 0x7ec564: ldur            x0, [fp, #-0x38]
    // 0x7ec568: StoreField: r1->field_f = r0
    //     0x7ec568: stur            w0, [x1, #0xf]
    // 0x7ec56c: r0 = 4
    //     0x7ec56c: mov             x0, #4
    // 0x7ec570: StoreField: r1->field_b = r0
    //     0x7ec570: stur            w0, [x1, #0xb]
    // 0x7ec574: mov             x2, x1
    // 0x7ec578: ldur            x1, [fp, #-0x20]
    // 0x7ec57c: r0 = addAll()
    //     0x7ec57c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7ec580: r0 = Column()
    //     0x7ec580: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ec584: mov             x2, x0
    // 0x7ec588: r0 = Instance_Axis
    //     0x7ec588: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ec58c: stur            x2, [fp, #-0x10]
    // 0x7ec590: StoreField: r2->field_f = r0
    //     0x7ec590: stur            w0, [x2, #0xf]
    // 0x7ec594: r0 = Instance_MainAxisAlignment
    //     0x7ec594: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ec598: ldr             x0, [x0, #0x230]
    // 0x7ec59c: StoreField: r2->field_13 = r0
    //     0x7ec59c: stur            w0, [x2, #0x13]
    // 0x7ec5a0: r3 = Instance_MainAxisSize
    //     0x7ec5a0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ec5a4: ldr             x3, [x3, #0x330]
    // 0x7ec5a8: ArrayStore: r2[0] = r3  ; List_4
    //     0x7ec5a8: stur            w3, [x2, #0x17]
    // 0x7ec5ac: r1 = Instance_CrossAxisAlignment
    //     0x7ec5ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ec5b0: ldr             x1, [x1, #0x238]
    // 0x7ec5b4: StoreField: r2->field_1b = r1
    //     0x7ec5b4: stur            w1, [x2, #0x1b]
    // 0x7ec5b8: r4 = Instance_VerticalDirection
    //     0x7ec5b8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ec5bc: ldr             x4, [x4, #0x340]
    // 0x7ec5c0: StoreField: r2->field_23 = r4
    //     0x7ec5c0: stur            w4, [x2, #0x23]
    // 0x7ec5c4: r5 = Instance_Clip
    //     0x7ec5c4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ec5c8: ldr             x5, [x5, #0x348]
    // 0x7ec5cc: StoreField: r2->field_2b = r5
    //     0x7ec5cc: stur            w5, [x2, #0x2b]
    // 0x7ec5d0: StoreField: r2->field_2f = rZR
    //     0x7ec5d0: stur            xzr, [x2, #0x2f]
    // 0x7ec5d4: ldur            x1, [fp, #-0x20]
    // 0x7ec5d8: StoreField: r2->field_b = r1
    //     0x7ec5d8: stur            w1, [x2, #0xb]
    // 0x7ec5dc: r1 = <FlexParentData>
    //     0x7ec5dc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7ec5e0: ldr             x1, [x1, #0x340]
    // 0x7ec5e4: r0 = Expanded()
    //     0x7ec5e4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7ec5e8: mov             x3, x0
    // 0x7ec5ec: r0 = 1
    //     0x7ec5ec: mov             x0, #1
    // 0x7ec5f0: stur            x3, [fp, #-0x20]
    // 0x7ec5f4: StoreField: r3->field_13 = r0
    //     0x7ec5f4: stur            x0, [x3, #0x13]
    // 0x7ec5f8: r0 = Instance_FlexFit
    //     0x7ec5f8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7ec5fc: ldr             x0, [x0, #0x348]
    // 0x7ec600: StoreField: r3->field_1b = r0
    //     0x7ec600: stur            w0, [x3, #0x1b]
    // 0x7ec604: ldur            x0, [fp, #-0x10]
    // 0x7ec608: StoreField: r3->field_b = r0
    //     0x7ec608: stur            w0, [x3, #0xb]
    // 0x7ec60c: r1 = _ConstMap len:12
    //     0x7ec60c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ec610: r2 = 800
    //     0x7ec610: mov             x2, #0x320
    // 0x7ec614: r0 = []()
    //     0x7ec614: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ec618: stur            x0, [fp, #-0x10]
    // 0x7ec61c: cmp             w0, NULL
    // 0x7ec620: b.eq            #0x7ec790
    // 0x7ec624: r0 = Icon()
    //     0x7ec624: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ec628: mov             x3, x0
    // 0x7ec62c: r0 = Instance_IconData
    //     0x7ec62c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x7ec630: ldr             x0, [x0, #0x350]
    // 0x7ec634: stur            x3, [fp, #-0x38]
    // 0x7ec638: StoreField: r3->field_b = r0
    //     0x7ec638: stur            w0, [x3, #0xb]
    // 0x7ec63c: r0 = 16.000000
    //     0x7ec63c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7ec640: ldr             x0, [x0, #0x358]
    // 0x7ec644: StoreField: r3->field_f = r0
    //     0x7ec644: stur            w0, [x3, #0xf]
    // 0x7ec648: ldur            x0, [fp, #-0x10]
    // 0x7ec64c: StoreField: r3->field_23 = r0
    //     0x7ec64c: stur            w0, [x3, #0x23]
    // 0x7ec650: r1 = Null
    //     0x7ec650: mov             x1, NULL
    // 0x7ec654: r2 = 8
    //     0x7ec654: mov             x2, #8
    // 0x7ec658: r0 = AllocateArray()
    //     0x7ec658: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ec65c: mov             x2, x0
    // 0x7ec660: ldur            x0, [fp, #-0x30]
    // 0x7ec664: stur            x2, [fp, #-0x10]
    // 0x7ec668: StoreField: r2->field_f = r0
    //     0x7ec668: stur            w0, [x2, #0xf]
    // 0x7ec66c: r16 = Instance_SizedBox
    //     0x7ec66c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15490] Obj!SizedBox@a1fd31
    //     0x7ec670: ldr             x16, [x16, #0x490]
    // 0x7ec674: StoreField: r2->field_13 = r16
    //     0x7ec674: stur            w16, [x2, #0x13]
    // 0x7ec678: ldur            x0, [fp, #-0x20]
    // 0x7ec67c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ec67c: stur            w0, [x2, #0x17]
    // 0x7ec680: ldur            x0, [fp, #-0x38]
    // 0x7ec684: StoreField: r2->field_1b = r0
    //     0x7ec684: stur            w0, [x2, #0x1b]
    // 0x7ec688: r1 = <Widget>
    //     0x7ec688: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ec68c: r0 = AllocateGrowableArray()
    //     0x7ec68c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ec690: mov             x1, x0
    // 0x7ec694: ldur            x0, [fp, #-0x10]
    // 0x7ec698: stur            x1, [fp, #-0x20]
    // 0x7ec69c: StoreField: r1->field_f = r0
    //     0x7ec69c: stur            w0, [x1, #0xf]
    // 0x7ec6a0: r0 = 8
    //     0x7ec6a0: mov             x0, #8
    // 0x7ec6a4: StoreField: r1->field_b = r0
    //     0x7ec6a4: stur            w0, [x1, #0xb]
    // 0x7ec6a8: r0 = Row()
    //     0x7ec6a8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7ec6ac: mov             x1, x0
    // 0x7ec6b0: r0 = Instance_Axis
    //     0x7ec6b0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7ec6b4: stur            x1, [fp, #-0x10]
    // 0x7ec6b8: StoreField: r1->field_f = r0
    //     0x7ec6b8: stur            w0, [x1, #0xf]
    // 0x7ec6bc: r0 = Instance_MainAxisAlignment
    //     0x7ec6bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ec6c0: ldr             x0, [x0, #0x230]
    // 0x7ec6c4: StoreField: r1->field_13 = r0
    //     0x7ec6c4: stur            w0, [x1, #0x13]
    // 0x7ec6c8: r0 = Instance_MainAxisSize
    //     0x7ec6c8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ec6cc: ldr             x0, [x0, #0x330]
    // 0x7ec6d0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ec6d0: stur            w0, [x1, #0x17]
    // 0x7ec6d4: r0 = Instance_CrossAxisAlignment
    //     0x7ec6d4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ec6d8: ldr             x0, [x0, #0x338]
    // 0x7ec6dc: StoreField: r1->field_1b = r0
    //     0x7ec6dc: stur            w0, [x1, #0x1b]
    // 0x7ec6e0: r0 = Instance_VerticalDirection
    //     0x7ec6e0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ec6e4: ldr             x0, [x0, #0x340]
    // 0x7ec6e8: StoreField: r1->field_23 = r0
    //     0x7ec6e8: stur            w0, [x1, #0x23]
    // 0x7ec6ec: r0 = Instance_Clip
    //     0x7ec6ec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ec6f0: ldr             x0, [x0, #0x348]
    // 0x7ec6f4: StoreField: r1->field_2b = r0
    //     0x7ec6f4: stur            w0, [x1, #0x2b]
    // 0x7ec6f8: StoreField: r1->field_2f = rZR
    //     0x7ec6f8: stur            xzr, [x1, #0x2f]
    // 0x7ec6fc: ldur            x0, [fp, #-0x20]
    // 0x7ec700: StoreField: r1->field_b = r0
    //     0x7ec700: stur            w0, [x1, #0xb]
    // 0x7ec704: r0 = Container()
    //     0x7ec704: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ec708: stur            x0, [fp, #-0x20]
    // 0x7ec70c: r16 = Instance_EdgeInsets
    //     0x7ec70c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15498] Obj!EdgeInsets@a0c6e1
    //     0x7ec710: ldr             x16, [x16, #0x498]
    // 0x7ec714: ldur            lr, [fp, #-0x28]
    // 0x7ec718: stp             lr, x16, [SP, #8]
    // 0x7ec71c: ldur            x16, [fp, #-0x10]
    // 0x7ec720: str             x16, [SP]
    // 0x7ec724: mov             x1, x0
    // 0x7ec728: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ec728: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ec72c: ldr             x4, [x4, #0x1e8]
    // 0x7ec730: r0 = Container()
    //     0x7ec730: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ec734: r0 = InkWell()
    //     0x7ec734: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7ec738: ldur            x1, [fp, #-0x20]
    // 0x7ec73c: StoreField: r0->field_b = r1
    //     0x7ec73c: stur            w1, [x0, #0xb]
    // 0x7ec740: ldur            x1, [fp, #-8]
    // 0x7ec744: StoreField: r0->field_f = r1
    //     0x7ec744: stur            w1, [x0, #0xf]
    // 0x7ec748: r1 = true
    //     0x7ec748: add             x1, NULL, #0x20  ; true
    // 0x7ec74c: StoreField: r0->field_47 = r1
    //     0x7ec74c: stur            w1, [x0, #0x47]
    // 0x7ec750: r2 = Instance_BoxShape
    //     0x7ec750: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ec754: ldr             x2, [x2, #0x1c8]
    // 0x7ec758: StoreField: r0->field_4b = r2
    //     0x7ec758: stur            w2, [x0, #0x4b]
    // 0x7ec75c: ldur            x2, [fp, #-0x18]
    // 0x7ec760: StoreField: r0->field_53 = r2
    //     0x7ec760: stur            w2, [x0, #0x53]
    // 0x7ec764: StoreField: r0->field_73 = r1
    //     0x7ec764: stur            w1, [x0, #0x73]
    // 0x7ec768: r2 = false
    //     0x7ec768: add             x2, NULL, #0x30  ; false
    // 0x7ec76c: StoreField: r0->field_77 = r2
    //     0x7ec76c: stur            w2, [x0, #0x77]
    // 0x7ec770: StoreField: r0->field_87 = r1
    //     0x7ec770: stur            w1, [x0, #0x87]
    // 0x7ec774: StoreField: r0->field_7f = r2
    //     0x7ec774: stur            w2, [x0, #0x7f]
    // 0x7ec778: LeaveFrame
    //     0x7ec778: mov             SP, fp
    //     0x7ec77c: ldp             fp, lr, [SP], #0x10
    // 0x7ec780: ret
    //     0x7ec780: ret             
    // 0x7ec784: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ec784: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ec788: b               #0x7ec1f4
    // 0x7ec78c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ec78c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7ec790: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ec790: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// lib: , url: package:umrem_demo/features/admin/widgets/drawer.dart

// class id: 1049545, size: 0x8
class :: {

  static _ buildAdminDrawer(/* No info */) {
    // ** addr: 0x6ce970, size: 0x9f8
    // 0x6ce970: EnterFrame
    //     0x6ce970: stp             fp, lr, [SP, #-0x10]!
    //     0x6ce974: mov             fp, SP
    // 0x6ce978: AllocStack(0x50)
    //     0x6ce978: sub             SP, SP, #0x50
    // 0x6ce97c: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */)
    //     0x6ce97c: stur            x1, [fp, #-8]
    // 0x6ce980: CheckStackOverflow
    //     0x6ce980: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ce984: cmp             SP, x16
    //     0x6ce988: b.ls            #0x6cf360
    // 0x6ce98c: r1 = 1
    //     0x6ce98c: mov             x1, #1
    // 0x6ce990: r0 = AllocateContext()
    //     0x6ce990: bl              #0x927010  ; AllocateContextStub
    // 0x6ce994: mov             x2, x0
    // 0x6ce998: ldur            x0, [fp, #-8]
    // 0x6ce99c: stur            x2, [fp, #-0x18]
    // 0x6ce9a0: StoreField: r2->field_f = r0
    //     0x6ce9a0: stur            w0, [x2, #0xf]
    // 0x6ce9a4: r0 = LoadStaticField(0xfe4)
    //     0x6ce9a4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6ce9a8: ldr             x0, [x0, #0x1fc8]
    // 0x6ce9ac: stur            x0, [fp, #-0x10]
    // 0x6ce9b0: r3 = LoadStaticField(0xfe8)
    //     0x6ce9b0: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x6ce9b4: ldr             x3, [x3, #0x1fd0]
    // 0x6ce9b8: stur            x3, [fp, #-8]
    // 0x6ce9bc: r16 = 0.100000
    //     0x6ce9bc: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6ce9c0: ldr             x16, [x16, #0x1f8]
    // 0x6ce9c4: str             x16, [SP]
    // 0x6ce9c8: r1 = Instance_Color
    //     0x6ce9c8: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6ce9cc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ce9cc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ce9d0: ldr             x4, [x4, #0x198]
    // 0x6ce9d4: r0 = withValues()
    //     0x6ce9d4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ce9d8: stur            x0, [fp, #-0x20]
    // 0x6ce9dc: r0 = BoxShadow()
    //     0x6ce9dc: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6ce9e0: stur            x0, [fp, #-0x28]
    // 0x6ce9e4: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6ce9e4: stur            xzr, [x0, #0x17]
    // 0x6ce9e8: r1 = Instance_BlurStyle
    //     0x6ce9e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6ce9ec: ldr             x1, [x1, #0x9b0]
    // 0x6ce9f0: StoreField: r0->field_1f = r1
    //     0x6ce9f0: stur            w1, [x0, #0x1f]
    // 0x6ce9f4: ldur            x1, [fp, #-0x20]
    // 0x6ce9f8: StoreField: r0->field_7 = r1
    //     0x6ce9f8: stur            w1, [x0, #7]
    // 0x6ce9fc: r1 = Instance_Offset
    //     0x6ce9fc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x6cea00: ldr             x1, [x1, #0x9b8]
    // 0x6cea04: StoreField: r0->field_b = r1
    //     0x6cea04: stur            w1, [x0, #0xb]
    // 0x6cea08: d0 = 8.000000
    //     0x6cea08: fmov            d0, #8.00000000
    // 0x6cea0c: StoreField: r0->field_f = d0
    //     0x6cea0c: stur            d0, [x0, #0xf]
    // 0x6cea10: r1 = Null
    //     0x6cea10: mov             x1, NULL
    // 0x6cea14: r2 = 2
    //     0x6cea14: mov             x2, #2
    // 0x6cea18: r0 = AllocateArray()
    //     0x6cea18: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cea1c: mov             x2, x0
    // 0x6cea20: ldur            x0, [fp, #-0x28]
    // 0x6cea24: stur            x2, [fp, #-0x20]
    // 0x6cea28: StoreField: r2->field_f = r0
    //     0x6cea28: stur            w0, [x2, #0xf]
    // 0x6cea2c: r1 = <BoxShadow>
    //     0x6cea2c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6cea30: ldr             x1, [x1, #0x9c0]
    // 0x6cea34: r0 = AllocateGrowableArray()
    //     0x6cea34: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cea38: mov             x1, x0
    // 0x6cea3c: ldur            x0, [fp, #-0x20]
    // 0x6cea40: stur            x1, [fp, #-0x28]
    // 0x6cea44: StoreField: r1->field_f = r0
    //     0x6cea44: stur            w0, [x1, #0xf]
    // 0x6cea48: r2 = 2
    //     0x6cea48: mov             x2, #2
    // 0x6cea4c: StoreField: r1->field_b = r2
    //     0x6cea4c: stur            w2, [x1, #0xb]
    // 0x6cea50: r0 = BoxDecoration()
    //     0x6cea50: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6cea54: mov             x2, x0
    // 0x6cea58: r0 = Instance_Color
    //     0x6cea58: add             x0, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x6cea5c: ldr             x0, [x0, #0x790]
    // 0x6cea60: stur            x2, [fp, #-0x20]
    // 0x6cea64: StoreField: r2->field_7 = r0
    //     0x6cea64: stur            w0, [x2, #7]
    // 0x6cea68: ldur            x0, [fp, #-0x28]
    // 0x6cea6c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cea6c: stur            w0, [x2, #0x17]
    // 0x6cea70: r0 = Instance_BoxShape
    //     0x6cea70: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6cea74: ldr             x0, [x0, #0x1c8]
    // 0x6cea78: StoreField: r2->field_23 = r0
    //     0x6cea78: stur            w0, [x2, #0x23]
    // 0x6cea7c: r16 = 0.200000
    //     0x6cea7c: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6cea80: ldr             x16, [x16, #0x1f0]
    // 0x6cea84: str             x16, [SP]
    // 0x6cea88: r1 = Instance_Color
    //     0x6cea88: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6cea8c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6cea8c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6cea90: ldr             x4, [x4, #0x198]
    // 0x6cea94: r0 = withValues()
    //     0x6cea94: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6cea98: stur            x0, [fp, #-0x28]
    // 0x6cea9c: r0 = BoxDecoration()
    //     0x6cea9c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ceaa0: mov             x1, x0
    // 0x6ceaa4: ldur            x0, [fp, #-0x28]
    // 0x6ceaa8: stur            x1, [fp, #-0x30]
    // 0x6ceaac: StoreField: r1->field_7 = r0
    //     0x6ceaac: stur            w0, [x1, #7]
    // 0x6ceab0: r0 = Instance_BoxShape
    //     0x6ceab0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6ceab4: ldr             x0, [x0, #0x1a0]
    // 0x6ceab8: StoreField: r1->field_23 = r0
    //     0x6ceab8: stur            w0, [x1, #0x23]
    // 0x6ceabc: r0 = Container()
    //     0x6ceabc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ceac0: stur            x0, [fp, #-0x28]
    // 0x6ceac4: r16 = 60.000000
    //     0x6ceac4: add             x16, PP, #0x15, lsl #12  ; [pp+0x155b0] 60
    //     0x6ceac8: ldr             x16, [x16, #0x5b0]
    // 0x6ceacc: r30 = 60.000000
    //     0x6ceacc: add             lr, PP, #0x15, lsl #12  ; [pp+0x155b0] 60
    //     0x6cead0: ldr             lr, [lr, #0x5b0]
    // 0x6cead4: stp             lr, x16, [SP, #0x10]
    // 0x6cead8: ldur            x16, [fp, #-0x30]
    // 0x6ceadc: r30 = Instance_Icon
    //     0x6ceadc: add             lr, PP, #0x1a, lsl #12  ; [pp+0x1a580] Obj!Icon@a1e0b1
    //     0x6ceae0: ldr             lr, [lr, #0x580]
    // 0x6ceae4: stp             lr, x16, [SP]
    // 0x6ceae8: mov             x1, x0
    // 0x6ceaec: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6ceaec: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6ceaf0: ldr             x4, [x4, #0x990]
    // 0x6ceaf4: r0 = Container()
    //     0x6ceaf4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ceaf8: r1 = Null
    //     0x6ceaf8: mov             x1, NULL
    // 0x6ceafc: r2 = 6
    //     0x6ceafc: mov             x2, #6
    // 0x6ceb00: r0 = AllocateArray()
    //     0x6ceb00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ceb04: mov             x2, x0
    // 0x6ceb08: ldur            x0, [fp, #-0x28]
    // 0x6ceb0c: stur            x2, [fp, #-0x30]
    // 0x6ceb10: StoreField: r2->field_f = r0
    //     0x6ceb10: stur            w0, [x2, #0xf]
    // 0x6ceb14: r16 = Instance_SizedBox
    //     0x6ceb14: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ceb18: ldr             x16, [x16, #0x220]
    // 0x6ceb1c: StoreField: r2->field_13 = r16
    //     0x6ceb1c: stur            w16, [x2, #0x13]
    // 0x6ceb20: r16 = Instance_Text
    //     0x6ceb20: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a588] Obj!Text@a1aff1
    //     0x6ceb24: ldr             x16, [x16, #0x588]
    // 0x6ceb28: ArrayStore: r2[0] = r16  ; List_4
    //     0x6ceb28: stur            w16, [x2, #0x17]
    // 0x6ceb2c: r1 = <Widget>
    //     0x6ceb2c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ceb30: r0 = AllocateGrowableArray()
    //     0x6ceb30: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ceb34: mov             x2, x0
    // 0x6ceb38: ldur            x0, [fp, #-0x30]
    // 0x6ceb3c: stur            x2, [fp, #-0x28]
    // 0x6ceb40: StoreField: r2->field_f = r0
    //     0x6ceb40: stur            w0, [x2, #0xf]
    // 0x6ceb44: r0 = 6
    //     0x6ceb44: mov             x0, #6
    // 0x6ceb48: StoreField: r2->field_b = r0
    //     0x6ceb48: stur            w0, [x2, #0xb]
    // 0x6ceb4c: ldur            x0, [fp, #-8]
    // 0x6ceb50: tbz             w0, #4, #0x6cec6c
    // 0x6ceb54: ldur            x0, [fp, #-0x10]
    // 0x6ceb58: cmp             w0, NULL
    // 0x6ceb5c: b.eq            #0x6cec6c
    // 0x6ceb60: LoadField: r1 = r0->field_4b
    //     0x6ceb60: ldur            w1, [x0, #0x4b]
    // 0x6ceb64: DecompressPointer r1
    //     0x6ceb64: add             x1, x1, HEAP, lsl #32
    // 0x6ceb68: cmp             w1, NULL
    // 0x6ceb6c: b.eq            #0x6cec6c
    // 0x6ceb70: r16 = 0.200000
    //     0x6ceb70: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6ceb74: ldr             x16, [x16, #0x1f0]
    // 0x6ceb78: str             x16, [SP]
    // 0x6ceb7c: r1 = Instance_Color
    //     0x6ceb7c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ceb80: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ceb80: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ceb84: ldr             x4, [x4, #0x198]
    // 0x6ceb88: r0 = withValues()
    //     0x6ceb88: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ceb8c: stur            x0, [fp, #-8]
    // 0x6ceb90: r0 = Radius()
    //     0x6ceb90: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ceb94: d0 = 12.000000
    //     0x6ceb94: fmov            d0, #12.00000000
    // 0x6ceb98: stur            x0, [fp, #-0x10]
    // 0x6ceb9c: StoreField: r0->field_7 = d0
    //     0x6ceb9c: stur            d0, [x0, #7]
    // 0x6ceba0: StoreField: r0->field_f = d0
    //     0x6ceba0: stur            d0, [x0, #0xf]
    // 0x6ceba4: r0 = BorderRadius()
    //     0x6ceba4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ceba8: mov             x1, x0
    // 0x6cebac: ldur            x0, [fp, #-0x10]
    // 0x6cebb0: stur            x1, [fp, #-0x30]
    // 0x6cebb4: StoreField: r1->field_7 = r0
    //     0x6cebb4: stur            w0, [x1, #7]
    // 0x6cebb8: StoreField: r1->field_b = r0
    //     0x6cebb8: stur            w0, [x1, #0xb]
    // 0x6cebbc: StoreField: r1->field_f = r0
    //     0x6cebbc: stur            w0, [x1, #0xf]
    // 0x6cebc0: StoreField: r1->field_13 = r0
    //     0x6cebc0: stur            w0, [x1, #0x13]
    // 0x6cebc4: r0 = BoxDecoration()
    //     0x6cebc4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6cebc8: mov             x1, x0
    // 0x6cebcc: ldur            x0, [fp, #-8]
    // 0x6cebd0: stur            x1, [fp, #-0x10]
    // 0x6cebd4: StoreField: r1->field_7 = r0
    //     0x6cebd4: stur            w0, [x1, #7]
    // 0x6cebd8: ldur            x0, [fp, #-0x30]
    // 0x6cebdc: StoreField: r1->field_13 = r0
    //     0x6cebdc: stur            w0, [x1, #0x13]
    // 0x6cebe0: r0 = Instance_BoxShape
    //     0x6cebe0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6cebe4: ldr             x0, [x0, #0x1c8]
    // 0x6cebe8: StoreField: r1->field_23 = r0
    //     0x6cebe8: stur            w0, [x1, #0x23]
    // 0x6cebec: r0 = Container()
    //     0x6cebec: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6cebf0: stur            x0, [fp, #-8]
    // 0x6cebf4: r16 = Instance_EdgeInsets
    //     0x6cebf4: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a590] Obj!EdgeInsets@a0c231
    //     0x6cebf8: ldr             x16, [x16, #0x590]
    // 0x6cebfc: ldur            lr, [fp, #-0x10]
    // 0x6cec00: stp             lr, x16, [SP, #8]
    // 0x6cec04: r16 = Instance_Text
    //     0x6cec04: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a598] Obj!Text@a1afa1
    //     0x6cec08: ldr             x16, [x16, #0x598]
    // 0x6cec0c: str             x16, [SP]
    // 0x6cec10: mov             x1, x0
    // 0x6cec14: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6cec14: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6cec18: ldr             x4, [x4, #0x1e8]
    // 0x6cec1c: r0 = Container()
    //     0x6cec1c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6cec20: r1 = Null
    //     0x6cec20: mov             x1, NULL
    // 0x6cec24: r2 = 4
    //     0x6cec24: mov             x2, #4
    // 0x6cec28: r0 = AllocateArray()
    //     0x6cec28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cec2c: stur            x0, [fp, #-0x10]
    // 0x6cec30: r16 = Instance_SizedBox
    //     0x6cec30: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x6cec34: ldr             x16, [x16, #0x338]
    // 0x6cec38: StoreField: r0->field_f = r16
    //     0x6cec38: stur            w16, [x0, #0xf]
    // 0x6cec3c: ldur            x1, [fp, #-8]
    // 0x6cec40: StoreField: r0->field_13 = r1
    //     0x6cec40: stur            w1, [x0, #0x13]
    // 0x6cec44: r1 = <Widget>
    //     0x6cec44: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cec48: r0 = AllocateGrowableArray()
    //     0x6cec48: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cec4c: mov             x1, x0
    // 0x6cec50: ldur            x0, [fp, #-0x10]
    // 0x6cec54: StoreField: r1->field_f = r0
    //     0x6cec54: stur            w0, [x1, #0xf]
    // 0x6cec58: r0 = 4
    //     0x6cec58: mov             x0, #4
    // 0x6cec5c: StoreField: r1->field_b = r0
    //     0x6cec5c: stur            w0, [x1, #0xb]
    // 0x6cec60: mov             x2, x1
    // 0x6cec64: ldur            x1, [fp, #-0x28]
    // 0x6cec68: r0 = addAll()
    //     0x6cec68: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6cec6c: ldur            x0, [fp, #-0x28]
    // 0x6cec70: r0 = Column()
    //     0x6cec70: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cec74: mov             x1, x0
    // 0x6cec78: r0 = Instance_Axis
    //     0x6cec78: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cec7c: stur            x1, [fp, #-8]
    // 0x6cec80: StoreField: r1->field_f = r0
    //     0x6cec80: stur            w0, [x1, #0xf]
    // 0x6cec84: r2 = Instance_MainAxisAlignment
    //     0x6cec84: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6cec88: ldr             x2, [x2, #0x328]
    // 0x6cec8c: StoreField: r1->field_13 = r2
    //     0x6cec8c: stur            w2, [x1, #0x13]
    // 0x6cec90: r2 = Instance_MainAxisSize
    //     0x6cec90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cec94: ldr             x2, [x2, #0x330]
    // 0x6cec98: ArrayStore: r1[0] = r2  ; List_4
    //     0x6cec98: stur            w2, [x1, #0x17]
    // 0x6cec9c: r3 = Instance_CrossAxisAlignment
    //     0x6cec9c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ceca0: ldr             x3, [x3, #0x338]
    // 0x6ceca4: StoreField: r1->field_1b = r3
    //     0x6ceca4: stur            w3, [x1, #0x1b]
    // 0x6ceca8: r4 = Instance_VerticalDirection
    //     0x6ceca8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cecac: ldr             x4, [x4, #0x340]
    // 0x6cecb0: StoreField: r1->field_23 = r4
    //     0x6cecb0: stur            w4, [x1, #0x23]
    // 0x6cecb4: r5 = Instance_Clip
    //     0x6cecb4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cecb8: ldr             x5, [x5, #0x348]
    // 0x6cecbc: StoreField: r1->field_2b = r5
    //     0x6cecbc: stur            w5, [x1, #0x2b]
    // 0x6cecc0: StoreField: r1->field_2f = rZR
    //     0x6cecc0: stur            xzr, [x1, #0x2f]
    // 0x6cecc4: ldur            x6, [fp, #-0x28]
    // 0x6cecc8: StoreField: r1->field_b = r6
    //     0x6cecc8: stur            w6, [x1, #0xb]
    // 0x6ceccc: r0 = SafeArea()
    //     0x6ceccc: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x6cecd0: mov             x1, x0
    // 0x6cecd4: r0 = true
    //     0x6cecd4: add             x0, NULL, #0x20  ; true
    // 0x6cecd8: stur            x1, [fp, #-0x10]
    // 0x6cecdc: StoreField: r1->field_b = r0
    //     0x6cecdc: stur            w0, [x1, #0xb]
    // 0x6cece0: StoreField: r1->field_f = r0
    //     0x6cece0: stur            w0, [x1, #0xf]
    // 0x6cece4: StoreField: r1->field_13 = r0
    //     0x6cece4: stur            w0, [x1, #0x13]
    // 0x6cece8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6cece8: stur            w0, [x1, #0x17]
    // 0x6cecec: r0 = Instance_EdgeInsets
    //     0x6cecec: ldr             x0, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x6cecf0: StoreField: r1->field_1b = r0
    //     0x6cecf0: stur            w0, [x1, #0x1b]
    // 0x6cecf4: r0 = false
    //     0x6cecf4: add             x0, NULL, #0x30  ; false
    // 0x6cecf8: StoreField: r1->field_1f = r0
    //     0x6cecf8: stur            w0, [x1, #0x1f]
    // 0x6cecfc: ldur            x2, [fp, #-8]
    // 0x6ced00: StoreField: r1->field_23 = r2
    //     0x6ced00: stur            w2, [x1, #0x23]
    // 0x6ced04: r0 = Container()
    //     0x6ced04: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ced08: stur            x0, [fp, #-8]
    // 0x6ced0c: r16 = inf
    //     0x6ced0c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6ced10: ldr             x16, [x16, #0xb20]
    // 0x6ced14: r30 = Instance_EdgeInsets
    //     0x6ced14: ldr             lr, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6ced18: stp             lr, x16, [SP, #0x10]
    // 0x6ced1c: ldur            x16, [fp, #-0x20]
    // 0x6ced20: ldur            lr, [fp, #-0x10]
    // 0x6ced24: stp             lr, x16, [SP]
    // 0x6ced28: mov             x1, x0
    // 0x6ced2c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6ced2c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6ced30: ldr             x4, [x4, #0xb28]
    // 0x6ced34: r0 = Container()
    //     0x6ced34: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ced38: r0 = DrawerMenuCard()
    //     0x6ced38: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6ced3c: mov             x3, x0
    // 0x6ced40: r0 = Instance_IconData
    //     0x6ced40: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5a0] Obj!IconData@a09d41
    //     0x6ced44: ldr             x0, [x0, #0x5a0]
    // 0x6ced48: stur            x3, [fp, #-0x10]
    // 0x6ced4c: StoreField: r3->field_b = r0
    //     0x6ced4c: stur            w0, [x3, #0xb]
    // 0x6ced50: r0 = "Anasayfa"
    //     0x6ced50: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5a8] "Anasayfa"
    //     0x6ced54: ldr             x0, [x0, #0x5a8]
    // 0x6ced58: StoreField: r3->field_f = r0
    //     0x6ced58: stur            w0, [x3, #0xf]
    // 0x6ced5c: r0 = "Yönetim paneline dön"
    //     0x6ced5c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5b0] "Yönetim paneline dön"
    //     0x6ced60: ldr             x0, [x0, #0x5b0]
    // 0x6ced64: StoreField: r3->field_13 = r0
    //     0x6ced64: stur            w0, [x3, #0x13]
    // 0x6ced68: ldur            x2, [fp, #-0x18]
    // 0x6ced6c: r1 = Function '<anonymous closure>': static.
    //     0x6ced6c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a5b8] AnonymousClosure: static (0x6cf674), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6ced70: ldr             x1, [x1, #0x5b8]
    // 0x6ced74: r0 = AllocateClosure()
    //     0x6ced74: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ced78: mov             x1, x0
    // 0x6ced7c: ldur            x0, [fp, #-0x10]
    // 0x6ced80: ArrayStore: r0[0] = r1  ; List_4
    //     0x6ced80: stur            w1, [x0, #0x17]
    // 0x6ced84: r3 = false
    //     0x6ced84: add             x3, NULL, #0x30  ; false
    // 0x6ced88: StoreField: r0->field_1b = r3
    //     0x6ced88: stur            w3, [x0, #0x1b]
    // 0x6ced8c: r1 = <Widget>
    //     0x6ced8c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ced90: r2 = 30
    //     0x6ced90: mov             x2, #0x1e
    // 0x6ced94: r0 = AllocateArray()
    //     0x6ced94: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ced98: mov             x1, x0
    // 0x6ced9c: ldur            x0, [fp, #-0x10]
    // 0x6ceda0: stur            x1, [fp, #-0x20]
    // 0x6ceda4: StoreField: r1->field_f = r0
    //     0x6ceda4: stur            w0, [x1, #0xf]
    // 0x6ceda8: r16 = Instance_SizedBox
    //     0x6ceda8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cedac: ldr             x16, [x16, #0x220]
    // 0x6cedb0: StoreField: r1->field_13 = r16
    //     0x6cedb0: stur            w16, [x1, #0x13]
    // 0x6cedb4: r0 = DrawerMenuCard()
    //     0x6cedb4: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cedb8: mov             x3, x0
    // 0x6cedbc: r0 = Instance_IconData
    //     0x6cedbc: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5c0] Obj!IconData@a09d21
    //     0x6cedc0: ldr             x0, [x0, #0x5c0]
    // 0x6cedc4: stur            x3, [fp, #-0x10]
    // 0x6cedc8: StoreField: r3->field_b = r0
    //     0x6cedc8: stur            w0, [x3, #0xb]
    // 0x6cedcc: r0 = "Takvim"
    //     0x6cedcc: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f28] "Takvim"
    //     0x6cedd0: ldr             x0, [x0, #0xf28]
    // 0x6cedd4: StoreField: r3->field_f = r0
    //     0x6cedd4: stur            w0, [x3, #0xf]
    // 0x6cedd8: r0 = "Etkinlikleri yönet"
    //     0x6cedd8: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5c8] "Etkinlikleri yönet"
    //     0x6ceddc: ldr             x0, [x0, #0x5c8]
    // 0x6cede0: StoreField: r3->field_13 = r0
    //     0x6cede0: stur            w0, [x3, #0x13]
    // 0x6cede4: ldur            x2, [fp, #-0x18]
    // 0x6cede8: r1 = Function '<anonymous closure>': static.
    //     0x6cede8: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a5d0] AnonymousClosure: static (0x6cf608), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cedec: ldr             x1, [x1, #0x5d0]
    // 0x6cedf0: r0 = AllocateClosure()
    //     0x6cedf0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cedf4: mov             x1, x0
    // 0x6cedf8: ldur            x0, [fp, #-0x10]
    // 0x6cedfc: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cedfc: stur            w1, [x0, #0x17]
    // 0x6cee00: r2 = false
    //     0x6cee00: add             x2, NULL, #0x30  ; false
    // 0x6cee04: StoreField: r0->field_1b = r2
    //     0x6cee04: stur            w2, [x0, #0x1b]
    // 0x6cee08: ldur            x1, [fp, #-0x20]
    // 0x6cee0c: ArrayStore: r1[2] = r0  ; List_4
    //     0x6cee0c: add             x25, x1, #0x17
    //     0x6cee10: str             w0, [x25]
    //     0x6cee14: tbz             w0, #0, #0x6cee30
    //     0x6cee18: ldurb           w16, [x1, #-1]
    //     0x6cee1c: ldurb           w17, [x0, #-1]
    //     0x6cee20: and             x16, x17, x16, lsr #2
    //     0x6cee24: tst             x16, HEAP, lsr #32
    //     0x6cee28: b.eq            #0x6cee30
    //     0x6cee2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cee30: ldur            x1, [fp, #-0x20]
    // 0x6cee34: r16 = Instance_SizedBox
    //     0x6cee34: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cee38: ldr             x16, [x16, #0x220]
    // 0x6cee3c: StoreField: r1->field_1b = r16
    //     0x6cee3c: stur            w16, [x1, #0x1b]
    // 0x6cee40: r0 = DrawerMenuCard()
    //     0x6cee40: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cee44: mov             x3, x0
    // 0x6cee48: r0 = Instance_IconData
    //     0x6cee48: add             x0, PP, #0x12, lsl #12  ; [pp+0x12778] Obj!IconData@a09de1
    //     0x6cee4c: ldr             x0, [x0, #0x778]
    // 0x6cee50: stur            x3, [fp, #-0x10]
    // 0x6cee54: StoreField: r3->field_b = r0
    //     0x6cee54: stur            w0, [x3, #0xb]
    // 0x6cee58: r0 = "Kişiler"
    //     0x6cee58: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5d8] "Kişiler"
    //     0x6cee5c: ldr             x0, [x0, #0x5d8]
    // 0x6cee60: StoreField: r3->field_f = r0
    //     0x6cee60: stur            w0, [x3, #0xf]
    // 0x6cee64: r0 = "Kullanıcıları yönet"
    //     0x6cee64: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5e0] "Kullanıcıları yönet"
    //     0x6cee68: ldr             x0, [x0, #0x5e0]
    // 0x6cee6c: StoreField: r3->field_13 = r0
    //     0x6cee6c: stur            w0, [x3, #0x13]
    // 0x6cee70: ldur            x2, [fp, #-0x18]
    // 0x6cee74: r1 = Function '<anonymous closure>': static.
    //     0x6cee74: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a5e8] AnonymousClosure: static (0x6cf59c), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cee78: ldr             x1, [x1, #0x5e8]
    // 0x6cee7c: r0 = AllocateClosure()
    //     0x6cee7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cee80: mov             x1, x0
    // 0x6cee84: ldur            x0, [fp, #-0x10]
    // 0x6cee88: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cee88: stur            w1, [x0, #0x17]
    // 0x6cee8c: r2 = false
    //     0x6cee8c: add             x2, NULL, #0x30  ; false
    // 0x6cee90: StoreField: r0->field_1b = r2
    //     0x6cee90: stur            w2, [x0, #0x1b]
    // 0x6cee94: ldur            x1, [fp, #-0x20]
    // 0x6cee98: ArrayStore: r1[4] = r0  ; List_4
    //     0x6cee98: add             x25, x1, #0x1f
    //     0x6cee9c: str             w0, [x25]
    //     0x6ceea0: tbz             w0, #0, #0x6ceebc
    //     0x6ceea4: ldurb           w16, [x1, #-1]
    //     0x6ceea8: ldurb           w17, [x0, #-1]
    //     0x6ceeac: and             x16, x17, x16, lsr #2
    //     0x6ceeb0: tst             x16, HEAP, lsr #32
    //     0x6ceeb4: b.eq            #0x6ceebc
    //     0x6ceeb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ceebc: ldur            x1, [fp, #-0x20]
    // 0x6ceec0: r16 = Instance_SizedBox
    //     0x6ceec0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6ceec4: ldr             x16, [x16, #0x220]
    // 0x6ceec8: StoreField: r1->field_23 = r16
    //     0x6ceec8: stur            w16, [x1, #0x23]
    // 0x6ceecc: r0 = DrawerMenuCard()
    //     0x6ceecc: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6ceed0: mov             x3, x0
    // 0x6ceed4: r0 = Instance_IconData
    //     0x6ceed4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12788] Obj!IconData@a09dc1
    //     0x6ceed8: ldr             x0, [x0, #0x788]
    // 0x6ceedc: stur            x3, [fp, #-0x10]
    // 0x6ceee0: StoreField: r3->field_b = r0
    //     0x6ceee0: stur            w0, [x3, #0xb]
    // 0x6ceee4: r0 = "Seferler"
    //     0x6ceee4: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ef8] "Seferler"
    //     0x6ceee8: ldr             x0, [x0, #0xef8]
    // 0x6ceeec: StoreField: r3->field_f = r0
    //     0x6ceeec: stur            w0, [x3, #0xf]
    // 0x6ceef0: r0 = "Seferleri yönet"
    //     0x6ceef0: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a5f0] "Seferleri yönet"
    //     0x6ceef4: ldr             x0, [x0, #0x5f0]
    // 0x6ceef8: StoreField: r3->field_13 = r0
    //     0x6ceef8: stur            w0, [x3, #0x13]
    // 0x6ceefc: ldur            x2, [fp, #-0x18]
    // 0x6cef00: r1 = Function '<anonymous closure>': static.
    //     0x6cef00: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a5f8] AnonymousClosure: static (0x6cf530), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cef04: ldr             x1, [x1, #0x5f8]
    // 0x6cef08: r0 = AllocateClosure()
    //     0x6cef08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cef0c: mov             x1, x0
    // 0x6cef10: ldur            x0, [fp, #-0x10]
    // 0x6cef14: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cef14: stur            w1, [x0, #0x17]
    // 0x6cef18: r2 = false
    //     0x6cef18: add             x2, NULL, #0x30  ; false
    // 0x6cef1c: StoreField: r0->field_1b = r2
    //     0x6cef1c: stur            w2, [x0, #0x1b]
    // 0x6cef20: ldur            x1, [fp, #-0x20]
    // 0x6cef24: ArrayStore: r1[6] = r0  ; List_4
    //     0x6cef24: add             x25, x1, #0x27
    //     0x6cef28: str             w0, [x25]
    //     0x6cef2c: tbz             w0, #0, #0x6cef48
    //     0x6cef30: ldurb           w16, [x1, #-1]
    //     0x6cef34: ldurb           w17, [x0, #-1]
    //     0x6cef38: and             x16, x17, x16, lsr #2
    //     0x6cef3c: tst             x16, HEAP, lsr #32
    //     0x6cef40: b.eq            #0x6cef48
    //     0x6cef44: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cef48: ldur            x1, [fp, #-0x20]
    // 0x6cef4c: r16 = Instance_SizedBox
    //     0x6cef4c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cef50: ldr             x16, [x16, #0x220]
    // 0x6cef54: StoreField: r1->field_2b = r16
    //     0x6cef54: stur            w16, [x1, #0x2b]
    // 0x6cef58: r0 = DrawerMenuCard()
    //     0x6cef58: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cef5c: mov             x3, x0
    // 0x6cef60: r0 = Instance_IconData
    //     0x6cef60: add             x0, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x6cef64: ldr             x0, [x0, #0x7a0]
    // 0x6cef68: stur            x3, [fp, #-0x10]
    // 0x6cef6c: StoreField: r3->field_b = r0
    //     0x6cef6c: stur            w0, [x3, #0xb]
    // 0x6cef70: r0 = "Otel & Oda"
    //     0x6cef70: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a600] "Otel & Oda"
    //     0x6cef74: ldr             x0, [x0, #0x600]
    // 0x6cef78: StoreField: r3->field_f = r0
    //     0x6cef78: stur            w0, [x3, #0xf]
    // 0x6cef7c: r0 = "Otelleri ve odaları yönet"
    //     0x6cef7c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a608] "Otelleri ve odaları yönet"
    //     0x6cef80: ldr             x0, [x0, #0x608]
    // 0x6cef84: StoreField: r3->field_13 = r0
    //     0x6cef84: stur            w0, [x3, #0x13]
    // 0x6cef88: ldur            x2, [fp, #-0x18]
    // 0x6cef8c: r1 = Function '<anonymous closure>': static.
    //     0x6cef8c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a610] AnonymousClosure: static (0x6cf4c4), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cef90: ldr             x1, [x1, #0x610]
    // 0x6cef94: r0 = AllocateClosure()
    //     0x6cef94: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cef98: mov             x1, x0
    // 0x6cef9c: ldur            x0, [fp, #-0x10]
    // 0x6cefa0: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cefa0: stur            w1, [x0, #0x17]
    // 0x6cefa4: r2 = false
    //     0x6cefa4: add             x2, NULL, #0x30  ; false
    // 0x6cefa8: StoreField: r0->field_1b = r2
    //     0x6cefa8: stur            w2, [x0, #0x1b]
    // 0x6cefac: ldur            x1, [fp, #-0x20]
    // 0x6cefb0: ArrayStore: r1[8] = r0  ; List_4
    //     0x6cefb0: add             x25, x1, #0x2f
    //     0x6cefb4: str             w0, [x25]
    //     0x6cefb8: tbz             w0, #0, #0x6cefd4
    //     0x6cefbc: ldurb           w16, [x1, #-1]
    //     0x6cefc0: ldurb           w17, [x0, #-1]
    //     0x6cefc4: and             x16, x17, x16, lsr #2
    //     0x6cefc8: tst             x16, HEAP, lsr #32
    //     0x6cefcc: b.eq            #0x6cefd4
    //     0x6cefd0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cefd4: ldur            x1, [fp, #-0x20]
    // 0x6cefd8: r16 = Instance_SizedBox
    //     0x6cefd8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cefdc: ldr             x16, [x16, #0x220]
    // 0x6cefe0: StoreField: r1->field_33 = r16
    //     0x6cefe0: stur            w16, [x1, #0x33]
    // 0x6cefe4: r0 = DrawerMenuCard()
    //     0x6cefe4: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cefe8: mov             x3, x0
    // 0x6cefec: r0 = Instance_IconData
    //     0x6cefec: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f18] Obj!IconData@a09d81
    //     0x6ceff0: ldr             x0, [x0, #0xf18]
    // 0x6ceff4: stur            x3, [fp, #-0x10]
    // 0x6ceff8: StoreField: r3->field_b = r0
    //     0x6ceff8: stur            w0, [x3, #0xb]
    // 0x6ceffc: r0 = "Döviz Kurları"
    //     0x6ceffc: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a618] "Döviz Kurları"
    //     0x6cf000: ldr             x0, [x0, #0x618]
    // 0x6cf004: StoreField: r3->field_f = r0
    //     0x6cf004: stur            w0, [x3, #0xf]
    // 0x6cf008: r0 = "Döviz kurlarını yönet"
    //     0x6cf008: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a620] "Döviz kurlarını yönet"
    //     0x6cf00c: ldr             x0, [x0, #0x620]
    // 0x6cf010: StoreField: r3->field_13 = r0
    //     0x6cf010: stur            w0, [x3, #0x13]
    // 0x6cf014: ldur            x2, [fp, #-0x18]
    // 0x6cf018: r1 = Function '<anonymous closure>': static.
    //     0x6cf018: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a628] AnonymousClosure: static (0x6cf458), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cf01c: ldr             x1, [x1, #0x628]
    // 0x6cf020: r0 = AllocateClosure()
    //     0x6cf020: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cf024: mov             x1, x0
    // 0x6cf028: ldur            x0, [fp, #-0x10]
    // 0x6cf02c: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cf02c: stur            w1, [x0, #0x17]
    // 0x6cf030: r2 = false
    //     0x6cf030: add             x2, NULL, #0x30  ; false
    // 0x6cf034: StoreField: r0->field_1b = r2
    //     0x6cf034: stur            w2, [x0, #0x1b]
    // 0x6cf038: ldur            x1, [fp, #-0x20]
    // 0x6cf03c: ArrayStore: r1[10] = r0  ; List_4
    //     0x6cf03c: add             x25, x1, #0x37
    //     0x6cf040: str             w0, [x25]
    //     0x6cf044: tbz             w0, #0, #0x6cf060
    //     0x6cf048: ldurb           w16, [x1, #-1]
    //     0x6cf04c: ldurb           w17, [x0, #-1]
    //     0x6cf050: and             x16, x17, x16, lsr #2
    //     0x6cf054: tst             x16, HEAP, lsr #32
    //     0x6cf058: b.eq            #0x6cf060
    //     0x6cf05c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cf060: ldur            x1, [fp, #-0x20]
    // 0x6cf064: r16 = Instance_SizedBox
    //     0x6cf064: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cf068: ldr             x16, [x16, #0x220]
    // 0x6cf06c: StoreField: r1->field_3b = r16
    //     0x6cf06c: stur            w16, [x1, #0x3b]
    // 0x6cf070: r0 = DrawerMenuCard()
    //     0x6cf070: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cf074: mov             x3, x0
    // 0x6cf078: r0 = Instance_IconData
    //     0x6cf078: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a630] Obj!IconData@a09d01
    //     0x6cf07c: ldr             x0, [x0, #0x630]
    // 0x6cf080: stur            x3, [fp, #-0x10]
    // 0x6cf084: StoreField: r3->field_b = r0
    //     0x6cf084: stur            w0, [x3, #0xb]
    // 0x6cf088: r0 = "Bildirim Gönder"
    //     0x6cf088: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a638] "Bildirim Gönder"
    //     0x6cf08c: ldr             x0, [x0, #0x638]
    // 0x6cf090: StoreField: r3->field_f = r0
    //     0x6cf090: stur            w0, [x3, #0xf]
    // 0x6cf094: r0 = "Kullanıcılara bildirim gönder"
    //     0x6cf094: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a640] "Kullanıcılara bildirim gönder"
    //     0x6cf098: ldr             x0, [x0, #0x640]
    // 0x6cf09c: StoreField: r3->field_13 = r0
    //     0x6cf09c: stur            w0, [x3, #0x13]
    // 0x6cf0a0: ldur            x2, [fp, #-0x18]
    // 0x6cf0a4: r1 = Function '<anonymous closure>': static.
    //     0x6cf0a4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a648] AnonymousClosure: static (0x6cf3ec), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cf0a8: ldr             x1, [x1, #0x648]
    // 0x6cf0ac: r0 = AllocateClosure()
    //     0x6cf0ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cf0b0: mov             x1, x0
    // 0x6cf0b4: ldur            x0, [fp, #-0x10]
    // 0x6cf0b8: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cf0b8: stur            w1, [x0, #0x17]
    // 0x6cf0bc: r2 = false
    //     0x6cf0bc: add             x2, NULL, #0x30  ; false
    // 0x6cf0c0: StoreField: r0->field_1b = r2
    //     0x6cf0c0: stur            w2, [x0, #0x1b]
    // 0x6cf0c4: ldur            x1, [fp, #-0x20]
    // 0x6cf0c8: ArrayStore: r1[12] = r0  ; List_4
    //     0x6cf0c8: add             x25, x1, #0x3f
    //     0x6cf0cc: str             w0, [x25]
    //     0x6cf0d0: tbz             w0, #0, #0x6cf0ec
    //     0x6cf0d4: ldurb           w16, [x1, #-1]
    //     0x6cf0d8: ldurb           w17, [x0, #-1]
    //     0x6cf0dc: and             x16, x17, x16, lsr #2
    //     0x6cf0e0: tst             x16, HEAP, lsr #32
    //     0x6cf0e4: b.eq            #0x6cf0ec
    //     0x6cf0e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cf0ec: ldur            x1, [fp, #-0x20]
    // 0x6cf0f0: r16 = Instance_SizedBox
    //     0x6cf0f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6cf0f4: ldr             x16, [x16, #0x220]
    // 0x6cf0f8: StoreField: r1->field_43 = r16
    //     0x6cf0f8: stur            w16, [x1, #0x43]
    // 0x6cf0fc: r0 = DrawerMenuCard()
    //     0x6cf0fc: bl              #0x6cf374  ; AllocateDrawerMenuCardStub -> DrawerMenuCard (size=0x20)
    // 0x6cf100: mov             x3, x0
    // 0x6cf104: r0 = Instance_IconData
    //     0x6cf104: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6cf108: ldr             x0, [x0, #0x528]
    // 0x6cf10c: stur            x3, [fp, #-0x10]
    // 0x6cf110: StoreField: r3->field_b = r0
    //     0x6cf110: stur            w0, [x3, #0xb]
    // 0x6cf114: r0 = "Konum Takibi"
    //     0x6cf114: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a68] "Konum Takibi"
    //     0x6cf118: ldr             x0, [x0, #0xa68]
    // 0x6cf11c: StoreField: r3->field_f = r0
    //     0x6cf11c: stur            w0, [x3, #0xf]
    // 0x6cf120: r0 = "Konum takibini yönet"
    //     0x6cf120: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a650] "Konum takibini yönet"
    //     0x6cf124: ldr             x0, [x0, #0x650]
    // 0x6cf128: StoreField: r3->field_13 = r0
    //     0x6cf128: stur            w0, [x3, #0x13]
    // 0x6cf12c: ldur            x2, [fp, #-0x18]
    // 0x6cf130: r1 = Function '<anonymous closure>': static.
    //     0x6cf130: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a658] AnonymousClosure: static (0x6cf380), in [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer (0x6ce970)
    //     0x6cf134: ldr             x1, [x1, #0x658]
    // 0x6cf138: r0 = AllocateClosure()
    //     0x6cf138: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cf13c: mov             x1, x0
    // 0x6cf140: ldur            x0, [fp, #-0x10]
    // 0x6cf144: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cf144: stur            w1, [x0, #0x17]
    // 0x6cf148: r1 = false
    //     0x6cf148: add             x1, NULL, #0x30  ; false
    // 0x6cf14c: StoreField: r0->field_1b = r1
    //     0x6cf14c: stur            w1, [x0, #0x1b]
    // 0x6cf150: ldur            x1, [fp, #-0x20]
    // 0x6cf154: ArrayStore: r1[14] = r0  ; List_4
    //     0x6cf154: add             x25, x1, #0x47
    //     0x6cf158: str             w0, [x25]
    //     0x6cf15c: tbz             w0, #0, #0x6cf178
    //     0x6cf160: ldurb           w16, [x1, #-1]
    //     0x6cf164: ldurb           w17, [x0, #-1]
    //     0x6cf168: and             x16, x17, x16, lsr #2
    //     0x6cf16c: tst             x16, HEAP, lsr #32
    //     0x6cf170: b.eq            #0x6cf178
    //     0x6cf174: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6cf178: r1 = <Widget>
    //     0x6cf178: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cf17c: r0 = AllocateGrowableArray()
    //     0x6cf17c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cf180: mov             x1, x0
    // 0x6cf184: ldur            x0, [fp, #-0x20]
    // 0x6cf188: stur            x1, [fp, #-0x10]
    // 0x6cf18c: StoreField: r1->field_f = r0
    //     0x6cf18c: stur            w0, [x1, #0xf]
    // 0x6cf190: r0 = 30
    //     0x6cf190: mov             x0, #0x1e
    // 0x6cf194: StoreField: r1->field_b = r0
    //     0x6cf194: stur            w0, [x1, #0xb]
    // 0x6cf198: r0 = Column()
    //     0x6cf198: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cf19c: mov             x1, x0
    // 0x6cf1a0: r0 = Instance_Axis
    //     0x6cf1a0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cf1a4: stur            x1, [fp, #-0x18]
    // 0x6cf1a8: StoreField: r1->field_f = r0
    //     0x6cf1a8: stur            w0, [x1, #0xf]
    // 0x6cf1ac: r2 = Instance_MainAxisAlignment
    //     0x6cf1ac: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cf1b0: ldr             x2, [x2, #0x230]
    // 0x6cf1b4: StoreField: r1->field_13 = r2
    //     0x6cf1b4: stur            w2, [x1, #0x13]
    // 0x6cf1b8: r3 = Instance_MainAxisSize
    //     0x6cf1b8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cf1bc: ldr             x3, [x3, #0x330]
    // 0x6cf1c0: ArrayStore: r1[0] = r3  ; List_4
    //     0x6cf1c0: stur            w3, [x1, #0x17]
    // 0x6cf1c4: r4 = Instance_CrossAxisAlignment
    //     0x6cf1c4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6cf1c8: ldr             x4, [x4, #0x238]
    // 0x6cf1cc: StoreField: r1->field_1b = r4
    //     0x6cf1cc: stur            w4, [x1, #0x1b]
    // 0x6cf1d0: r4 = Instance_VerticalDirection
    //     0x6cf1d0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cf1d4: ldr             x4, [x4, #0x340]
    // 0x6cf1d8: StoreField: r1->field_23 = r4
    //     0x6cf1d8: stur            w4, [x1, #0x23]
    // 0x6cf1dc: r5 = Instance_Clip
    //     0x6cf1dc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cf1e0: ldr             x5, [x5, #0x348]
    // 0x6cf1e4: StoreField: r1->field_2b = r5
    //     0x6cf1e4: stur            w5, [x1, #0x2b]
    // 0x6cf1e8: StoreField: r1->field_2f = rZR
    //     0x6cf1e8: stur            xzr, [x1, #0x2f]
    // 0x6cf1ec: ldur            x6, [fp, #-0x10]
    // 0x6cf1f0: StoreField: r1->field_b = r6
    //     0x6cf1f0: stur            w6, [x1, #0xb]
    // 0x6cf1f4: r0 = Container()
    //     0x6cf1f4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6cf1f8: stur            x0, [fp, #-0x10]
    // 0x6cf1fc: r16 = Instance_EdgeInsets
    //     0x6cf1fc: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a660] Obj!EdgeInsets@a0c201
    //     0x6cf200: ldr             x16, [x16, #0x660]
    // 0x6cf204: ldur            lr, [fp, #-0x18]
    // 0x6cf208: stp             lr, x16, [SP]
    // 0x6cf20c: mov             x1, x0
    // 0x6cf210: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, margin, 0x1, null]
    //     0x6cf210: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a668] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "margin", 0x1, Null]
    //     0x6cf214: ldr             x4, [x4, #0x668]
    // 0x6cf218: r0 = Container()
    //     0x6cf218: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6cf21c: r1 = Null
    //     0x6cf21c: mov             x1, NULL
    // 0x6cf220: r2 = 2
    //     0x6cf220: mov             x2, #2
    // 0x6cf224: r0 = AllocateArray()
    //     0x6cf224: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cf228: mov             x2, x0
    // 0x6cf22c: ldur            x0, [fp, #-0x10]
    // 0x6cf230: stur            x2, [fp, #-0x18]
    // 0x6cf234: StoreField: r2->field_f = r0
    //     0x6cf234: stur            w0, [x2, #0xf]
    // 0x6cf238: r1 = <Widget>
    //     0x6cf238: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cf23c: r0 = AllocateGrowableArray()
    //     0x6cf23c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cf240: mov             x1, x0
    // 0x6cf244: ldur            x0, [fp, #-0x18]
    // 0x6cf248: stur            x1, [fp, #-0x10]
    // 0x6cf24c: StoreField: r1->field_f = r0
    //     0x6cf24c: stur            w0, [x1, #0xf]
    // 0x6cf250: r0 = 2
    //     0x6cf250: mov             x0, #2
    // 0x6cf254: StoreField: r1->field_b = r0
    //     0x6cf254: stur            w0, [x1, #0xb]
    // 0x6cf258: r0 = ListView()
    //     0x6cf258: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6cf25c: mov             x1, x0
    // 0x6cf260: ldur            x2, [fp, #-0x10]
    // 0x6cf264: r3 = Instance_EdgeInsets
    //     0x6cf264: add             x3, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6cf268: ldr             x3, [x3, #0x240]
    // 0x6cf26c: stur            x0, [fp, #-0x10]
    // 0x6cf270: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6cf270: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6cf274: r0 = ListView()
    //     0x6cf274: bl              #0x67cae0  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x6cf278: r1 = <FlexParentData>
    //     0x6cf278: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6cf27c: ldr             x1, [x1, #0x340]
    // 0x6cf280: r0 = Expanded()
    //     0x6cf280: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6cf284: mov             x3, x0
    // 0x6cf288: r0 = 1
    //     0x6cf288: mov             x0, #1
    // 0x6cf28c: stur            x3, [fp, #-0x18]
    // 0x6cf290: StoreField: r3->field_13 = r0
    //     0x6cf290: stur            x0, [x3, #0x13]
    // 0x6cf294: r0 = Instance_FlexFit
    //     0x6cf294: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6cf298: ldr             x0, [x0, #0x348]
    // 0x6cf29c: StoreField: r3->field_1b = r0
    //     0x6cf29c: stur            w0, [x3, #0x1b]
    // 0x6cf2a0: ldur            x0, [fp, #-0x10]
    // 0x6cf2a4: StoreField: r3->field_b = r0
    //     0x6cf2a4: stur            w0, [x3, #0xb]
    // 0x6cf2a8: r1 = Null
    //     0x6cf2a8: mov             x1, NULL
    // 0x6cf2ac: r2 = 4
    //     0x6cf2ac: mov             x2, #4
    // 0x6cf2b0: r0 = AllocateArray()
    //     0x6cf2b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cf2b4: mov             x2, x0
    // 0x6cf2b8: ldur            x0, [fp, #-8]
    // 0x6cf2bc: stur            x2, [fp, #-0x10]
    // 0x6cf2c0: StoreField: r2->field_f = r0
    //     0x6cf2c0: stur            w0, [x2, #0xf]
    // 0x6cf2c4: ldur            x0, [fp, #-0x18]
    // 0x6cf2c8: StoreField: r2->field_13 = r0
    //     0x6cf2c8: stur            w0, [x2, #0x13]
    // 0x6cf2cc: r1 = <Widget>
    //     0x6cf2cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cf2d0: r0 = AllocateGrowableArray()
    //     0x6cf2d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cf2d4: mov             x1, x0
    // 0x6cf2d8: ldur            x0, [fp, #-0x10]
    // 0x6cf2dc: stur            x1, [fp, #-8]
    // 0x6cf2e0: StoreField: r1->field_f = r0
    //     0x6cf2e0: stur            w0, [x1, #0xf]
    // 0x6cf2e4: r0 = 4
    //     0x6cf2e4: mov             x0, #4
    // 0x6cf2e8: StoreField: r1->field_b = r0
    //     0x6cf2e8: stur            w0, [x1, #0xb]
    // 0x6cf2ec: r0 = Column()
    //     0x6cf2ec: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cf2f0: mov             x1, x0
    // 0x6cf2f4: r0 = Instance_Axis
    //     0x6cf2f4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cf2f8: stur            x1, [fp, #-0x10]
    // 0x6cf2fc: StoreField: r1->field_f = r0
    //     0x6cf2fc: stur            w0, [x1, #0xf]
    // 0x6cf300: r0 = Instance_MainAxisAlignment
    //     0x6cf300: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cf304: ldr             x0, [x0, #0x230]
    // 0x6cf308: StoreField: r1->field_13 = r0
    //     0x6cf308: stur            w0, [x1, #0x13]
    // 0x6cf30c: r0 = Instance_MainAxisSize
    //     0x6cf30c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cf310: ldr             x0, [x0, #0x330]
    // 0x6cf314: ArrayStore: r1[0] = r0  ; List_4
    //     0x6cf314: stur            w0, [x1, #0x17]
    // 0x6cf318: r0 = Instance_CrossAxisAlignment
    //     0x6cf318: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cf31c: ldr             x0, [x0, #0x338]
    // 0x6cf320: StoreField: r1->field_1b = r0
    //     0x6cf320: stur            w0, [x1, #0x1b]
    // 0x6cf324: r0 = Instance_VerticalDirection
    //     0x6cf324: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cf328: ldr             x0, [x0, #0x340]
    // 0x6cf32c: StoreField: r1->field_23 = r0
    //     0x6cf32c: stur            w0, [x1, #0x23]
    // 0x6cf330: r0 = Instance_Clip
    //     0x6cf330: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cf334: ldr             x0, [x0, #0x348]
    // 0x6cf338: StoreField: r1->field_2b = r0
    //     0x6cf338: stur            w0, [x1, #0x2b]
    // 0x6cf33c: StoreField: r1->field_2f = rZR
    //     0x6cf33c: stur            xzr, [x1, #0x2f]
    // 0x6cf340: ldur            x0, [fp, #-8]
    // 0x6cf344: StoreField: r1->field_b = r0
    //     0x6cf344: stur            w0, [x1, #0xb]
    // 0x6cf348: r0 = Drawer()
    //     0x6cf348: bl              #0x6cf368  ; AllocateDrawerStub -> Drawer (size=0x30)
    // 0x6cf34c: ldur            x1, [fp, #-0x10]
    // 0x6cf350: StoreField: r0->field_23 = r1
    //     0x6cf350: stur            w1, [x0, #0x23]
    // 0x6cf354: LeaveFrame
    //     0x6cf354: mov             SP, fp
    //     0x6cf358: ldp             fp, lr, [SP], #0x10
    // 0x6cf35c: ret
    //     0x6cf35c: ret             
    // 0x6cf360: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf360: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf364: b               #0x6ce98c
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf380, size: 0x6c
    // 0x6cf380: EnterFrame
    //     0x6cf380: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf384: mov             fp, SP
    // 0x6cf388: AllocStack(0x18)
    //     0x6cf388: sub             SP, SP, #0x18
    // 0x6cf38c: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf38c: ldr             x0, [fp, #0x10]
    //     0x6cf390: ldur            w1, [x0, #0x17]
    //     0x6cf394: add             x1, x1, HEAP, lsl #32
    // 0x6cf398: CheckStackOverflow
    //     0x6cf398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf39c: cmp             SP, x16
    //     0x6cf3a0: b.ls            #0x6cf3e4
    // 0x6cf3a4: LoadField: r0 = r1->field_f
    //     0x6cf3a4: ldur            w0, [x1, #0xf]
    // 0x6cf3a8: DecompressPointer r0
    //     0x6cf3a8: add             x0, x0, HEAP, lsl #32
    // 0x6cf3ac: mov             x1, x0
    // 0x6cf3b0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf3b0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf3b4: r0 = of()
    //     0x6cf3b4: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf3b8: r16 = <Object?>
    //     0x6cf3b8: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf3bc: stp             x0, x16, [SP, #8]
    // 0x6cf3c0: r16 = "/admin/settings"
    //     0x6cf3c0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d60] "/admin/settings"
    //     0x6cf3c4: ldr             x16, [x16, #0xd60]
    // 0x6cf3c8: str             x16, [SP]
    // 0x6cf3cc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf3cc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf3d0: r0 = pushNamed()
    //     0x6cf3d0: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf3d4: r0 = Null
    //     0x6cf3d4: mov             x0, NULL
    // 0x6cf3d8: LeaveFrame
    //     0x6cf3d8: mov             SP, fp
    //     0x6cf3dc: ldp             fp, lr, [SP], #0x10
    // 0x6cf3e0: ret
    //     0x6cf3e0: ret             
    // 0x6cf3e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf3e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf3e8: b               #0x6cf3a4
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf3ec, size: 0x6c
    // 0x6cf3ec: EnterFrame
    //     0x6cf3ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf3f0: mov             fp, SP
    // 0x6cf3f4: AllocStack(0x18)
    //     0x6cf3f4: sub             SP, SP, #0x18
    // 0x6cf3f8: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf3f8: ldr             x0, [fp, #0x10]
    //     0x6cf3fc: ldur            w1, [x0, #0x17]
    //     0x6cf400: add             x1, x1, HEAP, lsl #32
    // 0x6cf404: CheckStackOverflow
    //     0x6cf404: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf408: cmp             SP, x16
    //     0x6cf40c: b.ls            #0x6cf450
    // 0x6cf410: LoadField: r0 = r1->field_f
    //     0x6cf410: ldur            w0, [x1, #0xf]
    // 0x6cf414: DecompressPointer r0
    //     0x6cf414: add             x0, x0, HEAP, lsl #32
    // 0x6cf418: mov             x1, x0
    // 0x6cf41c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf41c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf420: r0 = of()
    //     0x6cf420: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf424: r16 = <Object?>
    //     0x6cf424: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf428: stp             x0, x16, [SP, #8]
    // 0x6cf42c: r16 = "/admin/notifications"
    //     0x6cf42c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d50] "/admin/notifications"
    //     0x6cf430: ldr             x16, [x16, #0xd50]
    // 0x6cf434: str             x16, [SP]
    // 0x6cf438: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf438: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf43c: r0 = pushNamed()
    //     0x6cf43c: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf440: r0 = Null
    //     0x6cf440: mov             x0, NULL
    // 0x6cf444: LeaveFrame
    //     0x6cf444: mov             SP, fp
    //     0x6cf448: ldp             fp, lr, [SP], #0x10
    // 0x6cf44c: ret
    //     0x6cf44c: ret             
    // 0x6cf450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf450: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf454: b               #0x6cf410
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf458, size: 0x6c
    // 0x6cf458: EnterFrame
    //     0x6cf458: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf45c: mov             fp, SP
    // 0x6cf460: AllocStack(0x18)
    //     0x6cf460: sub             SP, SP, #0x18
    // 0x6cf464: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf464: ldr             x0, [fp, #0x10]
    //     0x6cf468: ldur            w1, [x0, #0x17]
    //     0x6cf46c: add             x1, x1, HEAP, lsl #32
    // 0x6cf470: CheckStackOverflow
    //     0x6cf470: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf474: cmp             SP, x16
    //     0x6cf478: b.ls            #0x6cf4bc
    // 0x6cf47c: LoadField: r0 = r1->field_f
    //     0x6cf47c: ldur            w0, [x1, #0xf]
    // 0x6cf480: DecompressPointer r0
    //     0x6cf480: add             x0, x0, HEAP, lsl #32
    // 0x6cf484: mov             x1, x0
    // 0x6cf488: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf488: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf48c: r0 = of()
    //     0x6cf48c: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf490: r16 = <Object?>
    //     0x6cf490: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf494: stp             x0, x16, [SP, #8]
    // 0x6cf498: r16 = "/admin/currency"
    //     0x6cf498: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d40] "/admin/currency"
    //     0x6cf49c: ldr             x16, [x16, #0xd40]
    // 0x6cf4a0: str             x16, [SP]
    // 0x6cf4a4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf4a4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf4a8: r0 = pushNamed()
    //     0x6cf4a8: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf4ac: r0 = Null
    //     0x6cf4ac: mov             x0, NULL
    // 0x6cf4b0: LeaveFrame
    //     0x6cf4b0: mov             SP, fp
    //     0x6cf4b4: ldp             fp, lr, [SP], #0x10
    // 0x6cf4b8: ret
    //     0x6cf4b8: ret             
    // 0x6cf4bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf4bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf4c0: b               #0x6cf47c
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf4c4, size: 0x6c
    // 0x6cf4c4: EnterFrame
    //     0x6cf4c4: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf4c8: mov             fp, SP
    // 0x6cf4cc: AllocStack(0x18)
    //     0x6cf4cc: sub             SP, SP, #0x18
    // 0x6cf4d0: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf4d0: ldr             x0, [fp, #0x10]
    //     0x6cf4d4: ldur            w1, [x0, #0x17]
    //     0x6cf4d8: add             x1, x1, HEAP, lsl #32
    // 0x6cf4dc: CheckStackOverflow
    //     0x6cf4dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf4e0: cmp             SP, x16
    //     0x6cf4e4: b.ls            #0x6cf528
    // 0x6cf4e8: LoadField: r0 = r1->field_f
    //     0x6cf4e8: ldur            w0, [x1, #0xf]
    // 0x6cf4ec: DecompressPointer r0
    //     0x6cf4ec: add             x0, x0, HEAP, lsl #32
    // 0x6cf4f0: mov             x1, x0
    // 0x6cf4f4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf4f4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf4f8: r0 = of()
    //     0x6cf4f8: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf4fc: r16 = <Object?>
    //     0x6cf4fc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf500: stp             x0, x16, [SP, #8]
    // 0x6cf504: r16 = "/admin/hotels"
    //     0x6cf504: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d30] "/admin/hotels"
    //     0x6cf508: ldr             x16, [x16, #0xd30]
    // 0x6cf50c: str             x16, [SP]
    // 0x6cf510: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf510: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf514: r0 = pushNamed()
    //     0x6cf514: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf518: r0 = Null
    //     0x6cf518: mov             x0, NULL
    // 0x6cf51c: LeaveFrame
    //     0x6cf51c: mov             SP, fp
    //     0x6cf520: ldp             fp, lr, [SP], #0x10
    // 0x6cf524: ret
    //     0x6cf524: ret             
    // 0x6cf528: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf528: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf52c: b               #0x6cf4e8
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf530, size: 0x6c
    // 0x6cf530: EnterFrame
    //     0x6cf530: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf534: mov             fp, SP
    // 0x6cf538: AllocStack(0x18)
    //     0x6cf538: sub             SP, SP, #0x18
    // 0x6cf53c: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf53c: ldr             x0, [fp, #0x10]
    //     0x6cf540: ldur            w1, [x0, #0x17]
    //     0x6cf544: add             x1, x1, HEAP, lsl #32
    // 0x6cf548: CheckStackOverflow
    //     0x6cf548: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf54c: cmp             SP, x16
    //     0x6cf550: b.ls            #0x6cf594
    // 0x6cf554: LoadField: r0 = r1->field_f
    //     0x6cf554: ldur            w0, [x1, #0xf]
    // 0x6cf558: DecompressPointer r0
    //     0x6cf558: add             x0, x0, HEAP, lsl #32
    // 0x6cf55c: mov             x1, x0
    // 0x6cf560: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf560: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf564: r0 = of()
    //     0x6cf564: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf568: r16 = <Object?>
    //     0x6cf568: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf56c: stp             x0, x16, [SP, #8]
    // 0x6cf570: r16 = "/admin/trips"
    //     0x6cf570: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d20] "/admin/trips"
    //     0x6cf574: ldr             x16, [x16, #0xd20]
    // 0x6cf578: str             x16, [SP]
    // 0x6cf57c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf57c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf580: r0 = pushNamed()
    //     0x6cf580: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf584: r0 = Null
    //     0x6cf584: mov             x0, NULL
    // 0x6cf588: LeaveFrame
    //     0x6cf588: mov             SP, fp
    //     0x6cf58c: ldp             fp, lr, [SP], #0x10
    // 0x6cf590: ret
    //     0x6cf590: ret             
    // 0x6cf594: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf594: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf598: b               #0x6cf554
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf59c, size: 0x6c
    // 0x6cf59c: EnterFrame
    //     0x6cf59c: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf5a0: mov             fp, SP
    // 0x6cf5a4: AllocStack(0x18)
    //     0x6cf5a4: sub             SP, SP, #0x18
    // 0x6cf5a8: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf5a8: ldr             x0, [fp, #0x10]
    //     0x6cf5ac: ldur            w1, [x0, #0x17]
    //     0x6cf5b0: add             x1, x1, HEAP, lsl #32
    // 0x6cf5b4: CheckStackOverflow
    //     0x6cf5b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf5b8: cmp             SP, x16
    //     0x6cf5bc: b.ls            #0x6cf600
    // 0x6cf5c0: LoadField: r0 = r1->field_f
    //     0x6cf5c0: ldur            w0, [x1, #0xf]
    // 0x6cf5c4: DecompressPointer r0
    //     0x6cf5c4: add             x0, x0, HEAP, lsl #32
    // 0x6cf5c8: mov             x1, x0
    // 0x6cf5cc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf5cc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf5d0: r0 = of()
    //     0x6cf5d0: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf5d4: r16 = <Object?>
    //     0x6cf5d4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf5d8: stp             x0, x16, [SP, #8]
    // 0x6cf5dc: r16 = "/admin/users"
    //     0x6cf5dc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cf0] "/admin/users"
    //     0x6cf5e0: ldr             x16, [x16, #0xcf0]
    // 0x6cf5e4: str             x16, [SP]
    // 0x6cf5e8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf5e8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf5ec: r0 = pushNamed()
    //     0x6cf5ec: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf5f0: r0 = Null
    //     0x6cf5f0: mov             x0, NULL
    // 0x6cf5f4: LeaveFrame
    //     0x6cf5f4: mov             SP, fp
    //     0x6cf5f8: ldp             fp, lr, [SP], #0x10
    // 0x6cf5fc: ret
    //     0x6cf5fc: ret             
    // 0x6cf600: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf600: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf604: b               #0x6cf5c0
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf608, size: 0x6c
    // 0x6cf608: EnterFrame
    //     0x6cf608: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf60c: mov             fp, SP
    // 0x6cf610: AllocStack(0x18)
    //     0x6cf610: sub             SP, SP, #0x18
    // 0x6cf614: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf614: ldr             x0, [fp, #0x10]
    //     0x6cf618: ldur            w1, [x0, #0x17]
    //     0x6cf61c: add             x1, x1, HEAP, lsl #32
    // 0x6cf620: CheckStackOverflow
    //     0x6cf620: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf624: cmp             SP, x16
    //     0x6cf628: b.ls            #0x6cf66c
    // 0x6cf62c: LoadField: r0 = r1->field_f
    //     0x6cf62c: ldur            w0, [x1, #0xf]
    // 0x6cf630: DecompressPointer r0
    //     0x6cf630: add             x0, x0, HEAP, lsl #32
    // 0x6cf634: mov             x1, x0
    // 0x6cf638: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf638: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf63c: r0 = of()
    //     0x6cf63c: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf640: r16 = <Object?>
    //     0x6cf640: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf644: stp             x0, x16, [SP, #8]
    // 0x6cf648: r16 = "/admin/events"
    //     0x6cf648: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ce0] "/admin/events"
    //     0x6cf64c: ldr             x16, [x16, #0xce0]
    // 0x6cf650: str             x16, [SP]
    // 0x6cf654: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6cf654: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6cf658: r0 = pushNamed()
    //     0x6cf658: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6cf65c: r0 = Null
    //     0x6cf65c: mov             x0, NULL
    // 0x6cf660: LeaveFrame
    //     0x6cf660: mov             SP, fp
    //     0x6cf664: ldp             fp, lr, [SP], #0x10
    // 0x6cf668: ret
    //     0x6cf668: ret             
    // 0x6cf66c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf66c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf670: b               #0x6cf62c
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf674, size: 0x60
    // 0x6cf674: EnterFrame
    //     0x6cf674: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf678: mov             fp, SP
    // 0x6cf67c: AllocStack(0x10)
    //     0x6cf67c: sub             SP, SP, #0x10
    // 0x6cf680: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf680: ldr             x0, [fp, #0x10]
    //     0x6cf684: ldur            w1, [x0, #0x17]
    //     0x6cf688: add             x1, x1, HEAP, lsl #32
    // 0x6cf68c: CheckStackOverflow
    //     0x6cf68c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf690: cmp             SP, x16
    //     0x6cf694: b.ls            #0x6cf6cc
    // 0x6cf698: LoadField: r0 = r1->field_f
    //     0x6cf698: ldur            w0, [x1, #0xf]
    // 0x6cf69c: DecompressPointer r0
    //     0x6cf69c: add             x0, x0, HEAP, lsl #32
    // 0x6cf6a0: mov             x1, x0
    // 0x6cf6a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf6a4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf6a8: r0 = of()
    //     0x6cf6a8: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf6ac: r16 = <Object?>
    //     0x6cf6ac: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cf6b0: stp             x0, x16, [SP]
    // 0x6cf6b4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6cf6b4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6cf6b8: r0 = pop()
    //     0x6cf6b8: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x6cf6bc: r0 = Null
    //     0x6cf6bc: mov             x0, NULL
    // 0x6cf6c0: LeaveFrame
    //     0x6cf6c0: mov             SP, fp
    //     0x6cf6c4: ldp             fp, lr, [SP], #0x10
    // 0x6cf6c8: ret
    //     0x6cf6c8: ret             
    // 0x6cf6cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf6cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf6d0: b               #0x6cf698
  }
}

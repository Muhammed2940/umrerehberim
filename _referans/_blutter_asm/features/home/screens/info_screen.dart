// lib: , url: package:umrem_demo/features/home/screens/info_screen.dart

// class id: 1049584, size: 0x8
class :: {
}

// class id: 194, size: 0x20, field offset: 0x8
class InfoCardData extends Object {
}

// class id: 2469, size: 0x14, field offset: 0x14
class _GeneralInfoScreenState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0x72fc20, size: 0x3f4
    // 0x72fc20: EnterFrame
    //     0x72fc20: stp             fp, lr, [SP, #-0x10]!
    //     0x72fc24: mov             fp, SP
    // 0x72fc28: AllocStack(0x58)
    //     0x72fc28: sub             SP, SP, #0x58
    // 0x72fc2c: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x72fc2c: stur            x2, [fp, #-8]
    // 0x72fc30: CheckStackOverflow
    //     0x72fc30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72fc34: cmp             SP, x16
    //     0x72fc38: b.ls            #0x730008
    // 0x72fc3c: r1 = 2
    //     0x72fc3c: mov             x1, #2
    // 0x72fc40: r0 = AllocateContext()
    //     0x72fc40: bl              #0x927010  ; AllocateContextStub
    // 0x72fc44: mov             x1, x0
    // 0x72fc48: ldur            x0, [fp, #-8]
    // 0x72fc4c: stur            x1, [fp, #-0x10]
    // 0x72fc50: StoreField: r1->field_f = r0
    //     0x72fc50: stur            w0, [x1, #0xf]
    // 0x72fc54: r0 = InfoCardData()
    //     0x72fc54: bl              #0x730034  ; AllocateInfoCardDataStub -> InfoCardData (size=0x20)
    // 0x72fc58: mov             x3, x0
    // 0x72fc5c: r0 = "Gezilecek Yerler"
    //     0x72fc5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x123f8] "Gezilecek Yerler"
    //     0x72fc60: ldr             x0, [x0, #0x3f8]
    // 0x72fc64: stur            x3, [fp, #-8]
    // 0x72fc68: StoreField: r3->field_7 = r0
    //     0x72fc68: stur            w0, [x3, #7]
    // 0x72fc6c: r0 = Instance_IconData
    //     0x72fc6c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15cd8] Obj!IconData@a0a521
    //     0x72fc70: ldr             x0, [x0, #0xcd8]
    // 0x72fc74: StoreField: r3->field_b = r0
    //     0x72fc74: stur            w0, [x3, #0xb]
    // 0x72fc78: r0 = "Detaylar icin tıklayınız."
    //     0x72fc78: add             x0, PP, #0x15, lsl #12  ; [pp+0x15ce0] "Detaylar icin tıklayınız."
    //     0x72fc7c: ldr             x0, [x0, #0xce0]
    // 0x72fc80: StoreField: r3->field_f = r0
    //     0x72fc80: stur            w0, [x3, #0xf]
    // 0x72fc84: r4 = Instance_Color
    //     0x72fc84: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72fc88: ldr             x4, [x4, #0xb78]
    // 0x72fc8c: ArrayStore: r3[0] = r4  ; List_4
    //     0x72fc8c: stur            w4, [x3, #0x17]
    // 0x72fc90: ldur            x2, [fp, #-0x10]
    // 0x72fc94: r1 = Function '<anonymous closure>':.
    //     0x72fc94: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ce8] AnonymousClosure: (0x730380), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72fc98: ldr             x1, [x1, #0xce8]
    // 0x72fc9c: r0 = AllocateClosure()
    //     0x72fc9c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72fca0: mov             x1, x0
    // 0x72fca4: ldur            x0, [fp, #-8]
    // 0x72fca8: StoreField: r0->field_1b = r1
    //     0x72fca8: stur            w1, [x0, #0x1b]
    // 0x72fcac: r0 = InfoCardData()
    //     0x72fcac: bl              #0x730034  ; AllocateInfoCardDataStub -> InfoCardData (size=0x20)
    // 0x72fcb0: mov             x3, x0
    // 0x72fcb4: r0 = "Rehberle İletişime Geç"
    //     0x72fcb4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15cf0] "Rehberle İletişime Geç"
    //     0x72fcb8: ldr             x0, [x0, #0xcf0]
    // 0x72fcbc: stur            x3, [fp, #-0x18]
    // 0x72fcc0: StoreField: r3->field_7 = r0
    //     0x72fcc0: stur            w0, [x3, #7]
    // 0x72fcc4: r0 = Instance_IconData
    //     0x72fcc4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15cf8] Obj!IconData@a0a501
    //     0x72fcc8: ldr             x0, [x0, #0xcf8]
    // 0x72fccc: StoreField: r3->field_b = r0
    //     0x72fccc: stur            w0, [x3, #0xb]
    // 0x72fcd0: r0 = "Detaylar icin tıklayınız."
    //     0x72fcd0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15ce0] "Detaylar icin tıklayınız."
    //     0x72fcd4: ldr             x0, [x0, #0xce0]
    // 0x72fcd8: StoreField: r3->field_f = r0
    //     0x72fcd8: stur            w0, [x3, #0xf]
    // 0x72fcdc: r4 = Instance_Color
    //     0x72fcdc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72fce0: ldr             x4, [x4, #0xb78]
    // 0x72fce4: ArrayStore: r3[0] = r4  ; List_4
    //     0x72fce4: stur            w4, [x3, #0x17]
    // 0x72fce8: ldur            x2, [fp, #-0x10]
    // 0x72fcec: r1 = Function '<anonymous closure>':.
    //     0x72fcec: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d00] AnonymousClosure: (0x730320), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72fcf0: ldr             x1, [x1, #0xd00]
    // 0x72fcf4: r0 = AllocateClosure()
    //     0x72fcf4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72fcf8: mov             x1, x0
    // 0x72fcfc: ldur            x0, [fp, #-0x18]
    // 0x72fd00: StoreField: r0->field_1b = r1
    //     0x72fd00: stur            w1, [x0, #0x1b]
    // 0x72fd04: r0 = InfoCardData()
    //     0x72fd04: bl              #0x730034  ; AllocateInfoCardDataStub -> InfoCardData (size=0x20)
    // 0x72fd08: mov             x3, x0
    // 0x72fd0c: r0 = "Teknik Servis Bilgileri"
    //     0x72fd0c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d08] "Teknik Servis Bilgileri"
    //     0x72fd10: ldr             x0, [x0, #0xd08]
    // 0x72fd14: stur            x3, [fp, #-0x20]
    // 0x72fd18: StoreField: r3->field_7 = r0
    //     0x72fd18: stur            w0, [x3, #7]
    // 0x72fd1c: r0 = Instance_IconData
    //     0x72fd1c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d10] Obj!IconData@a0a4e1
    //     0x72fd20: ldr             x0, [x0, #0xd10]
    // 0x72fd24: StoreField: r3->field_b = r0
    //     0x72fd24: stur            w0, [x3, #0xb]
    // 0x72fd28: r0 = "Detaylar icin tıklayınız."
    //     0x72fd28: add             x0, PP, #0x15, lsl #12  ; [pp+0x15ce0] "Detaylar icin tıklayınız."
    //     0x72fd2c: ldr             x0, [x0, #0xce0]
    // 0x72fd30: StoreField: r3->field_f = r0
    //     0x72fd30: stur            w0, [x3, #0xf]
    // 0x72fd34: r4 = Instance_Color
    //     0x72fd34: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72fd38: ldr             x4, [x4, #0xb78]
    // 0x72fd3c: ArrayStore: r3[0] = r4  ; List_4
    //     0x72fd3c: stur            w4, [x3, #0x17]
    // 0x72fd40: ldur            x2, [fp, #-0x10]
    // 0x72fd44: r1 = Function '<anonymous closure>':.
    //     0x72fd44: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d18] AnonymousClosure: (0x7302c0), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72fd48: ldr             x1, [x1, #0xd18]
    // 0x72fd4c: r0 = AllocateClosure()
    //     0x72fd4c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72fd50: mov             x1, x0
    // 0x72fd54: ldur            x0, [fp, #-0x20]
    // 0x72fd58: StoreField: r0->field_1b = r1
    //     0x72fd58: stur            w1, [x0, #0x1b]
    // 0x72fd5c: r0 = InfoCardData()
    //     0x72fd5c: bl              #0x730034  ; AllocateInfoCardDataStub -> InfoCardData (size=0x20)
    // 0x72fd60: mov             x3, x0
    // 0x72fd64: r0 = "İhram Yasakları"
    //     0x72fd64: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d20] "İhram Yasakları"
    //     0x72fd68: ldr             x0, [x0, #0xd20]
    // 0x72fd6c: stur            x3, [fp, #-0x28]
    // 0x72fd70: StoreField: r3->field_7 = r0
    //     0x72fd70: stur            w0, [x3, #7]
    // 0x72fd74: r0 = Instance_IconData
    //     0x72fd74: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d28] Obj!IconData@a0a4c1
    //     0x72fd78: ldr             x0, [x0, #0xd28]
    // 0x72fd7c: StoreField: r3->field_b = r0
    //     0x72fd7c: stur            w0, [x3, #0xb]
    // 0x72fd80: r0 = "Detaylar icin tıklayınız."
    //     0x72fd80: add             x0, PP, #0x15, lsl #12  ; [pp+0x15ce0] "Detaylar icin tıklayınız."
    //     0x72fd84: ldr             x0, [x0, #0xce0]
    // 0x72fd88: StoreField: r3->field_f = r0
    //     0x72fd88: stur            w0, [x3, #0xf]
    // 0x72fd8c: r0 = Instance_Color
    //     0x72fd8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72fd90: ldr             x0, [x0, #0xb78]
    // 0x72fd94: ArrayStore: r3[0] = r0  ; List_4
    //     0x72fd94: stur            w0, [x3, #0x17]
    // 0x72fd98: ldur            x2, [fp, #-0x10]
    // 0x72fd9c: r1 = Function '<anonymous closure>':.
    //     0x72fd9c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d30] AnonymousClosure: (0x730200), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72fda0: ldr             x1, [x1, #0xd30]
    // 0x72fda4: r0 = AllocateClosure()
    //     0x72fda4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72fda8: mov             x1, x0
    // 0x72fdac: ldur            x0, [fp, #-0x28]
    // 0x72fdb0: StoreField: r0->field_1b = r1
    //     0x72fdb0: stur            w1, [x0, #0x1b]
    // 0x72fdb4: r0 = InfoCardData()
    //     0x72fdb4: bl              #0x730034  ; AllocateInfoCardDataStub -> InfoCardData (size=0x20)
    // 0x72fdb8: mov             x3, x0
    // 0x72fdbc: r0 = "Adım Sayar"
    //     0x72fdbc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d38] "Adım Sayar"
    //     0x72fdc0: ldr             x0, [x0, #0xd38]
    // 0x72fdc4: stur            x3, [fp, #-0x30]
    // 0x72fdc8: StoreField: r3->field_7 = r0
    //     0x72fdc8: stur            w0, [x3, #7]
    // 0x72fdcc: r0 = Instance_IconData
    //     0x72fdcc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d40] Obj!IconData@a0a401
    //     0x72fdd0: ldr             x0, [x0, #0xd40]
    // 0x72fdd4: StoreField: r3->field_b = r0
    //     0x72fdd4: stur            w0, [x3, #0xb]
    // 0x72fdd8: r0 = "Günlük adım sayınızı takip edin."
    //     0x72fdd8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d48] "Günlük adım sayınızı takip edin."
    //     0x72fddc: ldr             x0, [x0, #0xd48]
    // 0x72fde0: StoreField: r3->field_f = r0
    //     0x72fde0: stur            w0, [x3, #0xf]
    // 0x72fde4: r0 = Instance_Color
    //     0x72fde4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72fde8: ldr             x0, [x0, #0xb78]
    // 0x72fdec: ArrayStore: r3[0] = r0  ; List_4
    //     0x72fdec: stur            w0, [x3, #0x17]
    // 0x72fdf0: ldur            x2, [fp, #-0x10]
    // 0x72fdf4: r1 = Function '<anonymous closure>':.
    //     0x72fdf4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d50] AnonymousClosure: (0x730140), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72fdf8: ldr             x1, [x1, #0xd50]
    // 0x72fdfc: r0 = AllocateClosure()
    //     0x72fdfc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72fe00: mov             x1, x0
    // 0x72fe04: ldur            x0, [fp, #-0x30]
    // 0x72fe08: StoreField: r0->field_1b = r1
    //     0x72fe08: stur            w1, [x0, #0x1b]
    // 0x72fe0c: r1 = Null
    //     0x72fe0c: mov             x1, NULL
    // 0x72fe10: r2 = 10
    //     0x72fe10: mov             x2, #0xa
    // 0x72fe14: r0 = AllocateArray()
    //     0x72fe14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72fe18: mov             x2, x0
    // 0x72fe1c: ldur            x0, [fp, #-8]
    // 0x72fe20: stur            x2, [fp, #-0x38]
    // 0x72fe24: StoreField: r2->field_f = r0
    //     0x72fe24: stur            w0, [x2, #0xf]
    // 0x72fe28: ldur            x0, [fp, #-0x18]
    // 0x72fe2c: StoreField: r2->field_13 = r0
    //     0x72fe2c: stur            w0, [x2, #0x13]
    // 0x72fe30: ldur            x0, [fp, #-0x20]
    // 0x72fe34: ArrayStore: r2[0] = r0  ; List_4
    //     0x72fe34: stur            w0, [x2, #0x17]
    // 0x72fe38: ldur            x0, [fp, #-0x28]
    // 0x72fe3c: StoreField: r2->field_1b = r0
    //     0x72fe3c: stur            w0, [x2, #0x1b]
    // 0x72fe40: ldur            x0, [fp, #-0x30]
    // 0x72fe44: StoreField: r2->field_1f = r0
    //     0x72fe44: stur            w0, [x2, #0x1f]
    // 0x72fe48: r1 = <InfoCardData>
    //     0x72fe48: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d58] TypeArguments: <InfoCardData>
    //     0x72fe4c: ldr             x1, [x1, #0xd58]
    // 0x72fe50: r0 = AllocateGrowableArray()
    //     0x72fe50: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72fe54: mov             x1, x0
    // 0x72fe58: ldur            x0, [fp, #-0x38]
    // 0x72fe5c: stur            x1, [fp, #-8]
    // 0x72fe60: StoreField: r1->field_f = r0
    //     0x72fe60: stur            w0, [x1, #0xf]
    // 0x72fe64: r0 = 10
    //     0x72fe64: mov             x0, #0xa
    // 0x72fe68: StoreField: r1->field_b = r0
    //     0x72fe68: stur            w0, [x1, #0xb]
    // 0x72fe6c: ldur            x2, [fp, #-0x10]
    // 0x72fe70: StoreField: r2->field_13 = r1
    //     0x72fe70: stur            w1, [x2, #0x13]
    // 0x72fe74: r0 = TextStyle()
    //     0x72fe74: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x72fe78: mov             x1, x0
    // 0x72fe7c: r0 = true
    //     0x72fe7c: add             x0, NULL, #0x20  ; true
    // 0x72fe80: stur            x1, [fp, #-0x18]
    // 0x72fe84: StoreField: r1->field_7 = r0
    //     0x72fe84: stur            w0, [x1, #7]
    // 0x72fe88: r2 = Instance_Color
    //     0x72fe88: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72fe8c: ldr             x2, [x2, #0xb88]
    // 0x72fe90: StoreField: r1->field_b = r2
    //     0x72fe90: stur            w2, [x1, #0xb]
    // 0x72fe94: r2 = 24.000000
    //     0x72fe94: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x72fe98: ldr             x2, [x2, #0xf28]
    // 0x72fe9c: StoreField: r1->field_1f = r2
    //     0x72fe9c: stur            w2, [x1, #0x1f]
    // 0x72fea0: r2 = Instance_FontWeight
    //     0x72fea0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x72fea4: ldr             x2, [x2, #0x1d0]
    // 0x72fea8: StoreField: r1->field_23 = r2
    //     0x72fea8: stur            w2, [x1, #0x23]
    // 0x72feac: r0 = Text()
    //     0x72feac: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72feb0: mov             x1, x0
    // 0x72feb4: r0 = "Genel Bilgiler"
    //     0x72feb4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d60] "Genel Bilgiler"
    //     0x72feb8: ldr             x0, [x0, #0xd60]
    // 0x72febc: stur            x1, [fp, #-0x20]
    // 0x72fec0: StoreField: r1->field_b = r0
    //     0x72fec0: stur            w0, [x1, #0xb]
    // 0x72fec4: ldur            x0, [fp, #-0x18]
    // 0x72fec8: StoreField: r1->field_13 = r0
    //     0x72fec8: stur            w0, [x1, #0x13]
    // 0x72fecc: r0 = AppBar()
    //     0x72fecc: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x72fed0: stur            x0, [fp, #-0x18]
    // 0x72fed4: r16 = 0.000000
    //     0x72fed4: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x72fed8: r30 = Instance_Color
    //     0x72fed8: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x72fedc: ldr             lr, [lr, #0x860]
    // 0x72fee0: stp             lr, x16, [SP, #8]
    // 0x72fee4: r16 = false
    //     0x72fee4: add             x16, NULL, #0x30  ; false
    // 0x72fee8: str             x16, [SP]
    // 0x72feec: mov             x1, x0
    // 0x72fef0: ldur            x2, [fp, #-0x20]
    // 0x72fef4: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x72fef4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e80] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x72fef8: ldr             x4, [x4, #0xe80]
    // 0x72fefc: r0 = AppBar()
    //     0x72fefc: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x72ff00: r1 = _ConstMap len:12
    //     0x72ff00: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72ff04: r2 = 200
    //     0x72ff04: mov             x2, #0xc8
    // 0x72ff08: r0 = []()
    //     0x72ff08: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72ff0c: stur            x0, [fp, #-0x20]
    // 0x72ff10: cmp             w0, NULL
    // 0x72ff14: b.eq            #0x730010
    // 0x72ff18: ldur            x1, [fp, #-8]
    // 0x72ff1c: LoadField: r2 = r1->field_b
    //     0x72ff1c: ldur            w2, [x1, #0xb]
    // 0x72ff20: r3 = LoadInt32Instr(r2)
    //     0x72ff20: sbfx            x3, x2, #1, #0x1f
    // 0x72ff24: ldur            x2, [fp, #-0x10]
    // 0x72ff28: stur            x3, [fp, #-0x40]
    // 0x72ff2c: r1 = Function '<anonymous closure>':.
    //     0x72ff2c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d68] AnonymousClosure: (0x730060), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x72ff30: ldr             x1, [x1, #0xd68]
    // 0x72ff34: r0 = AllocateClosure()
    //     0x72ff34: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72ff38: stur            x0, [fp, #-8]
    // 0x72ff3c: r0 = ListView()
    //     0x72ff3c: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x72ff40: stur            x0, [fp, #-0x10]
    // 0x72ff44: r16 = Instance_EdgeInsets
    //     0x72ff44: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x72ff48: ldr             x16, [x16, #0x240]
    // 0x72ff4c: str             x16, [SP]
    // 0x72ff50: mov             x1, x0
    // 0x72ff54: ldur            x2, [fp, #-8]
    // 0x72ff58: ldur            x3, [fp, #-0x40]
    // 0x72ff5c: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x72ff5c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x72ff60: ldr             x4, [x4, #0xe60]
    // 0x72ff64: r0 = ListView.builder()
    //     0x72ff64: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x72ff68: r0 = Scaffold()
    //     0x72ff68: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x72ff6c: mov             x1, x0
    // 0x72ff70: ldur            x0, [fp, #-0x18]
    // 0x72ff74: stur            x1, [fp, #-8]
    // 0x72ff78: ArrayStore: r1[0] = r0  ; List_4
    //     0x72ff78: stur            w0, [x1, #0x17]
    // 0x72ff7c: ldur            x0, [fp, #-0x10]
    // 0x72ff80: StoreField: r1->field_1b = r0
    //     0x72ff80: stur            w0, [x1, #0x1b]
    // 0x72ff84: r0 = Instance_AlignmentDirectional
    //     0x72ff84: add             x0, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x72ff88: ldr             x0, [x0, #0x350]
    // 0x72ff8c: StoreField: r1->field_2f = r0
    //     0x72ff8c: stur            w0, [x1, #0x2f]
    // 0x72ff90: ldur            x0, [fp, #-0x20]
    // 0x72ff94: StoreField: r1->field_4f = r0
    //     0x72ff94: stur            w0, [x1, #0x4f]
    // 0x72ff98: r0 = true
    //     0x72ff98: add             x0, NULL, #0x20  ; true
    // 0x72ff9c: StoreField: r1->field_5f = r0
    //     0x72ff9c: stur            w0, [x1, #0x5f]
    // 0x72ffa0: r2 = Instance_DragStartBehavior
    //     0x72ffa0: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72ffa4: StoreField: r1->field_63 = r2
    //     0x72ffa4: stur            w2, [x1, #0x63]
    // 0x72ffa8: r2 = false
    //     0x72ffa8: add             x2, NULL, #0x30  ; false
    // 0x72ffac: StoreField: r1->field_b = r2
    //     0x72ffac: stur            w2, [x1, #0xb]
    // 0x72ffb0: StoreField: r1->field_f = r0
    //     0x72ffb0: stur            w0, [x1, #0xf]
    // 0x72ffb4: StoreField: r1->field_13 = r2
    //     0x72ffb4: stur            w2, [x1, #0x13]
    // 0x72ffb8: r3 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x72ffb8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x72ffbc: ldr             x3, [x3, #0x358]
    // 0x72ffc0: StoreField: r1->field_4b = r3
    //     0x72ffc0: stur            w3, [x1, #0x4b]
    // 0x72ffc4: StoreField: r1->field_6b = r0
    //     0x72ffc4: stur            w0, [x1, #0x6b]
    // 0x72ffc8: StoreField: r1->field_6f = r0
    //     0x72ffc8: stur            w0, [x1, #0x6f]
    // 0x72ffcc: r0 = SafeArea()
    //     0x72ffcc: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x72ffd0: r1 = true
    //     0x72ffd0: add             x1, NULL, #0x20  ; true
    // 0x72ffd4: StoreField: r0->field_b = r1
    //     0x72ffd4: stur            w1, [x0, #0xb]
    // 0x72ffd8: StoreField: r0->field_f = r1
    //     0x72ffd8: stur            w1, [x0, #0xf]
    // 0x72ffdc: StoreField: r0->field_13 = r1
    //     0x72ffdc: stur            w1, [x0, #0x13]
    // 0x72ffe0: ArrayStore: r0[0] = r1  ; List_4
    //     0x72ffe0: stur            w1, [x0, #0x17]
    // 0x72ffe4: r1 = Instance_EdgeInsets
    //     0x72ffe4: ldr             x1, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x72ffe8: StoreField: r0->field_1b = r1
    //     0x72ffe8: stur            w1, [x0, #0x1b]
    // 0x72ffec: r1 = false
    //     0x72ffec: add             x1, NULL, #0x30  ; false
    // 0x72fff0: StoreField: r0->field_1f = r1
    //     0x72fff0: stur            w1, [x0, #0x1f]
    // 0x72fff4: ldur            x1, [fp, #-8]
    // 0x72fff8: StoreField: r0->field_23 = r1
    //     0x72fff8: stur            w1, [x0, #0x23]
    // 0x72fffc: LeaveFrame
    //     0x72fffc: mov             SP, fp
    //     0x730000: ldp             fp, lr, [SP], #0x10
    // 0x730004: ret
    //     0x730004: ret             
    // 0x730008: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x730008: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73000c: b               #0x72fc3c
    // 0x730010: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x730010: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] InfoCard <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x730060, size: 0xd4
    // 0x730060: EnterFrame
    //     0x730060: stp             fp, lr, [SP, #-0x10]!
    //     0x730064: mov             fp, SP
    // 0x730068: AllocStack(0x20)
    //     0x730068: sub             SP, SP, #0x20
    // 0x73006c: SetupParameters([dynamic _ /* r0 */])
    //     0x73006c: ldr             x0, [fp, #0x20]
    //     0x730070: ldur            w1, [x0, #0x17]
    //     0x730074: add             x1, x1, HEAP, lsl #32
    // 0x730078: LoadField: r2 = r1->field_13
    //     0x730078: ldur            w2, [x1, #0x13]
    // 0x73007c: DecompressPointer r2
    //     0x73007c: add             x2, x2, HEAP, lsl #32
    // 0x730080: LoadField: r0 = r2->field_b
    //     0x730080: ldur            w0, [x2, #0xb]
    // 0x730084: ldr             x1, [fp, #0x10]
    // 0x730088: r3 = LoadInt32Instr(r1)
    //     0x730088: sbfx            x3, x1, #1, #0x1f
    //     0x73008c: tbz             w1, #0, #0x730094
    //     0x730090: ldur            x3, [x1, #7]
    // 0x730094: r1 = LoadInt32Instr(r0)
    //     0x730094: sbfx            x1, x0, #1, #0x1f
    // 0x730098: mov             x0, x1
    // 0x73009c: mov             x1, x3
    // 0x7300a0: cmp             x1, x0
    // 0x7300a4: b.hs            #0x730130
    // 0x7300a8: LoadField: r0 = r2->field_f
    //     0x7300a8: ldur            w0, [x2, #0xf]
    // 0x7300ac: DecompressPointer r0
    //     0x7300ac: add             x0, x0, HEAP, lsl #32
    // 0x7300b0: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0x7300b0: add             x16, x0, x3, lsl #2
    //     0x7300b4: ldur            w1, [x16, #0xf]
    // 0x7300b8: DecompressPointer r1
    //     0x7300b8: add             x1, x1, HEAP, lsl #32
    // 0x7300bc: LoadField: r0 = r1->field_1b
    //     0x7300bc: ldur            w0, [x1, #0x1b]
    // 0x7300c0: DecompressPointer r0
    //     0x7300c0: add             x0, x0, HEAP, lsl #32
    // 0x7300c4: stur            x0, [fp, #-0x20]
    // 0x7300c8: LoadField: r2 = r1->field_7
    //     0x7300c8: ldur            w2, [x1, #7]
    // 0x7300cc: DecompressPointer r2
    //     0x7300cc: add             x2, x2, HEAP, lsl #32
    // 0x7300d0: stur            x2, [fp, #-0x18]
    // 0x7300d4: LoadField: r3 = r1->field_b
    //     0x7300d4: ldur            w3, [x1, #0xb]
    // 0x7300d8: DecompressPointer r3
    //     0x7300d8: add             x3, x3, HEAP, lsl #32
    // 0x7300dc: stur            x3, [fp, #-0x10]
    // 0x7300e0: LoadField: r4 = r1->field_f
    //     0x7300e0: ldur            w4, [x1, #0xf]
    // 0x7300e4: DecompressPointer r4
    //     0x7300e4: add             x4, x4, HEAP, lsl #32
    // 0x7300e8: stur            x4, [fp, #-8]
    // 0x7300ec: r0 = InfoCard()
    //     0x7300ec: bl              #0x730134  ; AllocateInfoCardStub -> InfoCard (size=0x28)
    // 0x7300f0: ldur            x1, [fp, #-0x20]
    // 0x7300f4: StoreField: r0->field_1f = r1
    //     0x7300f4: stur            w1, [x0, #0x1f]
    // 0x7300f8: ldur            x1, [fp, #-0x18]
    // 0x7300fc: StoreField: r0->field_b = r1
    //     0x7300fc: stur            w1, [x0, #0xb]
    // 0x730100: ldur            x1, [fp, #-8]
    // 0x730104: StoreField: r0->field_f = r1
    //     0x730104: stur            w1, [x0, #0xf]
    // 0x730108: r1 = ""
    //     0x730108: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73010c: StoreField: r0->field_13 = r1
    //     0x73010c: stur            w1, [x0, #0x13]
    // 0x730110: ldur            x1, [fp, #-0x10]
    // 0x730114: ArrayStore: r0[0] = r1  ; List_4
    //     0x730114: stur            w1, [x0, #0x17]
    // 0x730118: r1 = Instance_Color
    //     0x730118: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x73011c: ldr             x1, [x1, #0xb78]
    // 0x730120: StoreField: r0->field_1b = r1
    //     0x730120: stur            w1, [x0, #0x1b]
    // 0x730124: LeaveFrame
    //     0x730124: mov             SP, fp
    //     0x730128: ldp             fp, lr, [SP], #0x10
    // 0x73012c: ret
    //     0x73012c: ret             
    // 0x730130: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x730130: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x730140, size: 0xb4
    // 0x730140: EnterFrame
    //     0x730140: stp             fp, lr, [SP, #-0x10]!
    //     0x730144: mov             fp, SP
    // 0x730148: AllocStack(0x30)
    //     0x730148: sub             SP, SP, #0x30
    // 0x73014c: SetupParameters([dynamic _ /* r0 */])
    //     0x73014c: ldr             x0, [fp, #0x10]
    //     0x730150: ldur            w1, [x0, #0x17]
    //     0x730154: add             x1, x1, HEAP, lsl #32
    // 0x730158: CheckStackOverflow
    //     0x730158: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73015c: cmp             SP, x16
    //     0x730160: b.ls            #0x7301ec
    // 0x730164: LoadField: r0 = r1->field_f
    //     0x730164: ldur            w0, [x1, #0xf]
    // 0x730168: DecompressPointer r0
    //     0x730168: add             x0, x0, HEAP, lsl #32
    // 0x73016c: stur            x0, [fp, #-8]
    // 0x730170: r1 = Function '<anonymous closure>':.
    //     0x730170: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d70] AnonymousClosure: (0x7301f4), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x730174: ldr             x1, [x1, #0xd70]
    // 0x730178: r2 = Null
    //     0x730178: mov             x2, NULL
    // 0x73017c: r0 = AllocateClosure()
    //     0x73017c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x730180: r1 = Null
    //     0x730180: mov             x1, NULL
    // 0x730184: stur            x0, [fp, #-0x10]
    // 0x730188: r0 = MaterialPageRoute()
    //     0x730188: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x73018c: mov             x4, x0
    // 0x730190: ldur            x0, [fp, #-0x10]
    // 0x730194: stur            x4, [fp, #-0x18]
    // 0x730198: StoreField: r4->field_a3 = r0
    //     0x730198: stur            w0, [x4, #0xa3]
    // 0x73019c: r0 = true
    //     0x73019c: add             x0, NULL, #0x20  ; true
    // 0x7301a0: StoreField: r4->field_a7 = r0
    //     0x7301a0: stur            w0, [x4, #0xa7]
    // 0x7301a4: r1 = false
    //     0x7301a4: add             x1, NULL, #0x30  ; false
    // 0x7301a8: StoreField: r4->field_97 = r1
    //     0x7301a8: stur            w1, [x4, #0x97]
    // 0x7301ac: StoreField: r4->field_9b = r0
    //     0x7301ac: stur            w0, [x4, #0x9b]
    // 0x7301b0: StoreField: r4->field_9f = r1
    //     0x7301b0: stur            w1, [x4, #0x9f]
    // 0x7301b4: mov             x1, x4
    // 0x7301b8: r2 = Null
    //     0x7301b8: mov             x2, NULL
    // 0x7301bc: r3 = Null
    //     0x7301bc: mov             x3, NULL
    // 0x7301c0: r0 = ModalRoute()
    //     0x7301c0: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7301c4: ldur            x16, [fp, #-8]
    // 0x7301c8: stp             x16, NULL, [SP, #8]
    // 0x7301cc: ldur            x16, [fp, #-0x18]
    // 0x7301d0: str             x16, [SP]
    // 0x7301d4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7301d4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7301d8: r0 = push()
    //     0x7301d8: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7301dc: r0 = Null
    //     0x7301dc: mov             x0, NULL
    // 0x7301e0: LeaveFrame
    //     0x7301e0: mov             SP, fp
    //     0x7301e4: ldp             fp, lr, [SP], #0x10
    // 0x7301e8: ret
    //     0x7301e8: ret             
    // 0x7301ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7301ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7301f0: b               #0x730164
  }
  [closure] StepCounterView <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7301f4, size: 0xc
    // 0x7301f4: r0 = Instance_StepCounterView
    //     0x7301f4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d78] Obj!StepCounterView@a20381
    //     0x7301f8: ldr             x0, [x0, #0xd78]
    // 0x7301fc: ret
    //     0x7301fc: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x730200, size: 0xb4
    // 0x730200: EnterFrame
    //     0x730200: stp             fp, lr, [SP, #-0x10]!
    //     0x730204: mov             fp, SP
    // 0x730208: AllocStack(0x30)
    //     0x730208: sub             SP, SP, #0x30
    // 0x73020c: SetupParameters([dynamic _ /* r0 */])
    //     0x73020c: ldr             x0, [fp, #0x10]
    //     0x730210: ldur            w1, [x0, #0x17]
    //     0x730214: add             x1, x1, HEAP, lsl #32
    // 0x730218: CheckStackOverflow
    //     0x730218: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73021c: cmp             SP, x16
    //     0x730220: b.ls            #0x7302ac
    // 0x730224: LoadField: r0 = r1->field_f
    //     0x730224: ldur            w0, [x1, #0xf]
    // 0x730228: DecompressPointer r0
    //     0x730228: add             x0, x0, HEAP, lsl #32
    // 0x73022c: stur            x0, [fp, #-8]
    // 0x730230: r1 = Function '<anonymous closure>':.
    //     0x730230: add             x1, PP, #0x15, lsl #12  ; [pp+0x15d80] AnonymousClosure: (0x7302b4), in [package:umrem_demo/features/home/screens/info_screen.dart] _GeneralInfoScreenState::build (0x72fc20)
    //     0x730234: ldr             x1, [x1, #0xd80]
    // 0x730238: r2 = Null
    //     0x730238: mov             x2, NULL
    // 0x73023c: r0 = AllocateClosure()
    //     0x73023c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x730240: r1 = Null
    //     0x730240: mov             x1, NULL
    // 0x730244: stur            x0, [fp, #-0x10]
    // 0x730248: r0 = MaterialPageRoute()
    //     0x730248: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x73024c: mov             x4, x0
    // 0x730250: ldur            x0, [fp, #-0x10]
    // 0x730254: stur            x4, [fp, #-0x18]
    // 0x730258: StoreField: r4->field_a3 = r0
    //     0x730258: stur            w0, [x4, #0xa3]
    // 0x73025c: r0 = true
    //     0x73025c: add             x0, NULL, #0x20  ; true
    // 0x730260: StoreField: r4->field_a7 = r0
    //     0x730260: stur            w0, [x4, #0xa7]
    // 0x730264: r1 = false
    //     0x730264: add             x1, NULL, #0x30  ; false
    // 0x730268: StoreField: r4->field_97 = r1
    //     0x730268: stur            w1, [x4, #0x97]
    // 0x73026c: StoreField: r4->field_9b = r0
    //     0x73026c: stur            w0, [x4, #0x9b]
    // 0x730270: StoreField: r4->field_9f = r1
    //     0x730270: stur            w1, [x4, #0x9f]
    // 0x730274: mov             x1, x4
    // 0x730278: r2 = Null
    //     0x730278: mov             x2, NULL
    // 0x73027c: r3 = Null
    //     0x73027c: mov             x3, NULL
    // 0x730280: r0 = ModalRoute()
    //     0x730280: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x730284: ldur            x16, [fp, #-8]
    // 0x730288: stp             x16, NULL, [SP, #8]
    // 0x73028c: ldur            x16, [fp, #-0x18]
    // 0x730290: str             x16, [SP]
    // 0x730294: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x730294: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x730298: r0 = push()
    //     0x730298: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x73029c: r0 = Null
    //     0x73029c: mov             x0, NULL
    // 0x7302a0: LeaveFrame
    //     0x7302a0: mov             SP, fp
    //     0x7302a4: ldp             fp, lr, [SP], #0x10
    // 0x7302a8: ret
    //     0x7302a8: ret             
    // 0x7302ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7302ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7302b0: b               #0x730224
  }
  [closure] IhramRestrictionsScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7302b4, size: 0xc
    // 0x7302b4: r0 = Instance_IhramRestrictionsScreen
    //     0x7302b4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d88] Obj!IhramRestrictionsScreen@a1ae11
    //     0x7302b8: ldr             x0, [x0, #0xd88]
    // 0x7302bc: ret
    //     0x7302bc: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7302c0, size: 0x60
    // 0x7302c0: EnterFrame
    //     0x7302c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7302c4: mov             fp, SP
    // 0x7302c8: AllocStack(0x18)
    //     0x7302c8: sub             SP, SP, #0x18
    // 0x7302cc: SetupParameters([dynamic _ /* r0 */])
    //     0x7302cc: ldr             x0, [fp, #0x10]
    //     0x7302d0: ldur            w1, [x0, #0x17]
    //     0x7302d4: add             x1, x1, HEAP, lsl #32
    // 0x7302d8: CheckStackOverflow
    //     0x7302d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7302dc: cmp             SP, x16
    //     0x7302e0: b.ls            #0x730318
    // 0x7302e4: LoadField: r0 = r1->field_f
    //     0x7302e4: ldur            w0, [x1, #0xf]
    // 0x7302e8: DecompressPointer r0
    //     0x7302e8: add             x0, x0, HEAP, lsl #32
    // 0x7302ec: r16 = <Object?>
    //     0x7302ec: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7302f0: stp             x0, x16, [SP, #8]
    // 0x7302f4: r16 = "/technical-support"
    //     0x7302f4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d80] "/technical-support"
    //     0x7302f8: ldr             x16, [x16, #0xd80]
    // 0x7302fc: str             x16, [SP]
    // 0x730300: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x730300: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x730304: r0 = pushNamed()
    //     0x730304: bl              #0x6ebde8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamed
    // 0x730308: r0 = Null
    //     0x730308: mov             x0, NULL
    // 0x73030c: LeaveFrame
    //     0x73030c: mov             SP, fp
    //     0x730310: ldp             fp, lr, [SP], #0x10
    // 0x730314: ret
    //     0x730314: ret             
    // 0x730318: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x730318: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73031c: b               #0x7302e4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x730320, size: 0x60
    // 0x730320: EnterFrame
    //     0x730320: stp             fp, lr, [SP, #-0x10]!
    //     0x730324: mov             fp, SP
    // 0x730328: AllocStack(0x18)
    //     0x730328: sub             SP, SP, #0x18
    // 0x73032c: SetupParameters([dynamic _ /* r0 */])
    //     0x73032c: ldr             x0, [fp, #0x10]
    //     0x730330: ldur            w1, [x0, #0x17]
    //     0x730334: add             x1, x1, HEAP, lsl #32
    // 0x730338: CheckStackOverflow
    //     0x730338: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73033c: cmp             SP, x16
    //     0x730340: b.ls            #0x730378
    // 0x730344: LoadField: r0 = r1->field_f
    //     0x730344: ldur            w0, [x1, #0xf]
    // 0x730348: DecompressPointer r0
    //     0x730348: add             x0, x0, HEAP, lsl #32
    // 0x73034c: r16 = <Object?>
    //     0x73034c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x730350: stp             x0, x16, [SP, #8]
    // 0x730354: r16 = "/rehber_iletisim"
    //     0x730354: add             x16, PP, #0x11, lsl #12  ; [pp+0x11db0] "/rehber_iletisim"
    //     0x730358: ldr             x16, [x16, #0xdb0]
    // 0x73035c: str             x16, [SP]
    // 0x730360: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x730360: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x730364: r0 = pushNamed()
    //     0x730364: bl              #0x6ebde8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamed
    // 0x730368: r0 = Null
    //     0x730368: mov             x0, NULL
    // 0x73036c: LeaveFrame
    //     0x73036c: mov             SP, fp
    //     0x730370: ldp             fp, lr, [SP], #0x10
    // 0x730374: ret
    //     0x730374: ret             
    // 0x730378: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x730378: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73037c: b               #0x730344
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x730380, size: 0x60
    // 0x730380: EnterFrame
    //     0x730380: stp             fp, lr, [SP, #-0x10]!
    //     0x730384: mov             fp, SP
    // 0x730388: AllocStack(0x18)
    //     0x730388: sub             SP, SP, #0x18
    // 0x73038c: SetupParameters([dynamic _ /* r0 */])
    //     0x73038c: ldr             x0, [fp, #0x10]
    //     0x730390: ldur            w1, [x0, #0x17]
    //     0x730394: add             x1, x1, HEAP, lsl #32
    // 0x730398: CheckStackOverflow
    //     0x730398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73039c: cmp             SP, x16
    //     0x7303a0: b.ls            #0x7303d8
    // 0x7303a4: LoadField: r0 = r1->field_f
    //     0x7303a4: ldur            w0, [x1, #0xf]
    // 0x7303a8: DecompressPointer r0
    //     0x7303a8: add             x0, x0, HEAP, lsl #32
    // 0x7303ac: r16 = <Object?>
    //     0x7303ac: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7303b0: stp             x0, x16, [SP, #8]
    // 0x7303b4: r16 = "/general/places"
    //     0x7303b4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d70] "/general/places"
    //     0x7303b8: ldr             x16, [x16, #0xd70]
    // 0x7303bc: str             x16, [SP]
    // 0x7303c0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7303c0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7303c4: r0 = pushNamed()
    //     0x7303c4: bl              #0x6ebde8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamed
    // 0x7303c8: r0 = Null
    //     0x7303c8: mov             x0, NULL
    // 0x7303cc: LeaveFrame
    //     0x7303cc: mov             SP, fp
    //     0x7303d0: ldp             fp, lr, [SP], #0x10
    // 0x7303d4: ret
    //     0x7303d4: ret             
    // 0x7303d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7303d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7303dc: b               #0x7303a4
  }
}

// class id: 3197, size: 0xc, field offset: 0xc
//   const constructor, 
class GeneralInfoScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf0d0, size: 0x24
    // 0x7bf0d0: EnterFrame
    //     0x7bf0d0: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf0d4: mov             fp, SP
    // 0x7bf0d8: mov             x0, x1
    // 0x7bf0dc: r1 = <GeneralInfoScreen>
    //     0x7bf0dc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12560] TypeArguments: <GeneralInfoScreen>
    //     0x7bf0e0: ldr             x1, [x1, #0x560]
    // 0x7bf0e4: r0 = _GeneralInfoScreenState()
    //     0x7bf0e4: bl              #0x7bf0f4  ; Allocate_GeneralInfoScreenStateStub -> _GeneralInfoScreenState (size=0x14)
    // 0x7bf0e8: LeaveFrame
    //     0x7bf0e8: mov             SP, fp
    //     0x7bf0ec: ldp             fp, lr, [SP], #0x10
    // 0x7bf0f0: ret
    //     0x7bf0f0: ret             
  }
}

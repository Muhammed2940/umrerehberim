// lib: , url: package:umrem_demo/features/home/screens/dualar.dart

// class id: 1049582, size: 0x8
class :: {
}

// class id: 2472, size: 0x18, field offset: 0x14
class _DualarState extends State<dynamic> {

  late final String _selectedQuote; // offset: 0x14

  _ initState(/* No info */) {
    // ** addr: 0x5e7058, size: 0xc4
    // 0x5e7058: EnterFrame
    //     0x5e7058: stp             fp, lr, [SP, #-0x10]!
    //     0x5e705c: mov             fp, SP
    // 0x5e7060: AllocStack(0x10)
    //     0x5e7060: sub             SP, SP, #0x10
    // 0x5e7064: SetupParameters(_DualarState this /* r1 => r0, fp-0x8 */)
    //     0x5e7064: mov             x0, x1
    //     0x5e7068: stur            x1, [fp, #-8]
    // 0x5e706c: CheckStackOverflow
    //     0x5e706c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e7070: cmp             SP, x16
    //     0x5e7074: b.ls            #0x5e7110
    // 0x5e7078: r1 = Null
    //     0x5e7078: mov             x1, NULL
    // 0x5e707c: r0 = Random()
    //     0x5e707c: bl              #0x5de3c0  ; [dart:math] Random::Random
    // 0x5e7080: mov             x1, x0
    // 0x5e7084: r2 = 14
    //     0x5e7084: mov             x2, #0xe
    // 0x5e7088: r0 = nextInt()
    //     0x5e7088: bl              #0x5de198  ; [dart:math] _Random::nextInt
    // 0x5e708c: mov             x1, x0
    // 0x5e7090: mov             x2, x0
    // 0x5e7094: r0 = 14
    //     0x5e7094: mov             x0, #0xe
    // 0x5e7098: cmp             x1, x0
    // 0x5e709c: b.hs            #0x5e7118
    // 0x5e70a0: r0 = const ["Allah sabredenlerle beraberdir." (Bakara 2/153), "Zorlukla beraber mutlaka bir kolaylık vardır." (İnşirah 94/6), "Şüphesiz kalpler Allah'ı anmakla huzur bulur." (Ra'd 13/28), "Kim Allah'a tevekkül ederse O, ona yeter." (Talak 65/3), "Rabbinin nimetine şükret ve O'na yönel." (Duha 93/11), "Ameller niyetlere göredir." (Buhârî, Bed'ü'l-Vahy, 1), "Kolaylaştırın, zorlaştırmayın; müjdeleyin, nefret ettirmeyin." (Buhârî, İlim, 11), "Güzel söz sadakadır." (Buhârî, Edeb, 34), "İnsanların en hayırlısı insanlara faydalı olandır." (Dârekutnî), "Komşusu açken tok yatan bizden değildir." (Hâkim, Müstedrek), "Dua müminin silahıdır." (Hâkim), "Duadan daha faydalı hiçbir şey yoktur." (Tirmizî), "Rabbim! Bana Kur'an öğret." (İbn Mâce), "Kur'an okuyan ev nurla dolar." (Tirmizî)]
    //     0x5e70a0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fe8] List<String>(14)
    //     0x5e70a4: ldr             x0, [x0, #0xfe8]
    // 0x5e70a8: ArrayLoad: r1 = r0[r2]  ; Unknown_4
    //     0x5e70a8: add             x16, x0, x2, lsl #2
    //     0x5e70ac: ldur            w1, [x16, #0xf]
    // 0x5e70b0: DecompressPointer r1
    //     0x5e70b0: add             x1, x1, HEAP, lsl #32
    // 0x5e70b4: ldur            x2, [fp, #-8]
    // 0x5e70b8: LoadField: r0 = r2->field_13
    //     0x5e70b8: ldur            w0, [x2, #0x13]
    // 0x5e70bc: DecompressPointer r0
    //     0x5e70bc: add             x0, x0, HEAP, lsl #32
    // 0x5e70c0: r16 = Sentinel
    //     0x5e70c0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5e70c4: cmp             w0, w16
    // 0x5e70c8: b.ne            #0x5e70fc
    // 0x5e70cc: mov             x0, x1
    // 0x5e70d0: StoreField: r2->field_13 = r0
    //     0x5e70d0: stur            w0, [x2, #0x13]
    //     0x5e70d4: ldurb           w16, [x2, #-1]
    //     0x5e70d8: ldurb           w17, [x0, #-1]
    //     0x5e70dc: and             x16, x17, x16, lsr #2
    //     0x5e70e0: tst             x16, HEAP, lsr #32
    //     0x5e70e4: b.eq            #0x5e70ec
    //     0x5e70e8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e70ec: r0 = Null
    //     0x5e70ec: mov             x0, NULL
    // 0x5e70f0: LeaveFrame
    //     0x5e70f0: mov             SP, fp
    //     0x5e70f4: ldp             fp, lr, [SP], #0x10
    // 0x5e70f8: ret
    //     0x5e70f8: ret             
    // 0x5e70fc: r16 = "_selectedQuote@933395931"
    //     0x5e70fc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15ff0] "_selectedQuote@933395931"
    //     0x5e7100: ldr             x16, [x16, #0xff0]
    // 0x5e7104: str             x16, [SP]
    // 0x5e7108: r0 = _throwFieldAlreadyInitialized()
    //     0x5e7108: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x5e710c: brk             #0
    // 0x5e7110: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e7110: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e7114: b               #0x5e7078
    // 0x5e7118: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e7118: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x72ce98, size: 0x570
    // 0x72ce98: EnterFrame
    //     0x72ce98: stp             fp, lr, [SP, #-0x10]!
    //     0x72ce9c: mov             fp, SP
    // 0x72cea0: AllocStack(0x40)
    //     0x72cea0: sub             SP, SP, #0x40
    // 0x72cea4: SetupParameters(_DualarState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x72cea4: stur            x1, [fp, #-8]
    //     0x72cea8: stur            x2, [fp, #-0x10]
    // 0x72ceac: CheckStackOverflow
    //     0x72ceac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72ceb0: cmp             SP, x16
    //     0x72ceb4: b.ls            #0x72d3f4
    // 0x72ceb8: r1 = 1
    //     0x72ceb8: mov             x1, #1
    // 0x72cebc: r0 = AllocateContext()
    //     0x72cebc: bl              #0x927010  ; AllocateContextStub
    // 0x72cec0: mov             x1, x0
    // 0x72cec4: ldur            x0, [fp, #-0x10]
    // 0x72cec8: stur            x1, [fp, #-0x18]
    // 0x72cecc: StoreField: r1->field_f = r0
    //     0x72cecc: stur            w0, [x1, #0xf]
    // 0x72ced0: r0 = TextStyle()
    //     0x72ced0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x72ced4: mov             x1, x0
    // 0x72ced8: r0 = true
    //     0x72ced8: add             x0, NULL, #0x20  ; true
    // 0x72cedc: stur            x1, [fp, #-0x10]
    // 0x72cee0: StoreField: r1->field_7 = r0
    //     0x72cee0: stur            w0, [x1, #7]
    // 0x72cee4: r2 = Instance_Color
    //     0x72cee4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72cee8: ldr             x2, [x2, #0xb88]
    // 0x72ceec: StoreField: r1->field_b = r2
    //     0x72ceec: stur            w2, [x1, #0xb]
    // 0x72cef0: r2 = 24.000000
    //     0x72cef0: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x72cef4: ldr             x2, [x2, #0xf28]
    // 0x72cef8: StoreField: r1->field_1f = r2
    //     0x72cef8: stur            w2, [x1, #0x1f]
    // 0x72cefc: r2 = Instance_FontWeight
    //     0x72cefc: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x72cf00: ldr             x2, [x2, #0x1d0]
    // 0x72cf04: StoreField: r1->field_23 = r2
    //     0x72cf04: stur            w2, [x1, #0x23]
    // 0x72cf08: r0 = Text()
    //     0x72cf08: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72cf0c: mov             x1, x0
    // 0x72cf10: r0 = "Dualar ve Kuran-ı Kerim"
    //     0x72cf10: add             x0, PP, #0x15, lsl #12  ; [pp+0x15f08] "Dualar ve Kuran-ı Kerim"
    //     0x72cf14: ldr             x0, [x0, #0xf08]
    // 0x72cf18: stur            x1, [fp, #-0x20]
    // 0x72cf1c: StoreField: r1->field_b = r0
    //     0x72cf1c: stur            w0, [x1, #0xb]
    // 0x72cf20: ldur            x0, [fp, #-0x10]
    // 0x72cf24: StoreField: r1->field_13 = r0
    //     0x72cf24: stur            w0, [x1, #0x13]
    // 0x72cf28: r0 = AppBar()
    //     0x72cf28: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x72cf2c: stur            x0, [fp, #-0x10]
    // 0x72cf30: r16 = 0.000000
    //     0x72cf30: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x72cf34: r30 = Instance_Color
    //     0x72cf34: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x72cf38: ldr             lr, [lr, #0x860]
    // 0x72cf3c: stp             lr, x16, [SP, #8]
    // 0x72cf40: r16 = false
    //     0x72cf40: add             x16, NULL, #0x30  ; false
    // 0x72cf44: str             x16, [SP]
    // 0x72cf48: mov             x1, x0
    // 0x72cf4c: ldur            x2, [fp, #-0x20]
    // 0x72cf50: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x72cf50: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e80] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x72cf54: ldr             x4, [x4, #0xe80]
    // 0x72cf58: r0 = AppBar()
    //     0x72cf58: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x72cf5c: r1 = <Widget>
    //     0x72cf5c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72cf60: r2 = 22
    //     0x72cf60: mov             x2, #0x16
    // 0x72cf64: r0 = AllocateArray()
    //     0x72cf64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72cf68: stur            x0, [fp, #-0x20]
    // 0x72cf6c: r16 = Instance_SizedBox
    //     0x72cf6c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72cf70: ldr             x16, [x16, #0x310]
    // 0x72cf74: StoreField: r0->field_f = r16
    //     0x72cf74: stur            w16, [x0, #0xf]
    // 0x72cf78: ldur            x2, [fp, #-0x18]
    // 0x72cf7c: r1 = Function '<anonymous closure>':.
    //     0x72cf7c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f10] AnonymousClosure: (0x72ddbc), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72cf80: ldr             x1, [x1, #0xf10]
    // 0x72cf84: r0 = AllocateClosure()
    //     0x72cf84: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72cf88: ldur            x1, [fp, #-8]
    // 0x72cf8c: mov             x5, x0
    // 0x72cf90: r2 = Instance_Color
    //     0x72cf90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72cf94: ldr             x2, [x2, #0xb78]
    // 0x72cf98: r3 = Instance_IconData
    //     0x72cf98: add             x3, PP, #0x15, lsl #12  ; [pp+0x15f18] Obj!IconData@a0a4a1
    //     0x72cf9c: ldr             x3, [x3, #0xf18]
    // 0x72cfa0: r6 = "Okumak için tıklayın"
    //     0x72cfa0: add             x6, PP, #0x15, lsl #12  ; [pp+0x15f20] "Okumak için tıklayın"
    //     0x72cfa4: ldr             x6, [x6, #0xf20]
    // 0x72cfa8: r7 = "Kuran-ı Kerim"
    //     0x72cfa8: add             x7, PP, #0x15, lsl #12  ; [pp+0x15f28] "Kuran-ı Kerim"
    //     0x72cfac: ldr             x7, [x7, #0xf28]
    // 0x72cfb0: r0 = _buildModernCard()
    //     0x72cfb0: bl              #0x72d5f8  ; [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::_buildModernCard
    // 0x72cfb4: stur            x0, [fp, #-0x28]
    // 0x72cfb8: r0 = Padding()
    //     0x72cfb8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72cfbc: r3 = Instance_EdgeInsets
    //     0x72cfbc: add             x3, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x72cfc0: ldr             x3, [x3, #0xe88]
    // 0x72cfc4: StoreField: r0->field_f = r3
    //     0x72cfc4: stur            w3, [x0, #0xf]
    // 0x72cfc8: ldur            x1, [fp, #-0x28]
    // 0x72cfcc: StoreField: r0->field_b = r1
    //     0x72cfcc: stur            w1, [x0, #0xb]
    // 0x72cfd0: ldur            x1, [fp, #-0x20]
    // 0x72cfd4: ArrayStore: r1[1] = r0  ; List_4
    //     0x72cfd4: add             x25, x1, #0x13
    //     0x72cfd8: str             w0, [x25]
    //     0x72cfdc: tbz             w0, #0, #0x72cff8
    //     0x72cfe0: ldurb           w16, [x1, #-1]
    //     0x72cfe4: ldurb           w17, [x0, #-1]
    //     0x72cfe8: and             x16, x17, x16, lsr #2
    //     0x72cfec: tst             x16, HEAP, lsr #32
    //     0x72cff0: b.eq            #0x72cff8
    //     0x72cff4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72cff8: ldur            x0, [fp, #-0x20]
    // 0x72cffc: r16 = Instance_SizedBox
    //     0x72cffc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72d000: ldr             x16, [x16, #0x220]
    // 0x72d004: ArrayStore: r0[0] = r16  ; List_4
    //     0x72d004: stur            w16, [x0, #0x17]
    // 0x72d008: ldur            x2, [fp, #-0x18]
    // 0x72d00c: r1 = Function '<anonymous closure>':.
    //     0x72d00c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f30] AnonymousClosure: (0x72dcfc), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72d010: ldr             x1, [x1, #0xf30]
    // 0x72d014: r0 = AllocateClosure()
    //     0x72d014: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72d018: ldur            x1, [fp, #-8]
    // 0x72d01c: mov             x5, x0
    // 0x72d020: r2 = Instance_Color
    //     0x72d020: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f38] Obj!Color@a23c21
    //     0x72d024: ldr             x2, [x2, #0xf38]
    // 0x72d028: r3 = Instance_IconData
    //     0x72d028: add             x3, PP, #0x15, lsl #12  ; [pp+0x15f40] Obj!IconData@a0a481
    //     0x72d02c: ldr             x3, [x3, #0xf40]
    // 0x72d030: r6 = "Okumak için tıklayın"
    //     0x72d030: add             x6, PP, #0x15, lsl #12  ; [pp+0x15f20] "Okumak için tıklayın"
    //     0x72d034: ldr             x6, [x6, #0xf20]
    // 0x72d038: r7 = "Tavaf Duaları"
    //     0x72d038: add             x7, PP, #0x15, lsl #12  ; [pp+0x15f48] "Tavaf Duaları"
    //     0x72d03c: ldr             x7, [x7, #0xf48]
    // 0x72d040: r0 = _buildModernCard()
    //     0x72d040: bl              #0x72d5f8  ; [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::_buildModernCard
    // 0x72d044: stur            x0, [fp, #-0x28]
    // 0x72d048: r0 = Padding()
    //     0x72d048: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72d04c: r3 = Instance_EdgeInsets
    //     0x72d04c: add             x3, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x72d050: ldr             x3, [x3, #0xe88]
    // 0x72d054: StoreField: r0->field_f = r3
    //     0x72d054: stur            w3, [x0, #0xf]
    // 0x72d058: ldur            x1, [fp, #-0x28]
    // 0x72d05c: StoreField: r0->field_b = r1
    //     0x72d05c: stur            w1, [x0, #0xb]
    // 0x72d060: ldur            x1, [fp, #-0x20]
    // 0x72d064: ArrayStore: r1[3] = r0  ; List_4
    //     0x72d064: add             x25, x1, #0x1b
    //     0x72d068: str             w0, [x25]
    //     0x72d06c: tbz             w0, #0, #0x72d088
    //     0x72d070: ldurb           w16, [x1, #-1]
    //     0x72d074: ldurb           w17, [x0, #-1]
    //     0x72d078: and             x16, x17, x16, lsr #2
    //     0x72d07c: tst             x16, HEAP, lsr #32
    //     0x72d080: b.eq            #0x72d088
    //     0x72d084: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72d088: ldur            x0, [fp, #-0x20]
    // 0x72d08c: r16 = Instance_SizedBox
    //     0x72d08c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72d090: ldr             x16, [x16, #0x220]
    // 0x72d094: StoreField: r0->field_1f = r16
    //     0x72d094: stur            w16, [x0, #0x1f]
    // 0x72d098: ldur            x2, [fp, #-0x18]
    // 0x72d09c: r1 = Function '<anonymous closure>':.
    //     0x72d09c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f50] AnonymousClosure: (0x72dc3c), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72d0a0: ldr             x1, [x1, #0xf50]
    // 0x72d0a4: r0 = AllocateClosure()
    //     0x72d0a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72d0a8: ldur            x1, [fp, #-8]
    // 0x72d0ac: mov             x5, x0
    // 0x72d0b0: r2 = Instance_Color
    //     0x72d0b0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f58] Obj!Color@a23a71
    //     0x72d0b4: ldr             x2, [x2, #0xf58]
    // 0x72d0b8: r3 = Instance_IconData
    //     0x72d0b8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15f60] Obj!IconData@a0a461
    //     0x72d0bc: ldr             x3, [x3, #0xf60]
    // 0x72d0c0: r6 = "Okumak için tıklayın"
    //     0x72d0c0: add             x6, PP, #0x15, lsl #12  ; [pp+0x15f20] "Okumak için tıklayın"
    //     0x72d0c4: ldr             x6, [x6, #0xf20]
    // 0x72d0c8: r7 = "Say Duaları"
    //     0x72d0c8: add             x7, PP, #0x15, lsl #12  ; [pp+0x15f68] "Say Duaları"
    //     0x72d0cc: ldr             x7, [x7, #0xf68]
    // 0x72d0d0: r0 = _buildModernCard()
    //     0x72d0d0: bl              #0x72d5f8  ; [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::_buildModernCard
    // 0x72d0d4: stur            x0, [fp, #-0x28]
    // 0x72d0d8: r0 = Padding()
    //     0x72d0d8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72d0dc: r3 = Instance_EdgeInsets
    //     0x72d0dc: add             x3, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x72d0e0: ldr             x3, [x3, #0xe88]
    // 0x72d0e4: StoreField: r0->field_f = r3
    //     0x72d0e4: stur            w3, [x0, #0xf]
    // 0x72d0e8: ldur            x1, [fp, #-0x28]
    // 0x72d0ec: StoreField: r0->field_b = r1
    //     0x72d0ec: stur            w1, [x0, #0xb]
    // 0x72d0f0: ldur            x1, [fp, #-0x20]
    // 0x72d0f4: ArrayStore: r1[5] = r0  ; List_4
    //     0x72d0f4: add             x25, x1, #0x23
    //     0x72d0f8: str             w0, [x25]
    //     0x72d0fc: tbz             w0, #0, #0x72d118
    //     0x72d100: ldurb           w16, [x1, #-1]
    //     0x72d104: ldurb           w17, [x0, #-1]
    //     0x72d108: and             x16, x17, x16, lsr #2
    //     0x72d10c: tst             x16, HEAP, lsr #32
    //     0x72d110: b.eq            #0x72d118
    //     0x72d114: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72d118: ldur            x0, [fp, #-0x20]
    // 0x72d11c: r16 = Instance_SizedBox
    //     0x72d11c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72d120: ldr             x16, [x16, #0x220]
    // 0x72d124: StoreField: r0->field_27 = r16
    //     0x72d124: stur            w16, [x0, #0x27]
    // 0x72d128: ldur            x2, [fp, #-0x18]
    // 0x72d12c: r1 = Function '<anonymous closure>':.
    //     0x72d12c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f70] AnonymousClosure: (0x72db70), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72d130: ldr             x1, [x1, #0xf70]
    // 0x72d134: r0 = AllocateClosure()
    //     0x72d134: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72d138: ldur            x1, [fp, #-8]
    // 0x72d13c: mov             x5, x0
    // 0x72d140: r2 = Instance_Color
    //     0x72d140: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f78] Obj!Color@a255a1
    //     0x72d144: ldr             x2, [x2, #0xf78]
    // 0x72d148: r3 = Instance_IconData
    //     0x72d148: add             x3, PP, #0x15, lsl #12  ; [pp+0x15f80] Obj!IconData@a0a441
    //     0x72d14c: ldr             x3, [x3, #0xf80]
    // 0x72d150: r6 = "Zikir çekmek için tıklayın"
    //     0x72d150: add             x6, PP, #0x15, lsl #12  ; [pp+0x15f88] "Zikir çekmek için tıklayın"
    //     0x72d154: ldr             x6, [x6, #0xf88]
    // 0x72d158: r7 = "Zikirmatik"
    //     0x72d158: add             x7, PP, #0x15, lsl #12  ; [pp+0x15f90] "Zikirmatik"
    //     0x72d15c: ldr             x7, [x7, #0xf90]
    // 0x72d160: r0 = _buildModernCard()
    //     0x72d160: bl              #0x72d5f8  ; [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::_buildModernCard
    // 0x72d164: stur            x0, [fp, #-0x18]
    // 0x72d168: r0 = Padding()
    //     0x72d168: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72d16c: mov             x1, x0
    // 0x72d170: r0 = Instance_EdgeInsets
    //     0x72d170: add             x0, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x72d174: ldr             x0, [x0, #0xe88]
    // 0x72d178: StoreField: r1->field_f = r0
    //     0x72d178: stur            w0, [x1, #0xf]
    // 0x72d17c: ldur            x0, [fp, #-0x18]
    // 0x72d180: StoreField: r1->field_b = r0
    //     0x72d180: stur            w0, [x1, #0xb]
    // 0x72d184: mov             x0, x1
    // 0x72d188: ldur            x1, [fp, #-0x20]
    // 0x72d18c: ArrayStore: r1[7] = r0  ; List_4
    //     0x72d18c: add             x25, x1, #0x2b
    //     0x72d190: str             w0, [x25]
    //     0x72d194: tbz             w0, #0, #0x72d1b0
    //     0x72d198: ldurb           w16, [x1, #-1]
    //     0x72d19c: ldurb           w17, [x0, #-1]
    //     0x72d1a0: and             x16, x17, x16, lsr #2
    //     0x72d1a4: tst             x16, HEAP, lsr #32
    //     0x72d1a8: b.eq            #0x72d1b0
    //     0x72d1ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72d1b0: ldur            x0, [fp, #-0x20]
    // 0x72d1b4: r16 = Instance_SizedBox
    //     0x72d1b4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f98] Obj!SizedBox@a1fcf1
    //     0x72d1b8: ldr             x16, [x16, #0xf98]
    // 0x72d1bc: StoreField: r0->field_2f = r16
    //     0x72d1bc: stur            w16, [x0, #0x2f]
    // 0x72d1c0: ldur            x1, [fp, #-8]
    // 0x72d1c4: LoadField: r2 = r1->field_13
    //     0x72d1c4: ldur            w2, [x1, #0x13]
    // 0x72d1c8: DecompressPointer r2
    //     0x72d1c8: add             x2, x2, HEAP, lsl #32
    // 0x72d1cc: r16 = Sentinel
    //     0x72d1cc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x72d1d0: cmp             w2, w16
    // 0x72d1d4: b.eq            #0x72d3fc
    // 0x72d1d8: r0 = _splitIntoTwoLines()
    //     0x72d1d8: bl              #0x72d408  ; [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::_splitIntoTwoLines
    // 0x72d1dc: stur            x0, [fp, #-8]
    // 0x72d1e0: r0 = TextStyle()
    //     0x72d1e0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x72d1e4: mov             x1, x0
    // 0x72d1e8: r0 = true
    //     0x72d1e8: add             x0, NULL, #0x20  ; true
    // 0x72d1ec: stur            x1, [fp, #-0x18]
    // 0x72d1f0: StoreField: r1->field_7 = r0
    //     0x72d1f0: stur            w0, [x1, #7]
    // 0x72d1f4: r2 = 20.000000
    //     0x72d1f4: add             x2, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x72d1f8: ldr             x2, [x2, #0xe48]
    // 0x72d1fc: StoreField: r1->field_1f = r2
    //     0x72d1fc: stur            w2, [x1, #0x1f]
    // 0x72d200: r2 = Instance_FontStyle
    //     0x72d200: add             x2, PP, #0x15, lsl #12  ; [pp+0x15fa0] Obj!FontStyle@a2cfd1
    //     0x72d204: ldr             x2, [x2, #0xfa0]
    // 0x72d208: StoreField: r1->field_27 = r2
    //     0x72d208: stur            w2, [x1, #0x27]
    // 0x72d20c: r2 = 1.400000
    //     0x72d20c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15fa8] 1.4
    //     0x72d210: ldr             x2, [x2, #0xfa8]
    // 0x72d214: StoreField: r1->field_37 = r2
    //     0x72d214: stur            w2, [x1, #0x37]
    // 0x72d218: r0 = Text()
    //     0x72d218: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72d21c: mov             x1, x0
    // 0x72d220: ldur            x0, [fp, #-8]
    // 0x72d224: stur            x1, [fp, #-0x28]
    // 0x72d228: StoreField: r1->field_b = r0
    //     0x72d228: stur            w0, [x1, #0xb]
    // 0x72d22c: ldur            x0, [fp, #-0x18]
    // 0x72d230: StoreField: r1->field_13 = r0
    //     0x72d230: stur            w0, [x1, #0x13]
    // 0x72d234: r0 = Instance_TextAlign
    //     0x72d234: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x72d238: StoreField: r1->field_1b = r0
    //     0x72d238: stur            w0, [x1, #0x1b]
    // 0x72d23c: r0 = Center()
    //     0x72d23c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x72d240: mov             x1, x0
    // 0x72d244: r0 = Instance_Alignment
    //     0x72d244: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x72d248: ldr             x0, [x0, #0x60]
    // 0x72d24c: StoreField: r1->field_f = r0
    //     0x72d24c: stur            w0, [x1, #0xf]
    // 0x72d250: ldur            x0, [fp, #-0x28]
    // 0x72d254: StoreField: r1->field_b = r0
    //     0x72d254: stur            w0, [x1, #0xb]
    // 0x72d258: mov             x0, x1
    // 0x72d25c: ldur            x1, [fp, #-0x20]
    // 0x72d260: ArrayStore: r1[9] = r0  ; List_4
    //     0x72d260: add             x25, x1, #0x33
    //     0x72d264: str             w0, [x25]
    //     0x72d268: tbz             w0, #0, #0x72d284
    //     0x72d26c: ldurb           w16, [x1, #-1]
    //     0x72d270: ldurb           w17, [x0, #-1]
    //     0x72d274: and             x16, x17, x16, lsr #2
    //     0x72d278: tst             x16, HEAP, lsr #32
    //     0x72d27c: b.eq            #0x72d284
    //     0x72d280: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72d284: ldur            x0, [fp, #-0x20]
    // 0x72d288: r16 = Instance_SizedBox
    //     0x72d288: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x72d28c: ldr             x16, [x16, #0x320]
    // 0x72d290: StoreField: r0->field_37 = r16
    //     0x72d290: stur            w16, [x0, #0x37]
    // 0x72d294: r1 = <Widget>
    //     0x72d294: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72d298: r0 = AllocateGrowableArray()
    //     0x72d298: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72d29c: mov             x1, x0
    // 0x72d2a0: ldur            x0, [fp, #-0x20]
    // 0x72d2a4: stur            x1, [fp, #-8]
    // 0x72d2a8: StoreField: r1->field_f = r0
    //     0x72d2a8: stur            w0, [x1, #0xf]
    // 0x72d2ac: r0 = 22
    //     0x72d2ac: mov             x0, #0x16
    // 0x72d2b0: StoreField: r1->field_b = r0
    //     0x72d2b0: stur            w0, [x1, #0xb]
    // 0x72d2b4: r0 = Column()
    //     0x72d2b4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72d2b8: mov             x1, x0
    // 0x72d2bc: r0 = Instance_Axis
    //     0x72d2bc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72d2c0: stur            x1, [fp, #-0x18]
    // 0x72d2c4: StoreField: r1->field_f = r0
    //     0x72d2c4: stur            w0, [x1, #0xf]
    // 0x72d2c8: r2 = Instance_MainAxisAlignment
    //     0x72d2c8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72d2cc: ldr             x2, [x2, #0x230]
    // 0x72d2d0: StoreField: r1->field_13 = r2
    //     0x72d2d0: stur            w2, [x1, #0x13]
    // 0x72d2d4: r2 = Instance_MainAxisSize
    //     0x72d2d4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72d2d8: ldr             x2, [x2, #0x330]
    // 0x72d2dc: ArrayStore: r1[0] = r2  ; List_4
    //     0x72d2dc: stur            w2, [x1, #0x17]
    // 0x72d2e0: r2 = Instance_CrossAxisAlignment
    //     0x72d2e0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72d2e4: ldr             x2, [x2, #0x238]
    // 0x72d2e8: StoreField: r1->field_1b = r2
    //     0x72d2e8: stur            w2, [x1, #0x1b]
    // 0x72d2ec: r2 = Instance_VerticalDirection
    //     0x72d2ec: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72d2f0: ldr             x2, [x2, #0x340]
    // 0x72d2f4: StoreField: r1->field_23 = r2
    //     0x72d2f4: stur            w2, [x1, #0x23]
    // 0x72d2f8: r2 = Instance_Clip
    //     0x72d2f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72d2fc: ldr             x2, [x2, #0x348]
    // 0x72d300: StoreField: r1->field_2b = r2
    //     0x72d300: stur            w2, [x1, #0x2b]
    // 0x72d304: StoreField: r1->field_2f = rZR
    //     0x72d304: stur            xzr, [x1, #0x2f]
    // 0x72d308: ldur            x2, [fp, #-8]
    // 0x72d30c: StoreField: r1->field_b = r2
    //     0x72d30c: stur            w2, [x1, #0xb]
    // 0x72d310: r0 = SingleChildScrollView()
    //     0x72d310: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x72d314: mov             x1, x0
    // 0x72d318: r0 = Instance_Axis
    //     0x72d318: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72d31c: stur            x1, [fp, #-8]
    // 0x72d320: StoreField: r1->field_b = r0
    //     0x72d320: stur            w0, [x1, #0xb]
    // 0x72d324: r0 = false
    //     0x72d324: add             x0, NULL, #0x30  ; false
    // 0x72d328: StoreField: r1->field_f = r0
    //     0x72d328: stur            w0, [x1, #0xf]
    // 0x72d32c: ldur            x2, [fp, #-0x18]
    // 0x72d330: StoreField: r1->field_23 = r2
    //     0x72d330: stur            w2, [x1, #0x23]
    // 0x72d334: r2 = Instance_DragStartBehavior
    //     0x72d334: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72d338: StoreField: r1->field_27 = r2
    //     0x72d338: stur            w2, [x1, #0x27]
    // 0x72d33c: r3 = Instance_Clip
    //     0x72d33c: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x72d340: ldr             x3, [x3, #0x2d8]
    // 0x72d344: StoreField: r1->field_2b = r3
    //     0x72d344: stur            w3, [x1, #0x2b]
    // 0x72d348: r3 = Instance_HitTestBehavior
    //     0x72d348: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x72d34c: ldr             x3, [x3, #0xe20]
    // 0x72d350: StoreField: r1->field_2f = r3
    //     0x72d350: stur            w3, [x1, #0x2f]
    // 0x72d354: r0 = SafeArea()
    //     0x72d354: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x72d358: mov             x1, x0
    // 0x72d35c: r0 = true
    //     0x72d35c: add             x0, NULL, #0x20  ; true
    // 0x72d360: stur            x1, [fp, #-0x18]
    // 0x72d364: StoreField: r1->field_b = r0
    //     0x72d364: stur            w0, [x1, #0xb]
    // 0x72d368: StoreField: r1->field_f = r0
    //     0x72d368: stur            w0, [x1, #0xf]
    // 0x72d36c: StoreField: r1->field_13 = r0
    //     0x72d36c: stur            w0, [x1, #0x13]
    // 0x72d370: ArrayStore: r1[0] = r0  ; List_4
    //     0x72d370: stur            w0, [x1, #0x17]
    // 0x72d374: r2 = Instance_EdgeInsets
    //     0x72d374: ldr             x2, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x72d378: StoreField: r1->field_1b = r2
    //     0x72d378: stur            w2, [x1, #0x1b]
    // 0x72d37c: r2 = false
    //     0x72d37c: add             x2, NULL, #0x30  ; false
    // 0x72d380: StoreField: r1->field_1f = r2
    //     0x72d380: stur            w2, [x1, #0x1f]
    // 0x72d384: ldur            x3, [fp, #-8]
    // 0x72d388: StoreField: r1->field_23 = r3
    //     0x72d388: stur            w3, [x1, #0x23]
    // 0x72d38c: r0 = Scaffold()
    //     0x72d38c: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x72d390: ldur            x1, [fp, #-0x10]
    // 0x72d394: ArrayStore: r0[0] = r1  ; List_4
    //     0x72d394: stur            w1, [x0, #0x17]
    // 0x72d398: ldur            x1, [fp, #-0x18]
    // 0x72d39c: StoreField: r0->field_1b = r1
    //     0x72d39c: stur            w1, [x0, #0x1b]
    // 0x72d3a0: r1 = Instance_AlignmentDirectional
    //     0x72d3a0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x72d3a4: ldr             x1, [x1, #0x350]
    // 0x72d3a8: StoreField: r0->field_2f = r1
    //     0x72d3a8: stur            w1, [x0, #0x2f]
    // 0x72d3ac: r1 = Instance_Color
    //     0x72d3ac: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72d3b0: StoreField: r0->field_4f = r1
    //     0x72d3b0: stur            w1, [x0, #0x4f]
    // 0x72d3b4: r1 = true
    //     0x72d3b4: add             x1, NULL, #0x20  ; true
    // 0x72d3b8: StoreField: r0->field_5f = r1
    //     0x72d3b8: stur            w1, [x0, #0x5f]
    // 0x72d3bc: r2 = Instance_DragStartBehavior
    //     0x72d3bc: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72d3c0: StoreField: r0->field_63 = r2
    //     0x72d3c0: stur            w2, [x0, #0x63]
    // 0x72d3c4: r2 = false
    //     0x72d3c4: add             x2, NULL, #0x30  ; false
    // 0x72d3c8: StoreField: r0->field_b = r2
    //     0x72d3c8: stur            w2, [x0, #0xb]
    // 0x72d3cc: StoreField: r0->field_f = r1
    //     0x72d3cc: stur            w1, [x0, #0xf]
    // 0x72d3d0: StoreField: r0->field_13 = r2
    //     0x72d3d0: stur            w2, [x0, #0x13]
    // 0x72d3d4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x72d3d4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x72d3d8: ldr             x2, [x2, #0x358]
    // 0x72d3dc: StoreField: r0->field_4b = r2
    //     0x72d3dc: stur            w2, [x0, #0x4b]
    // 0x72d3e0: StoreField: r0->field_6b = r1
    //     0x72d3e0: stur            w1, [x0, #0x6b]
    // 0x72d3e4: StoreField: r0->field_6f = r1
    //     0x72d3e4: stur            w1, [x0, #0x6f]
    // 0x72d3e8: LeaveFrame
    //     0x72d3e8: mov             SP, fp
    //     0x72d3ec: ldp             fp, lr, [SP], #0x10
    // 0x72d3f0: ret
    //     0x72d3f0: ret             
    // 0x72d3f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72d3f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72d3f8: b               #0x72ceb8
    // 0x72d3fc: r9 = _selectedQuote
    //     0x72d3fc: add             x9, PP, #0x15, lsl #12  ; [pp+0x15fb0] Field <_DualarState@933395931._selectedQuote@933395931>: late final (offset: 0x14)
    //     0x72d400: ldr             x9, [x9, #0xfb0]
    // 0x72d404: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x72d404: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _splitIntoTwoLines(/* No info */) {
    // ** addr: 0x72d408, size: 0x1f0
    // 0x72d408: EnterFrame
    //     0x72d408: stp             fp, lr, [SP, #-0x10]!
    //     0x72d40c: mov             fp, SP
    // 0x72d410: AllocStack(0x30)
    //     0x72d410: sub             SP, SP, #0x30
    // 0x72d414: SetupParameters(_DualarState this /* r1 => r0 */, dynamic _ /* r2 => r1 */)
    //     0x72d414: mov             x0, x1
    //     0x72d418: mov             x1, x2
    // 0x72d41c: CheckStackOverflow
    //     0x72d41c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72d420: cmp             SP, x16
    //     0x72d424: b.ls            #0x72d5f0
    // 0x72d428: r0 = trim()
    //     0x72d428: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x72d42c: mov             x3, x0
    // 0x72d430: stur            x3, [fp, #-8]
    // 0x72d434: r0 = LoadClassIdInstr(r3)
    //     0x72d434: ldur            x0, [x3, #-1]
    //     0x72d438: ubfx            x0, x0, #0xc, #0x14
    // 0x72d43c: mov             x1, x3
    // 0x72d440: r2 = "\n"
    //     0x72d440: ldr             x2, [PP, #0x380]  ; [pp+0x380] "\n"
    // 0x72d444: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72d444: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72d448: r0 = GDT[cid_x0 + -0xff8]()
    //     0x72d448: sub             lr, x0, #0xff8
    //     0x72d44c: ldr             lr, [x21, lr, lsl #3]
    //     0x72d450: blr             lr
    // 0x72d454: tbnz            w0, #4, #0x72d468
    // 0x72d458: ldur            x0, [fp, #-8]
    // 0x72d45c: LeaveFrame
    //     0x72d45c: mov             SP, fp
    //     0x72d460: ldp             fp, lr, [SP], #0x10
    // 0x72d464: ret
    //     0x72d464: ret             
    // 0x72d468: ldur            x0, [fp, #-8]
    // 0x72d46c: r1 = 2
    //     0x72d46c: mov             x1, #2
    // 0x72d470: LoadField: r2 = r0->field_7
    //     0x72d470: ldur            w2, [x0, #7]
    // 0x72d474: r3 = LoadInt32Instr(r2)
    //     0x72d474: sbfx            x3, x2, #1, #0x1f
    // 0x72d478: stur            x3, [fp, #-0x20]
    // 0x72d47c: sdiv            x4, x3, x1
    // 0x72d480: stur            x4, [fp, #-0x18]
    // 0x72d484: lsl             x5, x4, #1
    // 0x72d488: stur            x5, [fp, #-0x10]
    // 0x72d48c: str             x5, [SP]
    // 0x72d490: mov             x1, x0
    // 0x72d494: r2 = " "
    //     0x72d494: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x72d498: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x72d498: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x72d49c: r0 = lastIndexOf()
    //     0x72d49c: bl              #0x3e7110  ; [dart:core] _StringBase::lastIndexOf
    // 0x72d4a0: mov             x4, x0
    // 0x72d4a4: ldur            x3, [fp, #-8]
    // 0x72d4a8: stur            x4, [fp, #-0x28]
    // 0x72d4ac: r0 = LoadClassIdInstr(r3)
    //     0x72d4ac: ldur            x0, [x3, #-1]
    //     0x72d4b0: ubfx            x0, x0, #0xc, #0x14
    // 0x72d4b4: ldur            x16, [fp, #-0x10]
    // 0x72d4b8: str             x16, [SP]
    // 0x72d4bc: mov             x1, x3
    // 0x72d4c0: r2 = " "
    //     0x72d4c0: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x72d4c4: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x72d4c4: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x72d4c8: r0 = GDT[cid_x0 + -0xffa]()
    //     0x72d4c8: sub             lr, x0, #0xffa
    //     0x72d4cc: ldr             lr, [x21, lr, lsl #3]
    //     0x72d4d0: blr             lr
    // 0x72d4d4: mov             x1, x0
    // 0x72d4d8: ldur            x0, [fp, #-0x28]
    // 0x72d4dc: cmn             x0, #1
    // 0x72d4e0: b.ne            #0x72d4fc
    // 0x72d4e4: cmn             x1, #1
    // 0x72d4e8: b.ne            #0x72d4fc
    // 0x72d4ec: ldur            x0, [fp, #-8]
    // 0x72d4f0: LeaveFrame
    //     0x72d4f0: mov             SP, fp
    //     0x72d4f4: ldp             fp, lr, [SP], #0x10
    // 0x72d4f8: ret
    //     0x72d4f8: ret             
    // 0x72d4fc: cmn             x0, #1
    // 0x72d500: b.ne            #0x72d50c
    // 0x72d504: mov             x3, x1
    // 0x72d508: b               #0x72d530
    // 0x72d50c: cmn             x1, #1
    // 0x72d510: b.eq            #0x72d52c
    // 0x72d514: ldur            x2, [fp, #-0x18]
    // 0x72d518: sub             x3, x2, x0
    // 0x72d51c: sub             x4, x1, x2
    // 0x72d520: cmp             x3, x4
    // 0x72d524: b.le            #0x72d52c
    // 0x72d528: mov             x0, x1
    // 0x72d52c: mov             x3, x0
    // 0x72d530: stur            x3, [fp, #-0x18]
    // 0x72d534: cmp             x3, #0
    // 0x72d538: b.le            #0x72d54c
    // 0x72d53c: ldur            x0, [fp, #-0x20]
    // 0x72d540: sub             x1, x0, #1
    // 0x72d544: cmp             x3, x1
    // 0x72d548: b.lt            #0x72d55c
    // 0x72d54c: ldur            x0, [fp, #-8]
    // 0x72d550: LeaveFrame
    //     0x72d550: mov             SP, fp
    //     0x72d554: ldp             fp, lr, [SP], #0x10
    // 0x72d558: ret
    //     0x72d558: ret             
    // 0x72d55c: r0 = BoxInt64Instr(r3)
    //     0x72d55c: sbfiz           x0, x3, #1, #0x1f
    //     0x72d560: cmp             x3, x0, asr #1
    //     0x72d564: b.eq            #0x72d570
    //     0x72d568: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72d56c: stur            x3, [x0, #7]
    // 0x72d570: str             x0, [SP]
    // 0x72d574: ldur            x1, [fp, #-8]
    // 0x72d578: r2 = 0
    //     0x72d578: mov             x2, #0
    // 0x72d57c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x72d57c: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x72d580: r0 = substring()
    //     0x72d580: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x72d584: mov             x1, x0
    // 0x72d588: r0 = trimRight()
    //     0x72d588: bl              #0x3e7318  ; [dart:core] _StringBase::trimRight
    // 0x72d58c: mov             x3, x0
    // 0x72d590: ldur            x0, [fp, #-0x18]
    // 0x72d594: stur            x3, [fp, #-0x10]
    // 0x72d598: add             x2, x0, #1
    // 0x72d59c: ldur            x1, [fp, #-8]
    // 0x72d5a0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72d5a0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72d5a4: r0 = substring()
    //     0x72d5a4: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x72d5a8: mov             x1, x0
    // 0x72d5ac: r0 = trimLeft()
    //     0x72d5ac: bl              #0x3e672c  ; [dart:core] _StringBase::trimLeft
    // 0x72d5b0: r1 = Null
    //     0x72d5b0: mov             x1, NULL
    // 0x72d5b4: r2 = 6
    //     0x72d5b4: mov             x2, #6
    // 0x72d5b8: stur            x0, [fp, #-8]
    // 0x72d5bc: r0 = AllocateArray()
    //     0x72d5bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72d5c0: mov             x1, x0
    // 0x72d5c4: ldur            x0, [fp, #-0x10]
    // 0x72d5c8: StoreField: r1->field_f = r0
    //     0x72d5c8: stur            w0, [x1, #0xf]
    // 0x72d5cc: r16 = "\n"
    //     0x72d5cc: ldr             x16, [PP, #0x380]  ; [pp+0x380] "\n"
    // 0x72d5d0: StoreField: r1->field_13 = r16
    //     0x72d5d0: stur            w16, [x1, #0x13]
    // 0x72d5d4: ldur            x0, [fp, #-8]
    // 0x72d5d8: ArrayStore: r1[0] = r0  ; List_4
    //     0x72d5d8: stur            w0, [x1, #0x17]
    // 0x72d5dc: str             x1, [SP]
    // 0x72d5e0: r0 = _interpolate()
    //     0x72d5e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72d5e4: LeaveFrame
    //     0x72d5e4: mov             SP, fp
    //     0x72d5e8: ldp             fp, lr, [SP], #0x10
    // 0x72d5ec: ret
    //     0x72d5ec: ret             
    // 0x72d5f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72d5f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72d5f4: b               #0x72d428
  }
  _ _buildModernCard(/* No info */) {
    // ** addr: 0x72d5f8, size: 0x578
    // 0x72d5f8: EnterFrame
    //     0x72d5f8: stp             fp, lr, [SP, #-0x10]!
    //     0x72d5fc: mov             fp, SP
    // 0x72d600: AllocStack(0x58)
    //     0x72d600: sub             SP, SP, #0x58
    // 0x72d604: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */, dynamic _ /* r6 => r6, fp-0x20 */, dynamic _ /* r7 => r7, fp-0x28 */)
    //     0x72d604: mov             x0, x2
    //     0x72d608: stur            x2, [fp, #-8]
    //     0x72d60c: stur            x3, [fp, #-0x10]
    //     0x72d610: stur            x5, [fp, #-0x18]
    //     0x72d614: stur            x6, [fp, #-0x20]
    //     0x72d618: stur            x7, [fp, #-0x28]
    // 0x72d61c: CheckStackOverflow
    //     0x72d61c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72d620: cmp             SP, x16
    //     0x72d624: b.ls            #0x72db68
    // 0x72d628: r16 = 0.800000
    //     0x72d628: add             x16, PP, #0x14, lsl #12  ; [pp+0x14cf0] 0.8
    //     0x72d62c: ldr             x16, [x16, #0xcf0]
    // 0x72d630: str             x16, [SP]
    // 0x72d634: mov             x1, x0
    // 0x72d638: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72d638: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72d63c: ldr             x4, [x4, #0x198]
    // 0x72d640: r0 = withValues()
    //     0x72d640: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72d644: r1 = Null
    //     0x72d644: mov             x1, NULL
    // 0x72d648: r2 = 4
    //     0x72d648: mov             x2, #4
    // 0x72d64c: stur            x0, [fp, #-0x30]
    // 0x72d650: r0 = AllocateArray()
    //     0x72d650: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72d654: mov             x2, x0
    // 0x72d658: ldur            x0, [fp, #-8]
    // 0x72d65c: stur            x2, [fp, #-0x38]
    // 0x72d660: StoreField: r2->field_f = r0
    //     0x72d660: stur            w0, [x2, #0xf]
    // 0x72d664: ldur            x1, [fp, #-0x30]
    // 0x72d668: StoreField: r2->field_13 = r1
    //     0x72d668: stur            w1, [x2, #0x13]
    // 0x72d66c: r1 = <Color>
    //     0x72d66c: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x72d670: ldr             x1, [x1, #0x800]
    // 0x72d674: r0 = AllocateGrowableArray()
    //     0x72d674: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72d678: mov             x1, x0
    // 0x72d67c: ldur            x0, [fp, #-0x38]
    // 0x72d680: stur            x1, [fp, #-0x30]
    // 0x72d684: StoreField: r1->field_f = r0
    //     0x72d684: stur            w0, [x1, #0xf]
    // 0x72d688: r0 = 4
    //     0x72d688: mov             x0, #4
    // 0x72d68c: StoreField: r1->field_b = r0
    //     0x72d68c: stur            w0, [x1, #0xb]
    // 0x72d690: r0 = LinearGradient()
    //     0x72d690: bl              #0x55ed60  ; AllocateLinearGradientStub -> LinearGradient (size=0x20)
    // 0x72d694: mov             x1, x0
    // 0x72d698: r0 = Instance_Alignment
    //     0x72d698: add             x0, PP, #0x10, lsl #12  ; [pp+0x10f58] Obj!Alignment@a0ceb1
    //     0x72d69c: ldr             x0, [x0, #0xf58]
    // 0x72d6a0: stur            x1, [fp, #-0x38]
    // 0x72d6a4: StoreField: r1->field_13 = r0
    //     0x72d6a4: stur            w0, [x1, #0x13]
    // 0x72d6a8: r0 = Instance_Alignment
    //     0x72d6a8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15598] Obj!Alignment@a0cf71
    //     0x72d6ac: ldr             x0, [x0, #0x598]
    // 0x72d6b0: ArrayStore: r1[0] = r0  ; List_4
    //     0x72d6b0: stur            w0, [x1, #0x17]
    // 0x72d6b4: r0 = Instance_TileMode
    //     0x72d6b4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d08] Obj!TileMode@a2d831
    //     0x72d6b8: ldr             x0, [x0, #0xd08]
    // 0x72d6bc: StoreField: r1->field_1b = r0
    //     0x72d6bc: stur            w0, [x1, #0x1b]
    // 0x72d6c0: ldur            x0, [fp, #-0x30]
    // 0x72d6c4: StoreField: r1->field_7 = r0
    //     0x72d6c4: stur            w0, [x1, #7]
    // 0x72d6c8: r0 = Radius()
    //     0x72d6c8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72d6cc: d0 = 16.000000
    //     0x72d6cc: fmov            d0, #16.00000000
    // 0x72d6d0: stur            x0, [fp, #-0x30]
    // 0x72d6d4: StoreField: r0->field_7 = d0
    //     0x72d6d4: stur            d0, [x0, #7]
    // 0x72d6d8: StoreField: r0->field_f = d0
    //     0x72d6d8: stur            d0, [x0, #0xf]
    // 0x72d6dc: r0 = BorderRadius()
    //     0x72d6dc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x72d6e0: mov             x2, x0
    // 0x72d6e4: ldur            x0, [fp, #-0x30]
    // 0x72d6e8: stur            x2, [fp, #-0x40]
    // 0x72d6ec: StoreField: r2->field_7 = r0
    //     0x72d6ec: stur            w0, [x2, #7]
    // 0x72d6f0: StoreField: r2->field_b = r0
    //     0x72d6f0: stur            w0, [x2, #0xb]
    // 0x72d6f4: StoreField: r2->field_f = r0
    //     0x72d6f4: stur            w0, [x2, #0xf]
    // 0x72d6f8: StoreField: r2->field_13 = r0
    //     0x72d6f8: stur            w0, [x2, #0x13]
    // 0x72d6fc: r16 = 0.300000
    //     0x72d6fc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x72d700: ldr             x16, [x16, #0x320]
    // 0x72d704: str             x16, [SP]
    // 0x72d708: ldur            x1, [fp, #-8]
    // 0x72d70c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72d70c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72d710: ldr             x4, [x4, #0x198]
    // 0x72d714: r0 = withValues()
    //     0x72d714: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72d718: stur            x0, [fp, #-8]
    // 0x72d71c: r0 = BoxShadow()
    //     0x72d71c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x72d720: stur            x0, [fp, #-0x30]
    // 0x72d724: ArrayStore: r0[0] = rZR  ; List_8
    //     0x72d724: stur            xzr, [x0, #0x17]
    // 0x72d728: r1 = Instance_BlurStyle
    //     0x72d728: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x72d72c: ldr             x1, [x1, #0x9b0]
    // 0x72d730: StoreField: r0->field_1f = r1
    //     0x72d730: stur            w1, [x0, #0x1f]
    // 0x72d734: ldur            x1, [fp, #-8]
    // 0x72d738: StoreField: r0->field_7 = r1
    //     0x72d738: stur            w1, [x0, #7]
    // 0x72d73c: r1 = Instance_Offset
    //     0x72d73c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x72d740: ldr             x1, [x1, #0x9b8]
    // 0x72d744: StoreField: r0->field_b = r1
    //     0x72d744: stur            w1, [x0, #0xb]
    // 0x72d748: d0 = 12.000000
    //     0x72d748: fmov            d0, #12.00000000
    // 0x72d74c: StoreField: r0->field_f = d0
    //     0x72d74c: stur            d0, [x0, #0xf]
    // 0x72d750: r1 = Null
    //     0x72d750: mov             x1, NULL
    // 0x72d754: r2 = 2
    //     0x72d754: mov             x2, #2
    // 0x72d758: r0 = AllocateArray()
    //     0x72d758: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72d75c: mov             x2, x0
    // 0x72d760: ldur            x0, [fp, #-0x30]
    // 0x72d764: stur            x2, [fp, #-8]
    // 0x72d768: StoreField: r2->field_f = r0
    //     0x72d768: stur            w0, [x2, #0xf]
    // 0x72d76c: r1 = <BoxShadow>
    //     0x72d76c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x72d770: ldr             x1, [x1, #0x9c0]
    // 0x72d774: r0 = AllocateGrowableArray()
    //     0x72d774: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72d778: mov             x1, x0
    // 0x72d77c: ldur            x0, [fp, #-8]
    // 0x72d780: stur            x1, [fp, #-0x30]
    // 0x72d784: StoreField: r1->field_f = r0
    //     0x72d784: stur            w0, [x1, #0xf]
    // 0x72d788: r0 = 2
    //     0x72d788: mov             x0, #2
    // 0x72d78c: StoreField: r1->field_b = r0
    //     0x72d78c: stur            w0, [x1, #0xb]
    // 0x72d790: r0 = BoxDecoration()
    //     0x72d790: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x72d794: mov             x2, x0
    // 0x72d798: ldur            x0, [fp, #-0x40]
    // 0x72d79c: stur            x2, [fp, #-8]
    // 0x72d7a0: StoreField: r2->field_13 = r0
    //     0x72d7a0: stur            w0, [x2, #0x13]
    // 0x72d7a4: ldur            x0, [fp, #-0x30]
    // 0x72d7a8: ArrayStore: r2[0] = r0  ; List_4
    //     0x72d7a8: stur            w0, [x2, #0x17]
    // 0x72d7ac: ldur            x0, [fp, #-0x38]
    // 0x72d7b0: StoreField: r2->field_1b = r0
    //     0x72d7b0: stur            w0, [x2, #0x1b]
    // 0x72d7b4: r0 = Instance_BoxShape
    //     0x72d7b4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x72d7b8: ldr             x0, [x0, #0x1c8]
    // 0x72d7bc: StoreField: r2->field_23 = r0
    //     0x72d7bc: stur            w0, [x2, #0x23]
    // 0x72d7c0: r16 = 0.200000
    //     0x72d7c0: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x72d7c4: ldr             x16, [x16, #0x1f0]
    // 0x72d7c8: str             x16, [SP]
    // 0x72d7cc: r1 = Instance_Color
    //     0x72d7cc: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72d7d0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72d7d0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72d7d4: ldr             x4, [x4, #0x198]
    // 0x72d7d8: r0 = withValues()
    //     0x72d7d8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72d7dc: stur            x0, [fp, #-0x30]
    // 0x72d7e0: r0 = Radius()
    //     0x72d7e0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72d7e4: d0 = 12.000000
    //     0x72d7e4: fmov            d0, #12.00000000
    // 0x72d7e8: stur            x0, [fp, #-0x38]
    // 0x72d7ec: StoreField: r0->field_7 = d0
    //     0x72d7ec: stur            d0, [x0, #7]
    // 0x72d7f0: StoreField: r0->field_f = d0
    //     0x72d7f0: stur            d0, [x0, #0xf]
    // 0x72d7f4: r0 = BorderRadius()
    //     0x72d7f4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x72d7f8: mov             x1, x0
    // 0x72d7fc: ldur            x0, [fp, #-0x38]
    // 0x72d800: stur            x1, [fp, #-0x40]
    // 0x72d804: StoreField: r1->field_7 = r0
    //     0x72d804: stur            w0, [x1, #7]
    // 0x72d808: StoreField: r1->field_b = r0
    //     0x72d808: stur            w0, [x1, #0xb]
    // 0x72d80c: StoreField: r1->field_f = r0
    //     0x72d80c: stur            w0, [x1, #0xf]
    // 0x72d810: StoreField: r1->field_13 = r0
    //     0x72d810: stur            w0, [x1, #0x13]
    // 0x72d814: r0 = BoxDecoration()
    //     0x72d814: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x72d818: mov             x1, x0
    // 0x72d81c: ldur            x0, [fp, #-0x30]
    // 0x72d820: stur            x1, [fp, #-0x38]
    // 0x72d824: StoreField: r1->field_7 = r0
    //     0x72d824: stur            w0, [x1, #7]
    // 0x72d828: ldur            x0, [fp, #-0x40]
    // 0x72d82c: StoreField: r1->field_13 = r0
    //     0x72d82c: stur            w0, [x1, #0x13]
    // 0x72d830: r0 = Instance_BoxShape
    //     0x72d830: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x72d834: ldr             x0, [x0, #0x1c8]
    // 0x72d838: StoreField: r1->field_23 = r0
    //     0x72d838: stur            w0, [x1, #0x23]
    // 0x72d83c: r0 = Icon()
    //     0x72d83c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x72d840: mov             x1, x0
    // 0x72d844: ldur            x0, [fp, #-0x10]
    // 0x72d848: stur            x1, [fp, #-0x30]
    // 0x72d84c: StoreField: r1->field_b = r0
    //     0x72d84c: stur            w0, [x1, #0xb]
    // 0x72d850: r0 = 32.000000
    //     0x72d850: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x72d854: ldr             x0, [x0, #0xfe0]
    // 0x72d858: StoreField: r1->field_f = r0
    //     0x72d858: stur            w0, [x1, #0xf]
    // 0x72d85c: r0 = Instance_Color
    //     0x72d85c: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72d860: StoreField: r1->field_23 = r0
    //     0x72d860: stur            w0, [x1, #0x23]
    // 0x72d864: r0 = Container()
    //     0x72d864: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x72d868: stur            x0, [fp, #-0x10]
    // 0x72d86c: r16 = Instance_EdgeInsets
    //     0x72d86c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x72d870: ldr             x16, [x16, #0x240]
    // 0x72d874: ldur            lr, [fp, #-0x38]
    // 0x72d878: stp             lr, x16, [SP, #8]
    // 0x72d87c: ldur            x16, [fp, #-0x30]
    // 0x72d880: str             x16, [SP]
    // 0x72d884: mov             x1, x0
    // 0x72d888: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x72d888: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x72d88c: ldr             x4, [x4, #0x1e8]
    // 0x72d890: r0 = Container()
    //     0x72d890: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72d894: r0 = Text()
    //     0x72d894: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72d898: mov             x2, x0
    // 0x72d89c: ldur            x0, [fp, #-0x28]
    // 0x72d8a0: stur            x2, [fp, #-0x30]
    // 0x72d8a4: StoreField: r2->field_b = r0
    //     0x72d8a4: stur            w0, [x2, #0xb]
    // 0x72d8a8: r0 = Instance_TextStyle
    //     0x72d8a8: add             x0, PP, #0x15, lsl #12  ; [pp+0x154b8] Obj!TextStyle@a17521
    //     0x72d8ac: ldr             x0, [x0, #0x4b8]
    // 0x72d8b0: StoreField: r2->field_13 = r0
    //     0x72d8b0: stur            w0, [x2, #0x13]
    // 0x72d8b4: r16 = 0.900000
    //     0x72d8b4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x72d8b8: ldr             x16, [x16, #0x190]
    // 0x72d8bc: str             x16, [SP]
    // 0x72d8c0: r1 = Instance_Color
    //     0x72d8c0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72d8c4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72d8c4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72d8c8: ldr             x4, [x4, #0x198]
    // 0x72d8cc: r0 = withValues()
    //     0x72d8cc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72d8d0: stur            x0, [fp, #-0x28]
    // 0x72d8d4: r0 = TextStyle()
    //     0x72d8d4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x72d8d8: mov             x1, x0
    // 0x72d8dc: r0 = true
    //     0x72d8dc: add             x0, NULL, #0x20  ; true
    // 0x72d8e0: stur            x1, [fp, #-0x38]
    // 0x72d8e4: StoreField: r1->field_7 = r0
    //     0x72d8e4: stur            w0, [x1, #7]
    // 0x72d8e8: ldur            x0, [fp, #-0x28]
    // 0x72d8ec: StoreField: r1->field_b = r0
    //     0x72d8ec: stur            w0, [x1, #0xb]
    // 0x72d8f0: r0 = 14.000000
    //     0x72d8f0: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x72d8f4: ldr             x0, [x0, #0x1c8]
    // 0x72d8f8: StoreField: r1->field_1f = r0
    //     0x72d8f8: stur            w0, [x1, #0x1f]
    // 0x72d8fc: r0 = Text()
    //     0x72d8fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72d900: mov             x3, x0
    // 0x72d904: ldur            x0, [fp, #-0x20]
    // 0x72d908: stur            x3, [fp, #-0x28]
    // 0x72d90c: StoreField: r3->field_b = r0
    //     0x72d90c: stur            w0, [x3, #0xb]
    // 0x72d910: ldur            x0, [fp, #-0x38]
    // 0x72d914: StoreField: r3->field_13 = r0
    //     0x72d914: stur            w0, [x3, #0x13]
    // 0x72d918: r1 = Null
    //     0x72d918: mov             x1, NULL
    // 0x72d91c: r2 = 6
    //     0x72d91c: mov             x2, #6
    // 0x72d920: r0 = AllocateArray()
    //     0x72d920: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72d924: mov             x2, x0
    // 0x72d928: ldur            x0, [fp, #-0x30]
    // 0x72d92c: stur            x2, [fp, #-0x20]
    // 0x72d930: StoreField: r2->field_f = r0
    //     0x72d930: stur            w0, [x2, #0xf]
    // 0x72d934: r16 = Instance_SizedBox
    //     0x72d934: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x72d938: ldr             x16, [x16, #0x338]
    // 0x72d93c: StoreField: r2->field_13 = r16
    //     0x72d93c: stur            w16, [x2, #0x13]
    // 0x72d940: ldur            x0, [fp, #-0x28]
    // 0x72d944: ArrayStore: r2[0] = r0  ; List_4
    //     0x72d944: stur            w0, [x2, #0x17]
    // 0x72d948: r1 = <Widget>
    //     0x72d948: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72d94c: r0 = AllocateGrowableArray()
    //     0x72d94c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72d950: mov             x1, x0
    // 0x72d954: ldur            x0, [fp, #-0x20]
    // 0x72d958: stur            x1, [fp, #-0x28]
    // 0x72d95c: StoreField: r1->field_f = r0
    //     0x72d95c: stur            w0, [x1, #0xf]
    // 0x72d960: r0 = 6
    //     0x72d960: mov             x0, #6
    // 0x72d964: StoreField: r1->field_b = r0
    //     0x72d964: stur            w0, [x1, #0xb]
    // 0x72d968: r0 = Column()
    //     0x72d968: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72d96c: mov             x2, x0
    // 0x72d970: r0 = Instance_Axis
    //     0x72d970: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72d974: stur            x2, [fp, #-0x20]
    // 0x72d978: StoreField: r2->field_f = r0
    //     0x72d978: stur            w0, [x2, #0xf]
    // 0x72d97c: r0 = Instance_MainAxisAlignment
    //     0x72d97c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72d980: ldr             x0, [x0, #0x230]
    // 0x72d984: StoreField: r2->field_13 = r0
    //     0x72d984: stur            w0, [x2, #0x13]
    // 0x72d988: r3 = Instance_MainAxisSize
    //     0x72d988: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72d98c: ldr             x3, [x3, #0x330]
    // 0x72d990: ArrayStore: r2[0] = r3  ; List_4
    //     0x72d990: stur            w3, [x2, #0x17]
    // 0x72d994: r1 = Instance_CrossAxisAlignment
    //     0x72d994: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72d998: ldr             x1, [x1, #0x238]
    // 0x72d99c: StoreField: r2->field_1b = r1
    //     0x72d99c: stur            w1, [x2, #0x1b]
    // 0x72d9a0: r4 = Instance_VerticalDirection
    //     0x72d9a0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72d9a4: ldr             x4, [x4, #0x340]
    // 0x72d9a8: StoreField: r2->field_23 = r4
    //     0x72d9a8: stur            w4, [x2, #0x23]
    // 0x72d9ac: r5 = Instance_Clip
    //     0x72d9ac: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72d9b0: ldr             x5, [x5, #0x348]
    // 0x72d9b4: StoreField: r2->field_2b = r5
    //     0x72d9b4: stur            w5, [x2, #0x2b]
    // 0x72d9b8: StoreField: r2->field_2f = rZR
    //     0x72d9b8: stur            xzr, [x2, #0x2f]
    // 0x72d9bc: ldur            x1, [fp, #-0x28]
    // 0x72d9c0: StoreField: r2->field_b = r1
    //     0x72d9c0: stur            w1, [x2, #0xb]
    // 0x72d9c4: r1 = <FlexParentData>
    //     0x72d9c4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72d9c8: ldr             x1, [x1, #0x340]
    // 0x72d9cc: r0 = Expanded()
    //     0x72d9cc: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x72d9d0: mov             x2, x0
    // 0x72d9d4: r0 = 1
    //     0x72d9d4: mov             x0, #1
    // 0x72d9d8: stur            x2, [fp, #-0x28]
    // 0x72d9dc: StoreField: r2->field_13 = r0
    //     0x72d9dc: stur            x0, [x2, #0x13]
    // 0x72d9e0: r0 = Instance_FlexFit
    //     0x72d9e0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72d9e4: ldr             x0, [x0, #0x348]
    // 0x72d9e8: StoreField: r2->field_1b = r0
    //     0x72d9e8: stur            w0, [x2, #0x1b]
    // 0x72d9ec: ldur            x0, [fp, #-0x20]
    // 0x72d9f0: StoreField: r2->field_b = r0
    //     0x72d9f0: stur            w0, [x2, #0xb]
    // 0x72d9f4: r16 = 0.800000
    //     0x72d9f4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14cf0] 0.8
    //     0x72d9f8: ldr             x16, [x16, #0xcf0]
    // 0x72d9fc: str             x16, [SP]
    // 0x72da00: r1 = Instance_Color
    //     0x72da00: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72da04: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72da04: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72da08: ldr             x4, [x4, #0x198]
    // 0x72da0c: r0 = withValues()
    //     0x72da0c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72da10: stur            x0, [fp, #-0x20]
    // 0x72da14: r0 = Icon()
    //     0x72da14: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x72da18: mov             x3, x0
    // 0x72da1c: r0 = Instance_IconData
    //     0x72da1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x72da20: ldr             x0, [x0, #0x350]
    // 0x72da24: stur            x3, [fp, #-0x30]
    // 0x72da28: StoreField: r3->field_b = r0
    //     0x72da28: stur            w0, [x3, #0xb]
    // 0x72da2c: r0 = 20.000000
    //     0x72da2c: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x72da30: ldr             x0, [x0, #0xe48]
    // 0x72da34: StoreField: r3->field_f = r0
    //     0x72da34: stur            w0, [x3, #0xf]
    // 0x72da38: ldur            x0, [fp, #-0x20]
    // 0x72da3c: StoreField: r3->field_23 = r0
    //     0x72da3c: stur            w0, [x3, #0x23]
    // 0x72da40: r1 = Null
    //     0x72da40: mov             x1, NULL
    // 0x72da44: r2 = 8
    //     0x72da44: mov             x2, #8
    // 0x72da48: r0 = AllocateArray()
    //     0x72da48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72da4c: mov             x2, x0
    // 0x72da50: ldur            x0, [fp, #-0x10]
    // 0x72da54: stur            x2, [fp, #-0x20]
    // 0x72da58: StoreField: r2->field_f = r0
    //     0x72da58: stur            w0, [x2, #0xf]
    // 0x72da5c: r16 = Instance_SizedBox
    //     0x72da5c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x72da60: ldr             x16, [x16, #0x758]
    // 0x72da64: StoreField: r2->field_13 = r16
    //     0x72da64: stur            w16, [x2, #0x13]
    // 0x72da68: ldur            x0, [fp, #-0x28]
    // 0x72da6c: ArrayStore: r2[0] = r0  ; List_4
    //     0x72da6c: stur            w0, [x2, #0x17]
    // 0x72da70: ldur            x0, [fp, #-0x30]
    // 0x72da74: StoreField: r2->field_1b = r0
    //     0x72da74: stur            w0, [x2, #0x1b]
    // 0x72da78: r1 = <Widget>
    //     0x72da78: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72da7c: r0 = AllocateGrowableArray()
    //     0x72da7c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72da80: mov             x1, x0
    // 0x72da84: ldur            x0, [fp, #-0x20]
    // 0x72da88: stur            x1, [fp, #-0x10]
    // 0x72da8c: StoreField: r1->field_f = r0
    //     0x72da8c: stur            w0, [x1, #0xf]
    // 0x72da90: r0 = 8
    //     0x72da90: mov             x0, #8
    // 0x72da94: StoreField: r1->field_b = r0
    //     0x72da94: stur            w0, [x1, #0xb]
    // 0x72da98: r0 = Row()
    //     0x72da98: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72da9c: mov             x1, x0
    // 0x72daa0: r0 = Instance_Axis
    //     0x72daa0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72daa4: stur            x1, [fp, #-0x20]
    // 0x72daa8: StoreField: r1->field_f = r0
    //     0x72daa8: stur            w0, [x1, #0xf]
    // 0x72daac: r0 = Instance_MainAxisAlignment
    //     0x72daac: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72dab0: ldr             x0, [x0, #0x230]
    // 0x72dab4: StoreField: r1->field_13 = r0
    //     0x72dab4: stur            w0, [x1, #0x13]
    // 0x72dab8: r0 = Instance_MainAxisSize
    //     0x72dab8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72dabc: ldr             x0, [x0, #0x330]
    // 0x72dac0: ArrayStore: r1[0] = r0  ; List_4
    //     0x72dac0: stur            w0, [x1, #0x17]
    // 0x72dac4: r0 = Instance_CrossAxisAlignment
    //     0x72dac4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72dac8: ldr             x0, [x0, #0x338]
    // 0x72dacc: StoreField: r1->field_1b = r0
    //     0x72dacc: stur            w0, [x1, #0x1b]
    // 0x72dad0: r0 = Instance_VerticalDirection
    //     0x72dad0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72dad4: ldr             x0, [x0, #0x340]
    // 0x72dad8: StoreField: r1->field_23 = r0
    //     0x72dad8: stur            w0, [x1, #0x23]
    // 0x72dadc: r0 = Instance_Clip
    //     0x72dadc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72dae0: ldr             x0, [x0, #0x348]
    // 0x72dae4: StoreField: r1->field_2b = r0
    //     0x72dae4: stur            w0, [x1, #0x2b]
    // 0x72dae8: StoreField: r1->field_2f = rZR
    //     0x72dae8: stur            xzr, [x1, #0x2f]
    // 0x72daec: ldur            x0, [fp, #-0x10]
    // 0x72daf0: StoreField: r1->field_b = r0
    //     0x72daf0: stur            w0, [x1, #0xb]
    // 0x72daf4: r0 = Padding()
    //     0x72daf4: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72daf8: mov             x1, x0
    // 0x72dafc: r0 = Instance_EdgeInsets
    //     0x72dafc: ldr             x0, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x72db00: stur            x1, [fp, #-0x10]
    // 0x72db04: StoreField: r1->field_f = r0
    //     0x72db04: stur            w0, [x1, #0xf]
    // 0x72db08: ldur            x0, [fp, #-0x20]
    // 0x72db0c: StoreField: r1->field_b = r0
    //     0x72db0c: stur            w0, [x1, #0xb]
    // 0x72db10: r0 = Container()
    //     0x72db10: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x72db14: stur            x0, [fp, #-0x20]
    // 0x72db18: ldur            x16, [fp, #-8]
    // 0x72db1c: ldur            lr, [fp, #-0x10]
    // 0x72db20: stp             lr, x16, [SP]
    // 0x72db24: mov             x1, x0
    // 0x72db28: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x72db28: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x72db2c: ldr             x4, [x4, #0xfa8]
    // 0x72db30: r0 = Container()
    //     0x72db30: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72db34: r0 = GestureDetector()
    //     0x72db34: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x72db38: stur            x0, [fp, #-8]
    // 0x72db3c: ldur            x16, [fp, #-0x18]
    // 0x72db40: ldur            lr, [fp, #-0x20]
    // 0x72db44: stp             lr, x16, [SP]
    // 0x72db48: mov             x1, x0
    // 0x72db4c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x72db4c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x72db50: ldr             x4, [x4, #0xd50]
    // 0x72db54: r0 = GestureDetector()
    //     0x72db54: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x72db58: ldur            x0, [fp, #-8]
    // 0x72db5c: LeaveFrame
    //     0x72db5c: mov             SP, fp
    //     0x72db60: ldp             fp, lr, [SP], #0x10
    // 0x72db64: ret
    //     0x72db64: ret             
    // 0x72db68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72db68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72db6c: b               #0x72d628
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72db70, size: 0xb4
    // 0x72db70: EnterFrame
    //     0x72db70: stp             fp, lr, [SP, #-0x10]!
    //     0x72db74: mov             fp, SP
    // 0x72db78: AllocStack(0x30)
    //     0x72db78: sub             SP, SP, #0x30
    // 0x72db7c: SetupParameters([dynamic _ /* r0 */])
    //     0x72db7c: ldr             x0, [fp, #0x10]
    //     0x72db80: ldur            w1, [x0, #0x17]
    //     0x72db84: add             x1, x1, HEAP, lsl #32
    // 0x72db88: CheckStackOverflow
    //     0x72db88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72db8c: cmp             SP, x16
    //     0x72db90: b.ls            #0x72dc1c
    // 0x72db94: LoadField: r0 = r1->field_f
    //     0x72db94: ldur            w0, [x1, #0xf]
    // 0x72db98: DecompressPointer r0
    //     0x72db98: add             x0, x0, HEAP, lsl #32
    // 0x72db9c: stur            x0, [fp, #-8]
    // 0x72dba0: r1 = Function '<anonymous closure>':.
    //     0x72dba0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15fb8] AnonymousClosure: (0x72dc24), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72dba4: ldr             x1, [x1, #0xfb8]
    // 0x72dba8: r2 = Null
    //     0x72dba8: mov             x2, NULL
    // 0x72dbac: r0 = AllocateClosure()
    //     0x72dbac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72dbb0: r1 = Null
    //     0x72dbb0: mov             x1, NULL
    // 0x72dbb4: stur            x0, [fp, #-0x10]
    // 0x72dbb8: r0 = MaterialPageRoute()
    //     0x72dbb8: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x72dbbc: mov             x4, x0
    // 0x72dbc0: ldur            x0, [fp, #-0x10]
    // 0x72dbc4: stur            x4, [fp, #-0x18]
    // 0x72dbc8: StoreField: r4->field_a3 = r0
    //     0x72dbc8: stur            w0, [x4, #0xa3]
    // 0x72dbcc: r0 = true
    //     0x72dbcc: add             x0, NULL, #0x20  ; true
    // 0x72dbd0: StoreField: r4->field_a7 = r0
    //     0x72dbd0: stur            w0, [x4, #0xa7]
    // 0x72dbd4: r1 = false
    //     0x72dbd4: add             x1, NULL, #0x30  ; false
    // 0x72dbd8: StoreField: r4->field_97 = r1
    //     0x72dbd8: stur            w1, [x4, #0x97]
    // 0x72dbdc: StoreField: r4->field_9b = r0
    //     0x72dbdc: stur            w0, [x4, #0x9b]
    // 0x72dbe0: StoreField: r4->field_9f = r1
    //     0x72dbe0: stur            w1, [x4, #0x9f]
    // 0x72dbe4: mov             x1, x4
    // 0x72dbe8: r2 = Null
    //     0x72dbe8: mov             x2, NULL
    // 0x72dbec: r3 = Null
    //     0x72dbec: mov             x3, NULL
    // 0x72dbf0: r0 = ModalRoute()
    //     0x72dbf0: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x72dbf4: ldur            x16, [fp, #-8]
    // 0x72dbf8: stp             x16, NULL, [SP, #8]
    // 0x72dbfc: ldur            x16, [fp, #-0x18]
    // 0x72dc00: str             x16, [SP]
    // 0x72dc04: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x72dc04: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72dc08: r0 = push()
    //     0x72dc08: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x72dc0c: r0 = Null
    //     0x72dc0c: mov             x0, NULL
    // 0x72dc10: LeaveFrame
    //     0x72dc10: mov             SP, fp
    //     0x72dc14: ldp             fp, lr, [SP], #0x10
    // 0x72dc18: ret
    //     0x72dc18: ret             
    // 0x72dc1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72dc1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72dc20: b               #0x72db94
  }
  [closure] ZikirCek <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72dc24, size: 0x18
    // 0x72dc24: EnterFrame
    //     0x72dc24: stp             fp, lr, [SP, #-0x10]!
    //     0x72dc28: mov             fp, SP
    // 0x72dc2c: r0 = ZikirCek()
    //     0x72dc2c: bl              #0x6fc454  ; AllocateZikirCekStub -> ZikirCek (size=0x10)
    // 0x72dc30: LeaveFrame
    //     0x72dc30: mov             SP, fp
    //     0x72dc34: ldp             fp, lr, [SP], #0x10
    // 0x72dc38: ret
    //     0x72dc38: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72dc3c, size: 0xb4
    // 0x72dc3c: EnterFrame
    //     0x72dc3c: stp             fp, lr, [SP, #-0x10]!
    //     0x72dc40: mov             fp, SP
    // 0x72dc44: AllocStack(0x30)
    //     0x72dc44: sub             SP, SP, #0x30
    // 0x72dc48: SetupParameters([dynamic _ /* r0 */])
    //     0x72dc48: ldr             x0, [fp, #0x10]
    //     0x72dc4c: ldur            w1, [x0, #0x17]
    //     0x72dc50: add             x1, x1, HEAP, lsl #32
    // 0x72dc54: CheckStackOverflow
    //     0x72dc54: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72dc58: cmp             SP, x16
    //     0x72dc5c: b.ls            #0x72dce8
    // 0x72dc60: LoadField: r0 = r1->field_f
    //     0x72dc60: ldur            w0, [x1, #0xf]
    // 0x72dc64: DecompressPointer r0
    //     0x72dc64: add             x0, x0, HEAP, lsl #32
    // 0x72dc68: stur            x0, [fp, #-8]
    // 0x72dc6c: r1 = Function '<anonymous closure>':.
    //     0x72dc6c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15fc0] AnonymousClosure: (0x72dcf0), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72dc70: ldr             x1, [x1, #0xfc0]
    // 0x72dc74: r2 = Null
    //     0x72dc74: mov             x2, NULL
    // 0x72dc78: r0 = AllocateClosure()
    //     0x72dc78: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72dc7c: r1 = Null
    //     0x72dc7c: mov             x1, NULL
    // 0x72dc80: stur            x0, [fp, #-0x10]
    // 0x72dc84: r0 = MaterialPageRoute()
    //     0x72dc84: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x72dc88: mov             x4, x0
    // 0x72dc8c: ldur            x0, [fp, #-0x10]
    // 0x72dc90: stur            x4, [fp, #-0x18]
    // 0x72dc94: StoreField: r4->field_a3 = r0
    //     0x72dc94: stur            w0, [x4, #0xa3]
    // 0x72dc98: r0 = true
    //     0x72dc98: add             x0, NULL, #0x20  ; true
    // 0x72dc9c: StoreField: r4->field_a7 = r0
    //     0x72dc9c: stur            w0, [x4, #0xa7]
    // 0x72dca0: r1 = false
    //     0x72dca0: add             x1, NULL, #0x30  ; false
    // 0x72dca4: StoreField: r4->field_97 = r1
    //     0x72dca4: stur            w1, [x4, #0x97]
    // 0x72dca8: StoreField: r4->field_9b = r0
    //     0x72dca8: stur            w0, [x4, #0x9b]
    // 0x72dcac: StoreField: r4->field_9f = r1
    //     0x72dcac: stur            w1, [x4, #0x9f]
    // 0x72dcb0: mov             x1, x4
    // 0x72dcb4: r2 = Null
    //     0x72dcb4: mov             x2, NULL
    // 0x72dcb8: r3 = Null
    //     0x72dcb8: mov             x3, NULL
    // 0x72dcbc: r0 = ModalRoute()
    //     0x72dcbc: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x72dcc0: ldur            x16, [fp, #-8]
    // 0x72dcc4: stp             x16, NULL, [SP, #8]
    // 0x72dcc8: ldur            x16, [fp, #-0x18]
    // 0x72dccc: str             x16, [SP]
    // 0x72dcd0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x72dcd0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72dcd4: r0 = push()
    //     0x72dcd4: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x72dcd8: r0 = Null
    //     0x72dcd8: mov             x0, NULL
    // 0x72dcdc: LeaveFrame
    //     0x72dcdc: mov             SP, fp
    //     0x72dce0: ldp             fp, lr, [SP], #0x10
    // 0x72dce4: ret
    //     0x72dce4: ret             
    // 0x72dce8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72dce8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72dcec: b               #0x72dc60
  }
  [closure] SayDualariPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72dcf0, size: 0xc
    // 0x72dcf0: r0 = Instance_SayDualariPage
    //     0x72dcf0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fc8] Obj!SayDualariPage@a202b1
    //     0x72dcf4: ldr             x0, [x0, #0xfc8]
    // 0x72dcf8: ret
    //     0x72dcf8: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72dcfc, size: 0xb4
    // 0x72dcfc: EnterFrame
    //     0x72dcfc: stp             fp, lr, [SP, #-0x10]!
    //     0x72dd00: mov             fp, SP
    // 0x72dd04: AllocStack(0x30)
    //     0x72dd04: sub             SP, SP, #0x30
    // 0x72dd08: SetupParameters([dynamic _ /* r0 */])
    //     0x72dd08: ldr             x0, [fp, #0x10]
    //     0x72dd0c: ldur            w1, [x0, #0x17]
    //     0x72dd10: add             x1, x1, HEAP, lsl #32
    // 0x72dd14: CheckStackOverflow
    //     0x72dd14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72dd18: cmp             SP, x16
    //     0x72dd1c: b.ls            #0x72dda8
    // 0x72dd20: LoadField: r0 = r1->field_f
    //     0x72dd20: ldur            w0, [x1, #0xf]
    // 0x72dd24: DecompressPointer r0
    //     0x72dd24: add             x0, x0, HEAP, lsl #32
    // 0x72dd28: stur            x0, [fp, #-8]
    // 0x72dd2c: r1 = Function '<anonymous closure>':.
    //     0x72dd2c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15fd0] AnonymousClosure: (0x72ddb0), in [package:umrem_demo/features/home/screens/dualar.dart] _DualarState::build (0x72ce98)
    //     0x72dd30: ldr             x1, [x1, #0xfd0]
    // 0x72dd34: r2 = Null
    //     0x72dd34: mov             x2, NULL
    // 0x72dd38: r0 = AllocateClosure()
    //     0x72dd38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72dd3c: r1 = Null
    //     0x72dd3c: mov             x1, NULL
    // 0x72dd40: stur            x0, [fp, #-0x10]
    // 0x72dd44: r0 = MaterialPageRoute()
    //     0x72dd44: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x72dd48: mov             x4, x0
    // 0x72dd4c: ldur            x0, [fp, #-0x10]
    // 0x72dd50: stur            x4, [fp, #-0x18]
    // 0x72dd54: StoreField: r4->field_a3 = r0
    //     0x72dd54: stur            w0, [x4, #0xa3]
    // 0x72dd58: r0 = true
    //     0x72dd58: add             x0, NULL, #0x20  ; true
    // 0x72dd5c: StoreField: r4->field_a7 = r0
    //     0x72dd5c: stur            w0, [x4, #0xa7]
    // 0x72dd60: r1 = false
    //     0x72dd60: add             x1, NULL, #0x30  ; false
    // 0x72dd64: StoreField: r4->field_97 = r1
    //     0x72dd64: stur            w1, [x4, #0x97]
    // 0x72dd68: StoreField: r4->field_9b = r0
    //     0x72dd68: stur            w0, [x4, #0x9b]
    // 0x72dd6c: StoreField: r4->field_9f = r1
    //     0x72dd6c: stur            w1, [x4, #0x9f]
    // 0x72dd70: mov             x1, x4
    // 0x72dd74: r2 = Null
    //     0x72dd74: mov             x2, NULL
    // 0x72dd78: r3 = Null
    //     0x72dd78: mov             x3, NULL
    // 0x72dd7c: r0 = ModalRoute()
    //     0x72dd7c: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x72dd80: ldur            x16, [fp, #-8]
    // 0x72dd84: stp             x16, NULL, [SP, #8]
    // 0x72dd88: ldur            x16, [fp, #-0x18]
    // 0x72dd8c: str             x16, [SP]
    // 0x72dd90: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x72dd90: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72dd94: r0 = push()
    //     0x72dd94: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x72dd98: r0 = Null
    //     0x72dd98: mov             x0, NULL
    // 0x72dd9c: LeaveFrame
    //     0x72dd9c: mov             SP, fp
    //     0x72dda0: ldp             fp, lr, [SP], #0x10
    // 0x72dda4: ret
    //     0x72dda4: ret             
    // 0x72dda8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72dda8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72ddac: b               #0x72dd20
  }
  [closure] SavtDualariPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72ddb0, size: 0xc
    // 0x72ddb0: r0 = Instance_SavtDualariPage
    //     0x72ddb0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fd8] Obj!SavtDualariPage@a202c1
    //     0x72ddb4: ldr             x0, [x0, #0xfd8]
    // 0x72ddb8: ret
    //     0x72ddb8: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72ddbc, size: 0x60
    // 0x72ddbc: EnterFrame
    //     0x72ddbc: stp             fp, lr, [SP, #-0x10]!
    //     0x72ddc0: mov             fp, SP
    // 0x72ddc4: AllocStack(0x18)
    //     0x72ddc4: sub             SP, SP, #0x18
    // 0x72ddc8: SetupParameters([dynamic _ /* r0 */])
    //     0x72ddc8: ldr             x0, [fp, #0x10]
    //     0x72ddcc: ldur            w1, [x0, #0x17]
    //     0x72ddd0: add             x1, x1, HEAP, lsl #32
    // 0x72ddd4: CheckStackOverflow
    //     0x72ddd4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72ddd8: cmp             SP, x16
    //     0x72dddc: b.ls            #0x72de14
    // 0x72dde0: LoadField: r0 = r1->field_f
    //     0x72dde0: ldur            w0, [x1, #0xf]
    // 0x72dde4: DecompressPointer r0
    //     0x72dde4: add             x0, x0, HEAP, lsl #32
    // 0x72dde8: r16 = <Object?>
    //     0x72dde8: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x72ddec: stp             x0, x16, [SP, #8]
    // 0x72ddf0: r16 = "/kuran"
    //     0x72ddf0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11da0] "/kuran"
    //     0x72ddf4: ldr             x16, [x16, #0xda0]
    // 0x72ddf8: str             x16, [SP]
    // 0x72ddfc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x72ddfc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72de00: r0 = pushNamed()
    //     0x72de00: bl              #0x6ebde8  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushNamed
    // 0x72de04: r0 = Null
    //     0x72de04: mov             x0, NULL
    // 0x72de08: LeaveFrame
    //     0x72de08: mov             SP, fp
    //     0x72de0c: ldp             fp, lr, [SP], #0x10
    // 0x72de10: ret
    //     0x72de10: ret             
    // 0x72de14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72de14: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72de18: b               #0x72dde0
  }
}

// class id: 3199, size: 0xc, field offset: 0xc
//   const constructor, 
class Dualar extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf05c, size: 0x2c
    // 0x7bf05c: EnterFrame
    //     0x7bf05c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf060: mov             fp, SP
    // 0x7bf064: mov             x0, x1
    // 0x7bf068: r1 = <Dualar>
    //     0x7bf068: add             x1, PP, #0x12, lsl #12  ; [pp+0x12570] TypeArguments: <Dualar>
    //     0x7bf06c: ldr             x1, [x1, #0x570]
    // 0x7bf070: r0 = _DualarState()
    //     0x7bf070: bl              #0x7bf088  ; Allocate_DualarStateStub -> _DualarState (size=0x18)
    // 0x7bf074: r1 = Sentinel
    //     0x7bf074: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf078: StoreField: r0->field_13 = r1
    //     0x7bf078: stur            w1, [x0, #0x13]
    // 0x7bf07c: LeaveFrame
    //     0x7bf07c: mov             SP, fp
    //     0x7bf080: ldp             fp, lr, [SP], #0x10
    // 0x7bf084: ret
    //     0x7bf084: ret             
  }
}

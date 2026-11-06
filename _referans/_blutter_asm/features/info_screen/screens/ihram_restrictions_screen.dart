// lib: , url: package:umrem_demo/features/info_screen/screens/ihram_restrictions_screen.dart

// class id: 1049598, size: 0x8
class :: {
}

// class id: 2891, size: 0xc, field offset: 0xc
//   const constructor, 
class IhramRestrictionsScreen extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ee6b8, size: 0x44c
    // 0x7ee6b8: EnterFrame
    //     0x7ee6b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7ee6bc: mov             fp, SP
    // 0x7ee6c0: AllocStack(0x58)
    //     0x7ee6c0: sub             SP, SP, #0x58
    // 0x7ee6c4: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x7ee6c4: stur            x2, [fp, #-8]
    // 0x7ee6c8: CheckStackOverflow
    //     0x7ee6c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ee6cc: cmp             SP, x16
    //     0x7ee6d0: b.ls            #0x7eeaf8
    // 0x7ee6d4: r1 = 3
    //     0x7ee6d4: mov             x1, #3
    // 0x7ee6d8: r0 = AllocateContext()
    //     0x7ee6d8: bl              #0x927010  ; AllocateContextStub
    // 0x7ee6dc: mov             x3, x0
    // 0x7ee6e0: ldur            x0, [fp, #-8]
    // 0x7ee6e4: stur            x3, [fp, #-0x10]
    // 0x7ee6e8: StoreField: r3->field_f = r0
    //     0x7ee6e8: stur            w0, [x3, #0xf]
    // 0x7ee6ec: r0 = Instance_Color
    //     0x7ee6ec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ee6f0: ldr             x0, [x0, #0xb88]
    // 0x7ee6f4: StoreField: r3->field_13 = r0
    //     0x7ee6f4: stur            w0, [x3, #0x13]
    // 0x7ee6f8: r1 = <String>
    //     0x7ee6f8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7ee6fc: r2 = 38
    //     0x7ee6fc: mov             x2, #0x26
    // 0x7ee700: r0 = AllocateArray()
    //     0x7ee700: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ee704: stur            x0, [fp, #-8]
    // 0x7ee708: r16 = "Inci ve mücevher takmak"
    //     0x7ee708: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb50] "Inci ve mücevher takmak"
    //     0x7ee70c: ldr             x16, [x16, #0xb50]
    // 0x7ee710: StoreField: r0->field_f = r16
    //     0x7ee710: stur            w16, [x0, #0xf]
    // 0x7ee714: r16 = "Parfüm ve sedefli çeşitli kokular kullanmak"
    //     0x7ee714: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb58] "Parfüm ve sedefli çeşitli kokular kullanmak"
    //     0x7ee718: ldr             x16, [x16, #0xb58]
    // 0x7ee71c: StoreField: r0->field_13 = r16
    //     0x7ee71c: stur            w16, [x0, #0x13]
    // 0x7ee720: r16 = "Saçını tıraş veya saçından çıkarmak"
    //     0x7ee720: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb60] "Saçını tıraş veya saçından çıkarmak"
    //     0x7ee724: ldr             x16, [x16, #0xb60]
    // 0x7ee728: ArrayStore: r0[0] = r16  ; List_4
    //     0x7ee728: stur            w16, [x0, #0x17]
    // 0x7ee72c: r16 = "Vücudun herhangi bir yerindeki kıl çıkarmak"
    //     0x7ee72c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb68] "Vücudun herhangi bir yerindeki kıl çıkarmak"
    //     0x7ee730: ldr             x16, [x16, #0xb68]
    // 0x7ee734: StoreField: r0->field_1b = r16
    //     0x7ee734: stur            w16, [x0, #0x1b]
    // 0x7ee738: r16 = "Tırnak kesmek"
    //     0x7ee738: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb70] "Tırnak kesmek"
    //     0x7ee73c: ldr             x16, [x16, #0xb70]
    // 0x7ee740: StoreField: r0->field_1f = r16
    //     0x7ee740: stur            w16, [x0, #0x1f]
    // 0x7ee744: r16 = "Erkekler için gömlekli kıyafet giymek"
    //     0x7ee744: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb78] "Erkekler için gömlekli kıyafet giymek"
    //     0x7ee748: ldr             x16, [x16, #0xb78]
    // 0x7ee74c: StoreField: r0->field_23 = r16
    //     0x7ee74c: stur            w16, [x0, #0x23]
    // 0x7ee750: r16 = "Erkekler için pantolon giymek"
    //     0x7ee750: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb80] "Erkekler için pantolon giymek"
    //     0x7ee754: ldr             x16, [x16, #0xb80]
    // 0x7ee758: StoreField: r0->field_27 = r16
    //     0x7ee758: stur            w16, [x0, #0x27]
    // 0x7ee75c: r16 = "Erkekler için ayakkabı giymek (ihram sandali giyilir)"
    //     0x7ee75c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb88] "Erkekler için ayakkabı giymek (ihram sandali giyilir)"
    //     0x7ee760: ldr             x16, [x16, #0xb88]
    // 0x7ee764: StoreField: r0->field_2b = r16
    //     0x7ee764: stur            w16, [x0, #0x2b]
    // 0x7ee768: r16 = "Erkekler için başlık veya türban takmak"
    //     0x7ee768: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb90] "Erkekler için başlık veya türban takmak"
    //     0x7ee76c: ldr             x16, [x16, #0xb90]
    // 0x7ee770: StoreField: r0->field_2f = r16
    //     0x7ee770: stur            w16, [x0, #0x2f]
    // 0x7ee774: r16 = "Kadınlar için yüzü kaplayan peçe takmak"
    //     0x7ee774: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bb98] "Kadınlar için yüzü kaplayan peçe takmak"
    //     0x7ee778: ldr             x16, [x16, #0xb98]
    // 0x7ee77c: StoreField: r0->field_33 = r16
    //     0x7ee77c: stur            w16, [x0, #0x33]
    // 0x7ee780: r16 = "Erkekler için eldiven takmak"
    //     0x7ee780: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bba0] "Erkekler için eldiven takmak"
    //     0x7ee784: ldr             x16, [x16, #0xba0]
    // 0x7ee788: StoreField: r0->field_37 = r16
    //     0x7ee788: stur            w16, [x0, #0x37]
    // 0x7ee78c: r16 = "Tıraşlı tarakla saçı taramak"
    //     0x7ee78c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bba8] "Tıraşlı tarakla saçı taramak"
    //     0x7ee790: ldr             x16, [x16, #0xba8]
    // 0x7ee794: StoreField: r0->field_3b = r16
    //     0x7ee794: stur            w16, [x0, #0x3b]
    // 0x7ee798: r16 = "Avlanmak veya hayvan öldürmek"
    //     0x7ee798: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbb0] "Avlanmak veya hayvan öldürmek"
    //     0x7ee79c: ldr             x16, [x16, #0xbb0]
    // 0x7ee7a0: StoreField: r0->field_3f = r16
    //     0x7ee7a0: stur            w16, [x0, #0x3f]
    // 0x7ee7a4: r16 = "Hayvan avlamayı dilemek"
    //     0x7ee7a4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbb8] "Hayvan avlamayı dilemek"
    //     0x7ee7a8: ldr             x16, [x16, #0xbb8]
    // 0x7ee7ac: StoreField: r0->field_43 = r16
    //     0x7ee7ac: stur            w16, [x0, #0x43]
    // 0x7ee7b0: r16 = "İhram durumunda şikarlı hayvanları işaret etmek"
    //     0x7ee7b0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbc0] "İhram durumunda şikarlı hayvanları işaret etmek"
    //     0x7ee7b4: ldr             x16, [x16, #0xbc0]
    // 0x7ee7b8: StoreField: r0->field_47 = r16
    //     0x7ee7b8: stur            w16, [x0, #0x47]
    // 0x7ee7bc: r16 = "Mubarek ayda Mescid-i Haram sahasında ağaç budamak"
    //     0x7ee7bc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbc8] "Mubarek ayda Mescid-i Haram sahasında ağaç budamak"
    //     0x7ee7c0: ldr             x16, [x16, #0xbc8]
    // 0x7ee7c4: StoreField: r0->field_4b = r16
    //     0x7ee7c4: stur            w16, [x0, #0x4b]
    // 0x7ee7c8: r16 = "Mescid-i Haram alanında çiçek almak"
    //     0x7ee7c8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbd0] "Mescid-i Haram alanında çiçek almak"
    //     0x7ee7cc: ldr             x16, [x16, #0xbd0]
    // 0x7ee7d0: StoreField: r0->field_4f = r16
    //     0x7ee7d0: stur            w16, [x0, #0x4f]
    // 0x7ee7d4: r16 = "Karı-kocanın cinsel ilişkiye girmesi"
    //     0x7ee7d4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbd8] "Karı-kocanın cinsel ilişkiye girmesi"
    //     0x7ee7d8: ldr             x16, [x16, #0xbd8]
    // 0x7ee7dc: StoreField: r0->field_53 = r16
    //     0x7ee7dc: stur            w16, [x0, #0x53]
    // 0x7ee7e0: r16 = "Mübaşeret yapmak (dokunma seviyesinde)"
    //     0x7ee7e0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bbe0] "Mübaşeret yapmak (dokunma seviyesinde)"
    //     0x7ee7e4: ldr             x16, [x16, #0xbe0]
    // 0x7ee7e8: StoreField: r0->field_57 = r16
    //     0x7ee7e8: stur            w16, [x0, #0x57]
    // 0x7ee7ec: r1 = <String>
    //     0x7ee7ec: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7ee7f0: r0 = AllocateGrowableArray()
    //     0x7ee7f0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ee7f4: mov             x2, x0
    // 0x7ee7f8: ldur            x0, [fp, #-8]
    // 0x7ee7fc: stur            x2, [fp, #-0x18]
    // 0x7ee800: StoreField: r2->field_f = r0
    //     0x7ee800: stur            w0, [x2, #0xf]
    // 0x7ee804: r0 = 38
    //     0x7ee804: mov             x0, #0x26
    // 0x7ee808: StoreField: r2->field_b = r0
    //     0x7ee808: stur            w0, [x2, #0xb]
    // 0x7ee80c: ldur            x0, [fp, #-0x10]
    // 0x7ee810: ArrayStore: r0[0] = r2  ; List_4
    //     0x7ee810: stur            w2, [x0, #0x17]
    // 0x7ee814: r16 = 0.900000
    //     0x7ee814: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7ee818: ldr             x16, [x16, #0x190]
    // 0x7ee81c: str             x16, [SP]
    // 0x7ee820: r1 = Instance_Color
    //     0x7ee820: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ee824: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ee824: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ee828: ldr             x4, [x4, #0x198]
    // 0x7ee82c: r0 = withValues()
    //     0x7ee82c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ee830: stur            x0, [fp, #-8]
    // 0x7ee834: r0 = BoxDecoration()
    //     0x7ee834: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ee838: mov             x1, x0
    // 0x7ee83c: ldur            x0, [fp, #-8]
    // 0x7ee840: stur            x1, [fp, #-0x20]
    // 0x7ee844: StoreField: r1->field_7 = r0
    //     0x7ee844: stur            w0, [x1, #7]
    // 0x7ee848: r0 = Instance_BoxShape
    //     0x7ee848: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7ee84c: ldr             x0, [x0, #0x1a0]
    // 0x7ee850: StoreField: r1->field_23 = r0
    //     0x7ee850: stur            w0, [x1, #0x23]
    // 0x7ee854: r0 = Icon()
    //     0x7ee854: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ee858: mov             x3, x0
    // 0x7ee85c: r0 = Instance_IconData
    //     0x7ee85c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x7ee860: ldr             x0, [x0, #0x1a8]
    // 0x7ee864: stur            x3, [fp, #-8]
    // 0x7ee868: StoreField: r3->field_b = r0
    //     0x7ee868: stur            w0, [x3, #0xb]
    // 0x7ee86c: r0 = Instance_Color
    //     0x7ee86c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ee870: ldr             x0, [x0, #0xb88]
    // 0x7ee874: StoreField: r3->field_23 = r0
    //     0x7ee874: stur            w0, [x3, #0x23]
    // 0x7ee878: ldur            x2, [fp, #-0x10]
    // 0x7ee87c: r1 = Function '<anonymous closure>':.
    //     0x7ee87c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bbe8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x7ee880: ldr             x1, [x1, #0xbe8]
    // 0x7ee884: r0 = AllocateClosure()
    //     0x7ee884: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ee888: stur            x0, [fp, #-0x28]
    // 0x7ee88c: r0 = IconButton()
    //     0x7ee88c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7ee890: mov             x1, x0
    // 0x7ee894: ldur            x0, [fp, #-0x28]
    // 0x7ee898: stur            x1, [fp, #-0x30]
    // 0x7ee89c: StoreField: r1->field_3b = r0
    //     0x7ee89c: stur            w0, [x1, #0x3b]
    // 0x7ee8a0: r0 = false
    //     0x7ee8a0: add             x0, NULL, #0x30  ; false
    // 0x7ee8a4: StoreField: r1->field_4f = r0
    //     0x7ee8a4: stur            w0, [x1, #0x4f]
    // 0x7ee8a8: ldur            x2, [fp, #-8]
    // 0x7ee8ac: StoreField: r1->field_1f = r2
    //     0x7ee8ac: stur            w2, [x1, #0x1f]
    // 0x7ee8b0: r2 = Instance__IconButtonVariant
    //     0x7ee8b0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7ee8b4: ldr             x2, [x2, #0x1b8]
    // 0x7ee8b8: StoreField: r1->field_6f = r2
    //     0x7ee8b8: stur            w2, [x1, #0x6f]
    // 0x7ee8bc: r0 = Container()
    //     0x7ee8bc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee8c0: stur            x0, [fp, #-8]
    // 0x7ee8c4: r16 = Instance_EdgeInsets
    //     0x7ee8c4: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7ee8c8: ldr             x16, [x16, #0xde8]
    // 0x7ee8cc: ldur            lr, [fp, #-0x20]
    // 0x7ee8d0: stp             lr, x16, [SP, #8]
    // 0x7ee8d4: ldur            x16, [fp, #-0x30]
    // 0x7ee8d8: str             x16, [SP]
    // 0x7ee8dc: mov             x1, x0
    // 0x7ee8e0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x7ee8e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x7ee8e4: ldr             x4, [x4, #0x1c0]
    // 0x7ee8e8: r0 = Container()
    //     0x7ee8e8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee8ec: r16 = 0.900000
    //     0x7ee8ec: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7ee8f0: ldr             x16, [x16, #0x190]
    // 0x7ee8f4: str             x16, [SP]
    // 0x7ee8f8: r1 = Instance_Color
    //     0x7ee8f8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ee8fc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ee8fc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ee900: ldr             x4, [x4, #0x198]
    // 0x7ee904: r0 = withValues()
    //     0x7ee904: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ee908: stur            x0, [fp, #-0x20]
    // 0x7ee90c: r0 = Radius()
    //     0x7ee90c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ee910: d0 = 20.000000
    //     0x7ee910: fmov            d0, #20.00000000
    // 0x7ee914: stur            x0, [fp, #-0x28]
    // 0x7ee918: StoreField: r0->field_7 = d0
    //     0x7ee918: stur            d0, [x0, #7]
    // 0x7ee91c: StoreField: r0->field_f = d0
    //     0x7ee91c: stur            d0, [x0, #0xf]
    // 0x7ee920: r0 = BorderRadius()
    //     0x7ee920: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ee924: mov             x1, x0
    // 0x7ee928: ldur            x0, [fp, #-0x28]
    // 0x7ee92c: stur            x1, [fp, #-0x30]
    // 0x7ee930: StoreField: r1->field_7 = r0
    //     0x7ee930: stur            w0, [x1, #7]
    // 0x7ee934: StoreField: r1->field_b = r0
    //     0x7ee934: stur            w0, [x1, #0xb]
    // 0x7ee938: StoreField: r1->field_f = r0
    //     0x7ee938: stur            w0, [x1, #0xf]
    // 0x7ee93c: StoreField: r1->field_13 = r0
    //     0x7ee93c: stur            w0, [x1, #0x13]
    // 0x7ee940: r0 = BoxDecoration()
    //     0x7ee940: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ee944: mov             x1, x0
    // 0x7ee948: ldur            x0, [fp, #-0x20]
    // 0x7ee94c: stur            x1, [fp, #-0x28]
    // 0x7ee950: StoreField: r1->field_7 = r0
    //     0x7ee950: stur            w0, [x1, #7]
    // 0x7ee954: ldur            x0, [fp, #-0x30]
    // 0x7ee958: StoreField: r1->field_13 = r0
    //     0x7ee958: stur            w0, [x1, #0x13]
    // 0x7ee95c: r0 = Instance_BoxShape
    //     0x7ee95c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ee960: ldr             x0, [x0, #0x1c8]
    // 0x7ee964: StoreField: r1->field_23 = r0
    //     0x7ee964: stur            w0, [x1, #0x23]
    // 0x7ee968: r0 = TextStyle()
    //     0x7ee968: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ee96c: mov             x1, x0
    // 0x7ee970: r0 = true
    //     0x7ee970: add             x0, NULL, #0x20  ; true
    // 0x7ee974: stur            x1, [fp, #-0x20]
    // 0x7ee978: StoreField: r1->field_7 = r0
    //     0x7ee978: stur            w0, [x1, #7]
    // 0x7ee97c: r2 = Instance_Color
    //     0x7ee97c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ee980: ldr             x2, [x2, #0xb88]
    // 0x7ee984: StoreField: r1->field_b = r2
    //     0x7ee984: stur            w2, [x1, #0xb]
    // 0x7ee988: r2 = 18.000000
    //     0x7ee988: add             x2, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x7ee98c: ldr             x2, [x2, #0xe08]
    // 0x7ee990: StoreField: r1->field_1f = r2
    //     0x7ee990: stur            w2, [x1, #0x1f]
    // 0x7ee994: r2 = Instance_FontWeight
    //     0x7ee994: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ee998: ldr             x2, [x2, #0x1d0]
    // 0x7ee99c: StoreField: r1->field_23 = r2
    //     0x7ee99c: stur            w2, [x1, #0x23]
    // 0x7ee9a0: r0 = Text()
    //     0x7ee9a0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ee9a4: mov             x1, x0
    // 0x7ee9a8: r0 = "İhram Yasakları"
    //     0x7ee9a8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d20] "İhram Yasakları"
    //     0x7ee9ac: ldr             x0, [x0, #0xd20]
    // 0x7ee9b0: stur            x1, [fp, #-0x30]
    // 0x7ee9b4: StoreField: r1->field_b = r0
    //     0x7ee9b4: stur            w0, [x1, #0xb]
    // 0x7ee9b8: ldur            x0, [fp, #-0x20]
    // 0x7ee9bc: StoreField: r1->field_13 = r0
    //     0x7ee9bc: stur            w0, [x1, #0x13]
    // 0x7ee9c0: r0 = Container()
    //     0x7ee9c0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee9c4: stur            x0, [fp, #-0x20]
    // 0x7ee9c8: r16 = Instance_EdgeInsets
    //     0x7ee9c8: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7ee9cc: ldr             x16, [x16, #0x1e0]
    // 0x7ee9d0: ldur            lr, [fp, #-0x28]
    // 0x7ee9d4: stp             lr, x16, [SP, #8]
    // 0x7ee9d8: ldur            x16, [fp, #-0x30]
    // 0x7ee9dc: str             x16, [SP]
    // 0x7ee9e0: mov             x1, x0
    // 0x7ee9e4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ee9e4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ee9e8: ldr             x4, [x4, #0x1e8]
    // 0x7ee9ec: r0 = Container()
    //     0x7ee9ec: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee9f0: r0 = AppBar()
    //     0x7ee9f0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7ee9f4: stur            x0, [fp, #-0x28]
    // 0x7ee9f8: r16 = Instance_Color
    //     0x7ee9f8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7ee9fc: ldr             x16, [x16, #0x860]
    // 0x7eea00: r30 = 0.000000
    //     0x7eea00: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7eea04: stp             lr, x16, [SP, #0x10]
    // 0x7eea08: ldur            x16, [fp, #-8]
    // 0x7eea0c: r30 = true
    //     0x7eea0c: add             lr, NULL, #0x20  ; true
    // 0x7eea10: stp             lr, x16, [SP]
    // 0x7eea14: mov             x1, x0
    // 0x7eea18: ldur            x2, [fp, #-0x20]
    // 0x7eea1c: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x7eea1c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x7eea20: ldr             x4, [x4, #0x1f0]
    // 0x7eea24: r0 = AppBar()
    //     0x7eea24: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7eea28: r1 = _ConstMap len:12
    //     0x7eea28: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7eea2c: r2 = 200
    //     0x7eea2c: mov             x2, #0xc8
    // 0x7eea30: r0 = []()
    //     0x7eea30: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7eea34: stur            x0, [fp, #-8]
    // 0x7eea38: cmp             w0, NULL
    // 0x7eea3c: b.eq            #0x7eeb00
    // 0x7eea40: ldur            x1, [fp, #-0x18]
    // 0x7eea44: LoadField: r2 = r1->field_b
    //     0x7eea44: ldur            w2, [x1, #0xb]
    // 0x7eea48: r3 = LoadInt32Instr(r2)
    //     0x7eea48: sbfx            x3, x2, #1, #0x1f
    // 0x7eea4c: ldur            x2, [fp, #-0x10]
    // 0x7eea50: stur            x3, [fp, #-0x38]
    // 0x7eea54: r1 = Function '<anonymous closure>':.
    //     0x7eea54: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bbf0] AnonymousClosure: (0x7eeb04), in [package:umrem_demo/features/info_screen/screens/ihram_restrictions_screen.dart] IhramRestrictionsScreen::build (0x7ee6b8)
    //     0x7eea58: ldr             x1, [x1, #0xbf0]
    // 0x7eea5c: r0 = AllocateClosure()
    //     0x7eea5c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7eea60: stur            x0, [fp, #-0x10]
    // 0x7eea64: r0 = ListView()
    //     0x7eea64: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x7eea68: stur            x0, [fp, #-0x18]
    // 0x7eea6c: r16 = Instance_EdgeInsets
    //     0x7eea6c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7eea70: ldr             x16, [x16, #0x240]
    // 0x7eea74: str             x16, [SP]
    // 0x7eea78: mov             x1, x0
    // 0x7eea7c: ldur            x2, [fp, #-0x10]
    // 0x7eea80: ldur            x3, [fp, #-0x38]
    // 0x7eea84: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x7eea84: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x7eea88: ldr             x4, [x4, #0xe60]
    // 0x7eea8c: r0 = ListView.builder()
    //     0x7eea8c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x7eea90: r0 = Scaffold()
    //     0x7eea90: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7eea94: ldur            x1, [fp, #-0x28]
    // 0x7eea98: ArrayStore: r0[0] = r1  ; List_4
    //     0x7eea98: stur            w1, [x0, #0x17]
    // 0x7eea9c: ldur            x1, [fp, #-0x18]
    // 0x7eeaa0: StoreField: r0->field_1b = r1
    //     0x7eeaa0: stur            w1, [x0, #0x1b]
    // 0x7eeaa4: r1 = Instance_AlignmentDirectional
    //     0x7eeaa4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7eeaa8: ldr             x1, [x1, #0x350]
    // 0x7eeaac: StoreField: r0->field_2f = r1
    //     0x7eeaac: stur            w1, [x0, #0x2f]
    // 0x7eeab0: ldur            x1, [fp, #-8]
    // 0x7eeab4: StoreField: r0->field_4f = r1
    //     0x7eeab4: stur            w1, [x0, #0x4f]
    // 0x7eeab8: r1 = true
    //     0x7eeab8: add             x1, NULL, #0x20  ; true
    // 0x7eeabc: StoreField: r0->field_5f = r1
    //     0x7eeabc: stur            w1, [x0, #0x5f]
    // 0x7eeac0: r2 = Instance_DragStartBehavior
    //     0x7eeac0: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7eeac4: StoreField: r0->field_63 = r2
    //     0x7eeac4: stur            w2, [x0, #0x63]
    // 0x7eeac8: r2 = false
    //     0x7eeac8: add             x2, NULL, #0x30  ; false
    // 0x7eeacc: StoreField: r0->field_b = r2
    //     0x7eeacc: stur            w2, [x0, #0xb]
    // 0x7eead0: StoreField: r0->field_f = r1
    //     0x7eead0: stur            w1, [x0, #0xf]
    // 0x7eead4: StoreField: r0->field_13 = r2
    //     0x7eead4: stur            w2, [x0, #0x13]
    // 0x7eead8: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7eead8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7eeadc: ldr             x2, [x2, #0x358]
    // 0x7eeae0: StoreField: r0->field_4b = r2
    //     0x7eeae0: stur            w2, [x0, #0x4b]
    // 0x7eeae4: StoreField: r0->field_6b = r1
    //     0x7eeae4: stur            w1, [x0, #0x6b]
    // 0x7eeae8: StoreField: r0->field_6f = r1
    //     0x7eeae8: stur            w1, [x0, #0x6f]
    // 0x7eeaec: LeaveFrame
    //     0x7eeaec: mov             SP, fp
    //     0x7eeaf0: ldp             fp, lr, [SP], #0x10
    // 0x7eeaf4: ret
    //     0x7eeaf4: ret             
    // 0x7eeaf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eeaf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eeafc: b               #0x7ee6d4
    // 0x7eeb00: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7eeb00: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Container <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7eeb04, size: 0x480
    // 0x7eeb04: EnterFrame
    //     0x7eeb04: stp             fp, lr, [SP, #-0x10]!
    //     0x7eeb08: mov             fp, SP
    // 0x7eeb0c: AllocStack(0x50)
    //     0x7eeb0c: sub             SP, SP, #0x50
    // 0x7eeb10: SetupParameters([dynamic _ /* r0 */])
    //     0x7eeb10: ldr             x0, [fp, #0x20]
    //     0x7eeb14: ldur            w1, [x0, #0x17]
    //     0x7eeb18: add             x1, x1, HEAP, lsl #32
    //     0x7eeb1c: stur            x1, [fp, #-8]
    // 0x7eeb20: CheckStackOverflow
    //     0x7eeb20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eeb24: cmp             SP, x16
    //     0x7eeb28: b.ls            #0x7eef78
    // 0x7eeb2c: r0 = Radius()
    //     0x7eeb2c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eeb30: d0 = 12.000000
    //     0x7eeb30: fmov            d0, #12.00000000
    // 0x7eeb34: stur            x0, [fp, #-0x10]
    // 0x7eeb38: StoreField: r0->field_7 = d0
    //     0x7eeb38: stur            d0, [x0, #7]
    // 0x7eeb3c: StoreField: r0->field_f = d0
    //     0x7eeb3c: stur            d0, [x0, #0xf]
    // 0x7eeb40: r0 = BorderRadius()
    //     0x7eeb40: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eeb44: mov             x1, x0
    // 0x7eeb48: ldur            x0, [fp, #-0x10]
    // 0x7eeb4c: stur            x1, [fp, #-0x18]
    // 0x7eeb50: StoreField: r1->field_7 = r0
    //     0x7eeb50: stur            w0, [x1, #7]
    // 0x7eeb54: StoreField: r1->field_b = r0
    //     0x7eeb54: stur            w0, [x1, #0xb]
    // 0x7eeb58: StoreField: r1->field_f = r0
    //     0x7eeb58: stur            w0, [x1, #0xf]
    // 0x7eeb5c: StoreField: r1->field_13 = r0
    //     0x7eeb5c: stur            w0, [x1, #0x13]
    // 0x7eeb60: r0 = BorderSide()
    //     0x7eeb60: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7eeb64: mov             x1, x0
    // 0x7eeb68: r0 = Instance_Color
    //     0x7eeb68: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eeb6c: ldr             x0, [x0, #0xb78]
    // 0x7eeb70: stur            x1, [fp, #-0x10]
    // 0x7eeb74: StoreField: r1->field_7 = r0
    //     0x7eeb74: stur            w0, [x1, #7]
    // 0x7eeb78: d0 = 4.000000
    //     0x7eeb78: fmov            d0, #4.00000000
    // 0x7eeb7c: StoreField: r1->field_b = d0
    //     0x7eeb7c: stur            d0, [x1, #0xb]
    // 0x7eeb80: r2 = Instance_BorderStyle
    //     0x7eeb80: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7eeb84: ldr             x2, [x2, #0x738]
    // 0x7eeb88: StoreField: r1->field_13 = r2
    //     0x7eeb88: stur            w2, [x1, #0x13]
    // 0x7eeb8c: d0 = -1.000000
    //     0x7eeb8c: fmov            d0, #-1.00000000
    // 0x7eeb90: ArrayStore: r1[0] = d0  ; List_8
    //     0x7eeb90: stur            d0, [x1, #0x17]
    // 0x7eeb94: r0 = Border()
    //     0x7eeb94: bl              #0x55c8fc  ; AllocateBorderStub -> Border (size=0x18)
    // 0x7eeb98: mov             x2, x0
    // 0x7eeb9c: r0 = Instance_BorderSide
    //     0x7eeb9c: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7eeba0: ldr             x0, [x0, #0xcb8]
    // 0x7eeba4: stur            x2, [fp, #-0x20]
    // 0x7eeba8: StoreField: r2->field_7 = r0
    //     0x7eeba8: stur            w0, [x2, #7]
    // 0x7eebac: StoreField: r2->field_b = r0
    //     0x7eebac: stur            w0, [x2, #0xb]
    // 0x7eebb0: StoreField: r2->field_f = r0
    //     0x7eebb0: stur            w0, [x2, #0xf]
    // 0x7eebb4: ldur            x0, [fp, #-0x10]
    // 0x7eebb8: StoreField: r2->field_13 = r0
    //     0x7eebb8: stur            w0, [x2, #0x13]
    // 0x7eebbc: r16 = 0.050000
    //     0x7eebbc: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x7eebc0: str             x16, [SP]
    // 0x7eebc4: r1 = Instance_Color
    //     0x7eebc4: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eebc8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eebc8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eebcc: ldr             x4, [x4, #0x198]
    // 0x7eebd0: r0 = withValues()
    //     0x7eebd0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eebd4: stur            x0, [fp, #-0x10]
    // 0x7eebd8: r0 = BoxShadow()
    //     0x7eebd8: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eebdc: stur            x0, [fp, #-0x28]
    // 0x7eebe0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7eebe0: stur            xzr, [x0, #0x17]
    // 0x7eebe4: r1 = Instance_BlurStyle
    //     0x7eebe4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eebe8: ldr             x1, [x1, #0x9b0]
    // 0x7eebec: StoreField: r0->field_1f = r1
    //     0x7eebec: stur            w1, [x0, #0x1f]
    // 0x7eebf0: ldur            x1, [fp, #-0x10]
    // 0x7eebf4: StoreField: r0->field_7 = r1
    //     0x7eebf4: stur            w1, [x0, #7]
    // 0x7eebf8: r1 = Instance_Offset
    //     0x7eebf8: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x7eebfc: ldr             x1, [x1, #0x4e8]
    // 0x7eec00: StoreField: r0->field_b = r1
    //     0x7eec00: stur            w1, [x0, #0xb]
    // 0x7eec04: d0 = 8.000000
    //     0x7eec04: fmov            d0, #8.00000000
    // 0x7eec08: StoreField: r0->field_f = d0
    //     0x7eec08: stur            d0, [x0, #0xf]
    // 0x7eec0c: r1 = Null
    //     0x7eec0c: mov             x1, NULL
    // 0x7eec10: r2 = 2
    //     0x7eec10: mov             x2, #2
    // 0x7eec14: r0 = AllocateArray()
    //     0x7eec14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eec18: mov             x2, x0
    // 0x7eec1c: ldur            x0, [fp, #-0x28]
    // 0x7eec20: stur            x2, [fp, #-0x10]
    // 0x7eec24: StoreField: r2->field_f = r0
    //     0x7eec24: stur            w0, [x2, #0xf]
    // 0x7eec28: r1 = <BoxShadow>
    //     0x7eec28: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7eec2c: ldr             x1, [x1, #0x9c0]
    // 0x7eec30: r0 = AllocateGrowableArray()
    //     0x7eec30: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eec34: mov             x1, x0
    // 0x7eec38: ldur            x0, [fp, #-0x10]
    // 0x7eec3c: stur            x1, [fp, #-0x28]
    // 0x7eec40: StoreField: r1->field_f = r0
    //     0x7eec40: stur            w0, [x1, #0xf]
    // 0x7eec44: r0 = 2
    //     0x7eec44: mov             x0, #2
    // 0x7eec48: StoreField: r1->field_b = r0
    //     0x7eec48: stur            w0, [x1, #0xb]
    // 0x7eec4c: r0 = BoxDecoration()
    //     0x7eec4c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eec50: mov             x1, x0
    // 0x7eec54: r0 = Instance_Color
    //     0x7eec54: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7eec58: stur            x1, [fp, #-0x10]
    // 0x7eec5c: StoreField: r1->field_7 = r0
    //     0x7eec5c: stur            w0, [x1, #7]
    // 0x7eec60: ldur            x0, [fp, #-0x20]
    // 0x7eec64: StoreField: r1->field_f = r0
    //     0x7eec64: stur            w0, [x1, #0xf]
    // 0x7eec68: ldur            x0, [fp, #-0x18]
    // 0x7eec6c: StoreField: r1->field_13 = r0
    //     0x7eec6c: stur            w0, [x1, #0x13]
    // 0x7eec70: ldur            x0, [fp, #-0x28]
    // 0x7eec74: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eec74: stur            w0, [x1, #0x17]
    // 0x7eec78: r0 = Instance_BoxShape
    //     0x7eec78: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eec7c: ldr             x0, [x0, #0x1c8]
    // 0x7eec80: StoreField: r1->field_23 = r0
    //     0x7eec80: stur            w0, [x1, #0x23]
    // 0x7eec84: r0 = Radius()
    //     0x7eec84: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eec88: d0 = 8.000000
    //     0x7eec88: fmov            d0, #8.00000000
    // 0x7eec8c: stur            x0, [fp, #-0x18]
    // 0x7eec90: StoreField: r0->field_7 = d0
    //     0x7eec90: stur            d0, [x0, #7]
    // 0x7eec94: StoreField: r0->field_f = d0
    //     0x7eec94: stur            d0, [x0, #0xf]
    // 0x7eec98: r0 = BorderRadius()
    //     0x7eec98: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eec9c: mov             x1, x0
    // 0x7eeca0: ldur            x0, [fp, #-0x18]
    // 0x7eeca4: stur            x1, [fp, #-0x20]
    // 0x7eeca8: StoreField: r1->field_7 = r0
    //     0x7eeca8: stur            w0, [x1, #7]
    // 0x7eecac: StoreField: r1->field_b = r0
    //     0x7eecac: stur            w0, [x1, #0xb]
    // 0x7eecb0: StoreField: r1->field_f = r0
    //     0x7eecb0: stur            w0, [x1, #0xf]
    // 0x7eecb4: StoreField: r1->field_13 = r0
    //     0x7eecb4: stur            w0, [x1, #0x13]
    // 0x7eecb8: r0 = BoxDecoration()
    //     0x7eecb8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eecbc: mov             x2, x0
    // 0x7eecc0: r0 = Instance_Color
    //     0x7eecc0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7eecc4: ldr             x0, [x0, #0xb78]
    // 0x7eecc8: stur            x2, [fp, #-0x18]
    // 0x7eeccc: StoreField: r2->field_7 = r0
    //     0x7eeccc: stur            w0, [x2, #7]
    // 0x7eecd0: ldur            x0, [fp, #-0x20]
    // 0x7eecd4: StoreField: r2->field_13 = r0
    //     0x7eecd4: stur            w0, [x2, #0x13]
    // 0x7eecd8: r0 = Instance_BoxShape
    //     0x7eecd8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eecdc: ldr             x0, [x0, #0x1c8]
    // 0x7eece0: StoreField: r2->field_23 = r0
    //     0x7eece0: stur            w0, [x2, #0x23]
    // 0x7eece4: ldr             x0, [fp, #0x10]
    // 0x7eece8: r3 = LoadInt32Instr(r0)
    //     0x7eece8: sbfx            x3, x0, #1, #0x1f
    //     0x7eecec: tbz             w0, #0, #0x7eecf4
    //     0x7eecf0: ldur            x3, [x0, #7]
    // 0x7eecf4: stur            x3, [fp, #-0x30]
    // 0x7eecf8: add             x4, x3, #1
    // 0x7eecfc: r0 = BoxInt64Instr(r4)
    //     0x7eecfc: sbfiz           x0, x4, #1, #0x1f
    //     0x7eed00: cmp             x4, x0, asr #1
    //     0x7eed04: b.eq            #0x7eed10
    //     0x7eed08: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7eed0c: stur            x4, [x0, #7]
    // 0x7eed10: str             x0, [SP]
    // 0x7eed14: r0 = _interpolateSingle()
    //     0x7eed14: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x7eed18: stur            x0, [fp, #-0x20]
    // 0x7eed1c: r0 = Text()
    //     0x7eed1c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eed20: mov             x1, x0
    // 0x7eed24: ldur            x0, [fp, #-0x20]
    // 0x7eed28: stur            x1, [fp, #-0x28]
    // 0x7eed2c: StoreField: r1->field_b = r0
    //     0x7eed2c: stur            w0, [x1, #0xb]
    // 0x7eed30: r0 = Instance_TextStyle
    //     0x7eed30: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bbf8] Obj!TextStyle@a19201
    //     0x7eed34: ldr             x0, [x0, #0xbf8]
    // 0x7eed38: StoreField: r1->field_13 = r0
    //     0x7eed38: stur            w0, [x1, #0x13]
    // 0x7eed3c: r0 = Center()
    //     0x7eed3c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7eed40: mov             x1, x0
    // 0x7eed44: r0 = Instance_Alignment
    //     0x7eed44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7eed48: ldr             x0, [x0, #0x60]
    // 0x7eed4c: stur            x1, [fp, #-0x20]
    // 0x7eed50: StoreField: r1->field_f = r0
    //     0x7eed50: stur            w0, [x1, #0xf]
    // 0x7eed54: ldur            x0, [fp, #-0x28]
    // 0x7eed58: StoreField: r1->field_b = r0
    //     0x7eed58: stur            w0, [x1, #0xb]
    // 0x7eed5c: r0 = Container()
    //     0x7eed5c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eed60: stur            x0, [fp, #-0x28]
    // 0x7eed64: r16 = 32.000000
    //     0x7eed64: add             x16, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x7eed68: ldr             x16, [x16, #0xfe0]
    // 0x7eed6c: r30 = 32.000000
    //     0x7eed6c: add             lr, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x7eed70: ldr             lr, [lr, #0xfe0]
    // 0x7eed74: stp             lr, x16, [SP, #0x10]
    // 0x7eed78: ldur            x16, [fp, #-0x18]
    // 0x7eed7c: ldur            lr, [fp, #-0x20]
    // 0x7eed80: stp             lr, x16, [SP]
    // 0x7eed84: mov             x1, x0
    // 0x7eed88: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x7eed88: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7eed8c: ldr             x4, [x4, #0x990]
    // 0x7eed90: r0 = Container()
    //     0x7eed90: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eed94: ldur            x2, [fp, #-8]
    // 0x7eed98: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x7eed98: ldur            w3, [x2, #0x17]
    // 0x7eed9c: DecompressPointer r3
    //     0x7eed9c: add             x3, x3, HEAP, lsl #32
    // 0x7eeda0: LoadField: r0 = r3->field_b
    //     0x7eeda0: ldur            w0, [x3, #0xb]
    // 0x7eeda4: r1 = LoadInt32Instr(r0)
    //     0x7eeda4: sbfx            x1, x0, #1, #0x1f
    // 0x7eeda8: mov             x0, x1
    // 0x7eedac: ldur            x1, [fp, #-0x30]
    // 0x7eedb0: cmp             x1, x0
    // 0x7eedb4: b.hs            #0x7eef80
    // 0x7eedb8: LoadField: r0 = r3->field_f
    //     0x7eedb8: ldur            w0, [x3, #0xf]
    // 0x7eedbc: DecompressPointer r0
    //     0x7eedbc: add             x0, x0, HEAP, lsl #32
    // 0x7eedc0: ldur            x1, [fp, #-0x30]
    // 0x7eedc4: ArrayLoad: r3 = r0[r1]  ; Unknown_4
    //     0x7eedc4: add             x16, x0, x1, lsl #2
    //     0x7eedc8: ldur            w3, [x16, #0xf]
    // 0x7eedcc: DecompressPointer r3
    //     0x7eedcc: add             x3, x3, HEAP, lsl #32
    // 0x7eedd0: stur            x3, [fp, #-0x20]
    // 0x7eedd4: LoadField: r0 = r2->field_13
    //     0x7eedd4: ldur            w0, [x2, #0x13]
    // 0x7eedd8: DecompressPointer r0
    //     0x7eedd8: add             x0, x0, HEAP, lsl #32
    // 0x7eeddc: stur            x0, [fp, #-0x18]
    // 0x7eede0: r0 = TextStyle()
    //     0x7eede0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7eede4: mov             x1, x0
    // 0x7eede8: r0 = true
    //     0x7eede8: add             x0, NULL, #0x20  ; true
    // 0x7eedec: stur            x1, [fp, #-8]
    // 0x7eedf0: StoreField: r1->field_7 = r0
    //     0x7eedf0: stur            w0, [x1, #7]
    // 0x7eedf4: ldur            x0, [fp, #-0x18]
    // 0x7eedf8: StoreField: r1->field_b = r0
    //     0x7eedf8: stur            w0, [x1, #0xb]
    // 0x7eedfc: r0 = 16.000000
    //     0x7eedfc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7eee00: ldr             x0, [x0, #0x358]
    // 0x7eee04: StoreField: r1->field_1f = r0
    //     0x7eee04: stur            w0, [x1, #0x1f]
    // 0x7eee08: r0 = Instance_FontWeight
    //     0x7eee08: add             x0, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x7eee0c: ldr             x0, [x0, #0x5d0]
    // 0x7eee10: StoreField: r1->field_23 = r0
    //     0x7eee10: stur            w0, [x1, #0x23]
    // 0x7eee14: r0 = 1.500000
    //     0x7eee14: add             x0, PP, #0x15, lsl #12  ; [pp+0x154b0] 1.5
    //     0x7eee18: ldr             x0, [x0, #0x4b0]
    // 0x7eee1c: StoreField: r1->field_37 = r0
    //     0x7eee1c: stur            w0, [x1, #0x37]
    // 0x7eee20: r0 = Text()
    //     0x7eee20: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eee24: mov             x2, x0
    // 0x7eee28: ldur            x0, [fp, #-0x20]
    // 0x7eee2c: stur            x2, [fp, #-0x18]
    // 0x7eee30: StoreField: r2->field_b = r0
    //     0x7eee30: stur            w0, [x2, #0xb]
    // 0x7eee34: ldur            x0, [fp, #-8]
    // 0x7eee38: StoreField: r2->field_13 = r0
    //     0x7eee38: stur            w0, [x2, #0x13]
    // 0x7eee3c: r1 = <FlexParentData>
    //     0x7eee3c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7eee40: ldr             x1, [x1, #0x340]
    // 0x7eee44: r0 = Expanded()
    //     0x7eee44: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7eee48: mov             x3, x0
    // 0x7eee4c: r0 = 1
    //     0x7eee4c: mov             x0, #1
    // 0x7eee50: stur            x3, [fp, #-8]
    // 0x7eee54: StoreField: r3->field_13 = r0
    //     0x7eee54: stur            x0, [x3, #0x13]
    // 0x7eee58: r0 = Instance_FlexFit
    //     0x7eee58: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7eee5c: ldr             x0, [x0, #0x348]
    // 0x7eee60: StoreField: r3->field_1b = r0
    //     0x7eee60: stur            w0, [x3, #0x1b]
    // 0x7eee64: ldur            x0, [fp, #-0x18]
    // 0x7eee68: StoreField: r3->field_b = r0
    //     0x7eee68: stur            w0, [x3, #0xb]
    // 0x7eee6c: r1 = Null
    //     0x7eee6c: mov             x1, NULL
    // 0x7eee70: r2 = 6
    //     0x7eee70: mov             x2, #6
    // 0x7eee74: r0 = AllocateArray()
    //     0x7eee74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eee78: mov             x2, x0
    // 0x7eee7c: ldur            x0, [fp, #-0x28]
    // 0x7eee80: stur            x2, [fp, #-0x18]
    // 0x7eee84: StoreField: r2->field_f = r0
    //     0x7eee84: stur            w0, [x2, #0xf]
    // 0x7eee88: r16 = Instance_SizedBox
    //     0x7eee88: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x7eee8c: ldr             x16, [x16, #0x758]
    // 0x7eee90: StoreField: r2->field_13 = r16
    //     0x7eee90: stur            w16, [x2, #0x13]
    // 0x7eee94: ldur            x0, [fp, #-8]
    // 0x7eee98: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eee98: stur            w0, [x2, #0x17]
    // 0x7eee9c: r1 = <Widget>
    //     0x7eee9c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eeea0: r0 = AllocateGrowableArray()
    //     0x7eeea0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eeea4: mov             x1, x0
    // 0x7eeea8: ldur            x0, [fp, #-0x18]
    // 0x7eeeac: stur            x1, [fp, #-8]
    // 0x7eeeb0: StoreField: r1->field_f = r0
    //     0x7eeeb0: stur            w0, [x1, #0xf]
    // 0x7eeeb4: r0 = 6
    //     0x7eeeb4: mov             x0, #6
    // 0x7eeeb8: StoreField: r1->field_b = r0
    //     0x7eeeb8: stur            w0, [x1, #0xb]
    // 0x7eeebc: r0 = Row()
    //     0x7eeebc: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7eeec0: mov             x1, x0
    // 0x7eeec4: r0 = Instance_Axis
    //     0x7eeec4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7eeec8: stur            x1, [fp, #-0x18]
    // 0x7eeecc: StoreField: r1->field_f = r0
    //     0x7eeecc: stur            w0, [x1, #0xf]
    // 0x7eeed0: r0 = Instance_MainAxisAlignment
    //     0x7eeed0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7eeed4: ldr             x0, [x0, #0x230]
    // 0x7eeed8: StoreField: r1->field_13 = r0
    //     0x7eeed8: stur            w0, [x1, #0x13]
    // 0x7eeedc: r0 = Instance_MainAxisSize
    //     0x7eeedc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eeee0: ldr             x0, [x0, #0x330]
    // 0x7eeee4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eeee4: stur            w0, [x1, #0x17]
    // 0x7eeee8: r0 = Instance_CrossAxisAlignment
    //     0x7eeee8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7eeeec: ldr             x0, [x0, #0x238]
    // 0x7eeef0: StoreField: r1->field_1b = r0
    //     0x7eeef0: stur            w0, [x1, #0x1b]
    // 0x7eeef4: r0 = Instance_VerticalDirection
    //     0x7eeef4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eeef8: ldr             x0, [x0, #0x340]
    // 0x7eeefc: StoreField: r1->field_23 = r0
    //     0x7eeefc: stur            w0, [x1, #0x23]
    // 0x7eef00: r0 = Instance_Clip
    //     0x7eef00: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eef04: ldr             x0, [x0, #0x348]
    // 0x7eef08: StoreField: r1->field_2b = r0
    //     0x7eef08: stur            w0, [x1, #0x2b]
    // 0x7eef0c: StoreField: r1->field_2f = rZR
    //     0x7eef0c: stur            xzr, [x1, #0x2f]
    // 0x7eef10: ldur            x0, [fp, #-8]
    // 0x7eef14: StoreField: r1->field_b = r0
    //     0x7eef14: stur            w0, [x1, #0xb]
    // 0x7eef18: r0 = Padding()
    //     0x7eef18: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7eef1c: mov             x1, x0
    // 0x7eef20: r0 = Instance_EdgeInsets
    //     0x7eef20: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7eef24: ldr             x0, [x0, #0x240]
    // 0x7eef28: stur            x1, [fp, #-8]
    // 0x7eef2c: StoreField: r1->field_f = r0
    //     0x7eef2c: stur            w0, [x1, #0xf]
    // 0x7eef30: ldur            x0, [fp, #-0x18]
    // 0x7eef34: StoreField: r1->field_b = r0
    //     0x7eef34: stur            w0, [x1, #0xb]
    // 0x7eef38: r0 = Container()
    //     0x7eef38: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eef3c: stur            x0, [fp, #-0x18]
    // 0x7eef40: r16 = Instance_EdgeInsets
    //     0x7eef40: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7eef44: ldr             x16, [x16, #0xf18]
    // 0x7eef48: ldur            lr, [fp, #-0x10]
    // 0x7eef4c: stp             lr, x16, [SP, #8]
    // 0x7eef50: ldur            x16, [fp, #-8]
    // 0x7eef54: str             x16, [SP]
    // 0x7eef58: mov             x1, x0
    // 0x7eef5c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x7eef5c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x7eef60: ldr             x4, [x4, #0x1c0]
    // 0x7eef64: r0 = Container()
    //     0x7eef64: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eef68: ldur            x0, [fp, #-0x18]
    // 0x7eef6c: LeaveFrame
    //     0x7eef6c: mov             SP, fp
    //     0x7eef70: ldp             fp, lr, [SP], #0x10
    // 0x7eef74: ret
    //     0x7eef74: ret             
    // 0x7eef78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eef78: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eef7c: b               #0x7eeb2c
    // 0x7eef80: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7eef80: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// lib: , url: package:umrem_demo/features/admin/widgets/events/empty_card.dart

// class id: 1049549, size: 0x8
class :: {
}

// class id: 2919, size: 0x10, field offset: 0xc
//   const constructor, 
class EmptyCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e42e4, size: 0x38c
    // 0x7e42e4: EnterFrame
    //     0x7e42e4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e42e8: mov             fp, SP
    // 0x7e42ec: AllocStack(0x50)
    //     0x7e42ec: sub             SP, SP, #0x50
    // 0x7e42f0: SetupParameters(EmptyCard this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e42f0: stur            x1, [fp, #-8]
    //     0x7e42f4: stur            x2, [fp, #-0x10]
    // 0x7e42f8: CheckStackOverflow
    //     0x7e42f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e42fc: cmp             SP, x16
    //     0x7e4300: b.ls            #0x7e4660
    // 0x7e4304: r1 = 2
    //     0x7e4304: mov             x1, #2
    // 0x7e4308: r0 = AllocateContext()
    //     0x7e4308: bl              #0x927010  ; AllocateContextStub
    // 0x7e430c: mov             x2, x0
    // 0x7e4310: ldur            x0, [fp, #-8]
    // 0x7e4314: stur            x2, [fp, #-0x18]
    // 0x7e4318: StoreField: r2->field_f = r0
    //     0x7e4318: stur            w0, [x2, #0xf]
    // 0x7e431c: ldur            x0, [fp, #-0x10]
    // 0x7e4320: StoreField: r2->field_13 = r0
    //     0x7e4320: stur            w0, [x2, #0x13]
    // 0x7e4324: r16 = 0.100000
    //     0x7e4324: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e4328: ldr             x16, [x16, #0x1f8]
    // 0x7e432c: str             x16, [SP]
    // 0x7e4330: r1 = Instance_Color
    //     0x7e4330: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e4334: ldr             x1, [x1, #0xb78]
    // 0x7e4338: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e4338: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e433c: ldr             x4, [x4, #0x198]
    // 0x7e4340: r0 = withValues()
    //     0x7e4340: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e4344: stur            x0, [fp, #-8]
    // 0x7e4348: r0 = BoxDecoration()
    //     0x7e4348: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e434c: mov             x2, x0
    // 0x7e4350: ldur            x0, [fp, #-8]
    // 0x7e4354: stur            x2, [fp, #-0x10]
    // 0x7e4358: StoreField: r2->field_7 = r0
    //     0x7e4358: stur            w0, [x2, #7]
    // 0x7e435c: r0 = Instance_BoxShape
    //     0x7e435c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7e4360: ldr             x0, [x0, #0x1a0]
    // 0x7e4364: StoreField: r2->field_23 = r0
    //     0x7e4364: stur            w0, [x2, #0x23]
    // 0x7e4368: r16 = 0.400000
    //     0x7e4368: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e90] 0.4
    //     0x7e436c: ldr             x16, [x16, #0xe90]
    // 0x7e4370: str             x16, [SP]
    // 0x7e4374: r1 = Instance_Color
    //     0x7e4374: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e4378: ldr             x1, [x1, #0xb78]
    // 0x7e437c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e437c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e4380: ldr             x4, [x4, #0x198]
    // 0x7e4384: r0 = withValues()
    //     0x7e4384: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e4388: stur            x0, [fp, #-8]
    // 0x7e438c: r0 = Icon()
    //     0x7e438c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e4390: mov             x1, x0
    // 0x7e4394: r0 = Instance_IconData
    //     0x7e4394: add             x0, PP, #0x15, lsl #12  ; [pp+0x15278] Obj!IconData@a0a681
    //     0x7e4398: ldr             x0, [x0, #0x278]
    // 0x7e439c: stur            x1, [fp, #-0x20]
    // 0x7e43a0: StoreField: r1->field_b = r0
    //     0x7e43a0: stur            w0, [x1, #0xb]
    // 0x7e43a4: r0 = 56.000000
    //     0x7e43a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x123a0] 56
    //     0x7e43a8: ldr             x0, [x0, #0x3a0]
    // 0x7e43ac: StoreField: r1->field_f = r0
    //     0x7e43ac: stur            w0, [x1, #0xf]
    // 0x7e43b0: ldur            x0, [fp, #-8]
    // 0x7e43b4: StoreField: r1->field_23 = r0
    //     0x7e43b4: stur            w0, [x1, #0x23]
    // 0x7e43b8: r0 = Container()
    //     0x7e43b8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e43bc: stur            x0, [fp, #-8]
    // 0x7e43c0: r16 = Instance_EdgeInsets
    //     0x7e43c0: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e43c4: ldur            lr, [fp, #-0x10]
    // 0x7e43c8: stp             lr, x16, [SP, #8]
    // 0x7e43cc: ldur            x16, [fp, #-0x20]
    // 0x7e43d0: str             x16, [SP]
    // 0x7e43d4: mov             x1, x0
    // 0x7e43d8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e43d8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e43dc: ldr             x4, [x4, #0x1e8]
    // 0x7e43e0: r0 = Container()
    //     0x7e43e0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e43e4: r1 = _ConstMap len:12
    //     0x7e43e4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e43e8: r2 = 1400
    //     0x7e43e8: mov             x2, #0x578
    // 0x7e43ec: r0 = []()
    //     0x7e43ec: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e43f0: stur            x0, [fp, #-0x10]
    // 0x7e43f4: cmp             w0, NULL
    // 0x7e43f8: b.eq            #0x7e4668
    // 0x7e43fc: r0 = TextStyle()
    //     0x7e43fc: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e4400: mov             x1, x0
    // 0x7e4404: r0 = true
    //     0x7e4404: add             x0, NULL, #0x20  ; true
    // 0x7e4408: stur            x1, [fp, #-0x20]
    // 0x7e440c: StoreField: r1->field_7 = r0
    //     0x7e440c: stur            w0, [x1, #7]
    // 0x7e4410: ldur            x2, [fp, #-0x10]
    // 0x7e4414: StoreField: r1->field_b = r2
    //     0x7e4414: stur            w2, [x1, #0xb]
    // 0x7e4418: r2 = 16.000000
    //     0x7e4418: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7e441c: ldr             x2, [x2, #0x358]
    // 0x7e4420: StoreField: r1->field_1f = r2
    //     0x7e4420: stur            w2, [x1, #0x1f]
    // 0x7e4424: r2 = Instance_FontWeight
    //     0x7e4424: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7e4428: ldr             x2, [x2, #0x990]
    // 0x7e442c: StoreField: r1->field_23 = r2
    //     0x7e442c: stur            w2, [x1, #0x23]
    // 0x7e4430: r0 = Text()
    //     0x7e4430: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e4434: mov             x3, x0
    // 0x7e4438: r0 = "Bu gün için etkinlik yok"
    //     0x7e4438: add             x0, PP, #0x15, lsl #12  ; [pp+0x15280] "Bu gün için etkinlik yok"
    //     0x7e443c: ldr             x0, [x0, #0x280]
    // 0x7e4440: stur            x3, [fp, #-0x10]
    // 0x7e4444: StoreField: r3->field_b = r0
    //     0x7e4444: stur            w0, [x3, #0xb]
    // 0x7e4448: ldur            x0, [fp, #-0x20]
    // 0x7e444c: StoreField: r3->field_13 = r0
    //     0x7e444c: stur            w0, [x3, #0x13]
    // 0x7e4450: r1 = _ConstMap len:12
    //     0x7e4450: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e4454: r2 = 1000
    //     0x7e4454: mov             x2, #0x3e8
    // 0x7e4458: r0 = []()
    //     0x7e4458: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e445c: stur            x0, [fp, #-0x20]
    // 0x7e4460: cmp             w0, NULL
    // 0x7e4464: b.eq            #0x7e466c
    // 0x7e4468: r0 = TextStyle()
    //     0x7e4468: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e446c: mov             x1, x0
    // 0x7e4470: r0 = true
    //     0x7e4470: add             x0, NULL, #0x20  ; true
    // 0x7e4474: stur            x1, [fp, #-0x28]
    // 0x7e4478: StoreField: r1->field_7 = r0
    //     0x7e4478: stur            w0, [x1, #7]
    // 0x7e447c: ldur            x0, [fp, #-0x20]
    // 0x7e4480: StoreField: r1->field_b = r0
    //     0x7e4480: stur            w0, [x1, #0xb]
    // 0x7e4484: r0 = 13.000000
    //     0x7e4484: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e4488: ldr             x0, [x0, #0xb00]
    // 0x7e448c: StoreField: r1->field_1f = r0
    //     0x7e448c: stur            w0, [x1, #0x1f]
    // 0x7e4490: r0 = Text()
    //     0x7e4490: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e4494: mov             x1, x0
    // 0x7e4498: r0 = "Başka bir gün seçerek etkinlikleri görüntüleyin"
    //     0x7e4498: add             x0, PP, #0x15, lsl #12  ; [pp+0x15288] "Başka bir gün seçerek etkinlikleri görüntüleyin"
    //     0x7e449c: ldr             x0, [x0, #0x288]
    // 0x7e44a0: stur            x1, [fp, #-0x20]
    // 0x7e44a4: StoreField: r1->field_b = r0
    //     0x7e44a4: stur            w0, [x1, #0xb]
    // 0x7e44a8: ldur            x0, [fp, #-0x28]
    // 0x7e44ac: StoreField: r1->field_13 = r0
    //     0x7e44ac: stur            w0, [x1, #0x13]
    // 0x7e44b0: r0 = Radius()
    //     0x7e44b0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e44b4: d0 = 12.000000
    //     0x7e44b4: fmov            d0, #12.00000000
    // 0x7e44b8: stur            x0, [fp, #-0x28]
    // 0x7e44bc: StoreField: r0->field_7 = d0
    //     0x7e44bc: stur            d0, [x0, #7]
    // 0x7e44c0: StoreField: r0->field_f = d0
    //     0x7e44c0: stur            d0, [x0, #0xf]
    // 0x7e44c4: r0 = BorderRadius()
    //     0x7e44c4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e44c8: mov             x1, x0
    // 0x7e44cc: ldur            x0, [fp, #-0x28]
    // 0x7e44d0: stur            x1, [fp, #-0x30]
    // 0x7e44d4: StoreField: r1->field_7 = r0
    //     0x7e44d4: stur            w0, [x1, #7]
    // 0x7e44d8: StoreField: r1->field_b = r0
    //     0x7e44d8: stur            w0, [x1, #0xb]
    // 0x7e44dc: StoreField: r1->field_f = r0
    //     0x7e44dc: stur            w0, [x1, #0xf]
    // 0x7e44e0: StoreField: r1->field_13 = r0
    //     0x7e44e0: stur            w0, [x1, #0x13]
    // 0x7e44e4: r0 = RoundedRectangleBorder()
    //     0x7e44e4: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7e44e8: mov             x1, x0
    // 0x7e44ec: ldur            x0, [fp, #-0x30]
    // 0x7e44f0: StoreField: r1->field_b = r0
    //     0x7e44f0: stur            w0, [x1, #0xb]
    // 0x7e44f4: r0 = Instance_BorderSide
    //     0x7e44f4: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7e44f8: ldr             x0, [x0, #0xcb8]
    // 0x7e44fc: StoreField: r1->field_7 = r0
    //     0x7e44fc: stur            w0, [x1, #7]
    // 0x7e4500: r16 = Instance_Color
    //     0x7e4500: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e4504: ldr             x16, [x16, #0xb78]
    // 0x7e4508: r30 = Instance_Color
    //     0x7e4508: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e450c: stp             lr, x16, [SP, #0x10]
    // 0x7e4510: r16 = Instance_EdgeInsets
    //     0x7e4510: add             x16, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x7e4514: ldr             x16, [x16, #0x9a0]
    // 0x7e4518: stp             x1, x16, [SP]
    // 0x7e451c: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x7e451c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x7e4520: ldr             x4, [x4, #0xbb0]
    // 0x7e4524: r0 = styleFrom()
    //     0x7e4524: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e4528: ldur            x2, [fp, #-0x18]
    // 0x7e452c: r1 = Function '<anonymous closure>':.
    //     0x7e452c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c4c0] AnonymousClosure: (0x7e4670), in [package:umrem_demo/features/admin/widgets/events/empty_card.dart] EmptyCard::build (0x7e42e4)
    //     0x7e4530: ldr             x1, [x1, #0x4c0]
    // 0x7e4534: stur            x0, [fp, #-0x18]
    // 0x7e4538: r0 = AllocateClosure()
    //     0x7e4538: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e453c: stur            x0, [fp, #-0x28]
    // 0x7e4540: r0 = _ElevatedButtonWithIcon()
    //     0x7e4540: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x7e4544: mov             x1, x0
    // 0x7e4548: ldur            x5, [fp, #-0x28]
    // 0x7e454c: ldur            x6, [fp, #-0x18]
    // 0x7e4550: r2 = Instance_Icon
    //     0x7e4550: add             x2, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x7e4554: ldr             x2, [x2, #0x5b0]
    // 0x7e4558: r3 = Instance_Text
    //     0x7e4558: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c4c8] Obj!Text@a1d251
    //     0x7e455c: ldr             x3, [x3, #0x4c8]
    // 0x7e4560: stur            x0, [fp, #-0x18]
    // 0x7e4564: r0 = _ElevatedButtonWithIcon()
    //     0x7e4564: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x7e4568: r1 = Null
    //     0x7e4568: mov             x1, NULL
    // 0x7e456c: r2 = 14
    //     0x7e456c: mov             x2, #0xe
    // 0x7e4570: r0 = AllocateArray()
    //     0x7e4570: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e4574: mov             x2, x0
    // 0x7e4578: ldur            x0, [fp, #-8]
    // 0x7e457c: stur            x2, [fp, #-0x28]
    // 0x7e4580: StoreField: r2->field_f = r0
    //     0x7e4580: stur            w0, [x2, #0xf]
    // 0x7e4584: r16 = Instance_SizedBox
    //     0x7e4584: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e4588: ldr             x16, [x16, #0x310]
    // 0x7e458c: StoreField: r2->field_13 = r16
    //     0x7e458c: stur            w16, [x2, #0x13]
    // 0x7e4590: ldur            x0, [fp, #-0x10]
    // 0x7e4594: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e4594: stur            w0, [x2, #0x17]
    // 0x7e4598: r16 = Instance_SizedBox
    //     0x7e4598: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7e459c: ldr             x16, [x16, #0x318]
    // 0x7e45a0: StoreField: r2->field_1b = r16
    //     0x7e45a0: stur            w16, [x2, #0x1b]
    // 0x7e45a4: ldur            x0, [fp, #-0x20]
    // 0x7e45a8: StoreField: r2->field_1f = r0
    //     0x7e45a8: stur            w0, [x2, #0x1f]
    // 0x7e45ac: r16 = Instance_SizedBox
    //     0x7e45ac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7e45b0: ldr             x16, [x16, #0x220]
    // 0x7e45b4: StoreField: r2->field_23 = r16
    //     0x7e45b4: stur            w16, [x2, #0x23]
    // 0x7e45b8: ldur            x0, [fp, #-0x18]
    // 0x7e45bc: StoreField: r2->field_27 = r0
    //     0x7e45bc: stur            w0, [x2, #0x27]
    // 0x7e45c0: r1 = <Widget>
    //     0x7e45c0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e45c4: r0 = AllocateGrowableArray()
    //     0x7e45c4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e45c8: mov             x1, x0
    // 0x7e45cc: ldur            x0, [fp, #-0x28]
    // 0x7e45d0: stur            x1, [fp, #-8]
    // 0x7e45d4: StoreField: r1->field_f = r0
    //     0x7e45d4: stur            w0, [x1, #0xf]
    // 0x7e45d8: r0 = 14
    //     0x7e45d8: mov             x0, #0xe
    // 0x7e45dc: StoreField: r1->field_b = r0
    //     0x7e45dc: stur            w0, [x1, #0xb]
    // 0x7e45e0: r0 = Column()
    //     0x7e45e0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e45e4: mov             x1, x0
    // 0x7e45e8: r0 = Instance_Axis
    //     0x7e45e8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e45ec: stur            x1, [fp, #-0x10]
    // 0x7e45f0: StoreField: r1->field_f = r0
    //     0x7e45f0: stur            w0, [x1, #0xf]
    // 0x7e45f4: r0 = Instance_MainAxisAlignment
    //     0x7e45f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7e45f8: ldr             x0, [x0, #0x328]
    // 0x7e45fc: StoreField: r1->field_13 = r0
    //     0x7e45fc: stur            w0, [x1, #0x13]
    // 0x7e4600: r0 = Instance_MainAxisSize
    //     0x7e4600: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e4604: ldr             x0, [x0, #0x330]
    // 0x7e4608: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e4608: stur            w0, [x1, #0x17]
    // 0x7e460c: r0 = Instance_CrossAxisAlignment
    //     0x7e460c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e4610: ldr             x0, [x0, #0x338]
    // 0x7e4614: StoreField: r1->field_1b = r0
    //     0x7e4614: stur            w0, [x1, #0x1b]
    // 0x7e4618: r0 = Instance_VerticalDirection
    //     0x7e4618: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e461c: ldr             x0, [x0, #0x340]
    // 0x7e4620: StoreField: r1->field_23 = r0
    //     0x7e4620: stur            w0, [x1, #0x23]
    // 0x7e4624: r0 = Instance_Clip
    //     0x7e4624: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e4628: ldr             x0, [x0, #0x348]
    // 0x7e462c: StoreField: r1->field_2b = r0
    //     0x7e462c: stur            w0, [x1, #0x2b]
    // 0x7e4630: StoreField: r1->field_2f = rZR
    //     0x7e4630: stur            xzr, [x1, #0x2f]
    // 0x7e4634: ldur            x0, [fp, #-8]
    // 0x7e4638: StoreField: r1->field_b = r0
    //     0x7e4638: stur            w0, [x1, #0xb]
    // 0x7e463c: r0 = Center()
    //     0x7e463c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7e4640: r1 = Instance_Alignment
    //     0x7e4640: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7e4644: ldr             x1, [x1, #0x60]
    // 0x7e4648: StoreField: r0->field_f = r1
    //     0x7e4648: stur            w1, [x0, #0xf]
    // 0x7e464c: ldur            x1, [fp, #-0x10]
    // 0x7e4650: StoreField: r0->field_b = r1
    //     0x7e4650: stur            w1, [x0, #0xb]
    // 0x7e4654: LeaveFrame
    //     0x7e4654: mov             SP, fp
    //     0x7e4658: ldp             fp, lr, [SP], #0x10
    // 0x7e465c: ret
    //     0x7e465c: ret             
    // 0x7e4660: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e4660: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e4664: b               #0x7e4304
    // 0x7e4668: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e4668: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e466c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e466c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e4670, size: 0x5c
    // 0x7e4670: EnterFrame
    //     0x7e4670: stp             fp, lr, [SP, #-0x10]!
    //     0x7e4674: mov             fp, SP
    // 0x7e4678: ldr             x0, [fp, #0x10]
    // 0x7e467c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e467c: ldur            w1, [x0, #0x17]
    // 0x7e4680: DecompressPointer r1
    //     0x7e4680: add             x1, x1, HEAP, lsl #32
    // 0x7e4684: CheckStackOverflow
    //     0x7e4684: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e4688: cmp             SP, x16
    //     0x7e468c: b.ls            #0x7e46c4
    // 0x7e4690: LoadField: r2 = r1->field_13
    //     0x7e4690: ldur            w2, [x1, #0x13]
    // 0x7e4694: DecompressPointer r2
    //     0x7e4694: add             x2, x2, HEAP, lsl #32
    // 0x7e4698: LoadField: r0 = r1->field_f
    //     0x7e4698: ldur            w0, [x1, #0xf]
    // 0x7e469c: DecompressPointer r0
    //     0x7e469c: add             x0, x0, HEAP, lsl #32
    // 0x7e46a0: LoadField: r3 = r0->field_b
    //     0x7e46a0: ldur            w3, [x0, #0xb]
    // 0x7e46a4: DecompressPointer r3
    //     0x7e46a4: add             x3, x3, HEAP, lsl #32
    // 0x7e46a8: r1 = Null
    //     0x7e46a8: mov             x1, NULL
    // 0x7e46ac: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x7e46ac: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x7e46b0: r0 = showAddEditDialog()
    //     0x7e46b0: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x7e46b4: r0 = Null
    //     0x7e46b4: mov             x0, NULL
    // 0x7e46b8: LeaveFrame
    //     0x7e46b8: mov             SP, fp
    //     0x7e46bc: ldp             fp, lr, [SP], #0x10
    // 0x7e46c0: ret
    //     0x7e46c0: ret             
    // 0x7e46c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e46c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e46c8: b               #0x7e4690
  }
}

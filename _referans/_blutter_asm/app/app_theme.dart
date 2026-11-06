// lib: , url: package:umrem_demo/app/app_theme.dart

// class id: 1049481, size: 0x8
class :: {
}

// class id: 222, size: 0x8, field offset: 0x8
abstract class AppTheme extends Object {

  get _ cardDecoration(/* No info */) {
    // ** addr: 0x7e76e8, size: 0x1bc
    // 0x7e76e8: EnterFrame
    //     0x7e76e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e76ec: mov             fp, SP
    // 0x7e76f0: AllocStack(0x38)
    //     0x7e76f0: sub             SP, SP, #0x38
    // 0x7e76f4: CheckStackOverflow
    //     0x7e76f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e76f8: cmp             SP, x16
    //     0x7e76fc: b.ls            #0x7e7898
    // 0x7e7700: r0 = Radius()
    //     0x7e7700: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e7704: d0 = 16.000000
    //     0x7e7704: fmov            d0, #16.00000000
    // 0x7e7708: stur            x0, [fp, #-8]
    // 0x7e770c: StoreField: r0->field_7 = d0
    //     0x7e770c: stur            d0, [x0, #7]
    // 0x7e7710: StoreField: r0->field_f = d0
    //     0x7e7710: stur            d0, [x0, #0xf]
    // 0x7e7714: r0 = BorderRadius()
    //     0x7e7714: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e7718: mov             x3, x0
    // 0x7e771c: ldur            x0, [fp, #-8]
    // 0x7e7720: stur            x3, [fp, #-0x10]
    // 0x7e7724: StoreField: r3->field_7 = r0
    //     0x7e7724: stur            w0, [x3, #7]
    // 0x7e7728: StoreField: r3->field_b = r0
    //     0x7e7728: stur            w0, [x3, #0xb]
    // 0x7e772c: StoreField: r3->field_f = r0
    //     0x7e772c: stur            w0, [x3, #0xf]
    // 0x7e7730: StoreField: r3->field_13 = r0
    //     0x7e7730: stur            w0, [x3, #0x13]
    // 0x7e7734: r1 = _ConstMap len:12
    //     0x7e7734: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e7738: r2 = 400
    //     0x7e7738: mov             x2, #0x190
    // 0x7e773c: r0 = []()
    //     0x7e773c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e7740: cmp             w0, NULL
    // 0x7e7744: b.eq            #0x7e78a0
    // 0x7e7748: r16 = 1.000000
    //     0x7e7748: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7e774c: stp             x16, x0, [SP]
    // 0x7e7750: r1 = Null
    //     0x7e7750: mov             x1, NULL
    // 0x7e7754: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7e7754: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7e7758: ldr             x4, [x4, #0x208]
    // 0x7e775c: r0 = Border.all()
    //     0x7e775c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e7760: stur            x0, [fp, #-8]
    // 0x7e7764: r16 = 0.080000
    //     0x7e7764: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x7e7768: ldr             x16, [x16, #0xe30]
    // 0x7e776c: str             x16, [SP]
    // 0x7e7770: r1 = Instance_Color
    //     0x7e7770: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7e7774: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e7774: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e7778: ldr             x4, [x4, #0x198]
    // 0x7e777c: r0 = withValues()
    //     0x7e777c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e7780: stur            x0, [fp, #-0x18]
    // 0x7e7784: r0 = BoxShadow()
    //     0x7e7784: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7e7788: d0 = 2.000000
    //     0x7e7788: fmov            d0, #2.00000000
    // 0x7e778c: stur            x0, [fp, #-0x20]
    // 0x7e7790: ArrayStore: r0[0] = d0  ; List_8
    //     0x7e7790: stur            d0, [x0, #0x17]
    // 0x7e7794: r2 = Instance_BlurStyle
    //     0x7e7794: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7e7798: ldr             x2, [x2, #0x9b0]
    // 0x7e779c: StoreField: r0->field_1f = r2
    //     0x7e779c: stur            w2, [x0, #0x1f]
    // 0x7e77a0: ldur            x1, [fp, #-0x18]
    // 0x7e77a4: StoreField: r0->field_7 = r1
    //     0x7e77a4: stur            w1, [x0, #7]
    // 0x7e77a8: r1 = Instance_Offset
    //     0x7e77a8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7e77ac: ldr             x1, [x1, #0x9b8]
    // 0x7e77b0: StoreField: r0->field_b = r1
    //     0x7e77b0: stur            w1, [x0, #0xb]
    // 0x7e77b4: d0 = 16.000000
    //     0x7e77b4: fmov            d0, #16.00000000
    // 0x7e77b8: StoreField: r0->field_f = d0
    //     0x7e77b8: stur            d0, [x0, #0xf]
    // 0x7e77bc: r16 = 0.150000
    //     0x7e77bc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7e77c0: ldr             x16, [x16, #0xe38]
    // 0x7e77c4: str             x16, [SP]
    // 0x7e77c8: r1 = Instance_Color
    //     0x7e77c8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e77cc: ldr             x1, [x1, #0xb78]
    // 0x7e77d0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e77d0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e77d4: ldr             x4, [x4, #0x198]
    // 0x7e77d8: r0 = withValues()
    //     0x7e77d8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e77dc: stur            x0, [fp, #-0x18]
    // 0x7e77e0: r0 = BoxShadow()
    //     0x7e77e0: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7e77e4: stur            x0, [fp, #-0x28]
    // 0x7e77e8: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7e77e8: stur            xzr, [x0, #0x17]
    // 0x7e77ec: r1 = Instance_BlurStyle
    //     0x7e77ec: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7e77f0: ldr             x1, [x1, #0x9b0]
    // 0x7e77f4: StoreField: r0->field_1f = r1
    //     0x7e77f4: stur            w1, [x0, #0x1f]
    // 0x7e77f8: ldur            x1, [fp, #-0x18]
    // 0x7e77fc: StoreField: r0->field_7 = r1
    //     0x7e77fc: stur            w1, [x0, #7]
    // 0x7e7800: r1 = Instance_Offset
    //     0x7e7800: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x7e7804: ldr             x1, [x1, #0xe40]
    // 0x7e7808: StoreField: r0->field_b = r1
    //     0x7e7808: stur            w1, [x0, #0xb]
    // 0x7e780c: d0 = 24.000000
    //     0x7e780c: fmov            d0, #24.00000000
    // 0x7e7810: StoreField: r0->field_f = d0
    //     0x7e7810: stur            d0, [x0, #0xf]
    // 0x7e7814: r1 = Null
    //     0x7e7814: mov             x1, NULL
    // 0x7e7818: r2 = 4
    //     0x7e7818: mov             x2, #4
    // 0x7e781c: r0 = AllocateArray()
    //     0x7e781c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7820: mov             x2, x0
    // 0x7e7824: ldur            x0, [fp, #-0x20]
    // 0x7e7828: stur            x2, [fp, #-0x18]
    // 0x7e782c: StoreField: r2->field_f = r0
    //     0x7e782c: stur            w0, [x2, #0xf]
    // 0x7e7830: ldur            x0, [fp, #-0x28]
    // 0x7e7834: StoreField: r2->field_13 = r0
    //     0x7e7834: stur            w0, [x2, #0x13]
    // 0x7e7838: r1 = <BoxShadow>
    //     0x7e7838: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7e783c: ldr             x1, [x1, #0x9c0]
    // 0x7e7840: r0 = AllocateGrowableArray()
    //     0x7e7840: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7844: mov             x1, x0
    // 0x7e7848: ldur            x0, [fp, #-0x18]
    // 0x7e784c: stur            x1, [fp, #-0x20]
    // 0x7e7850: StoreField: r1->field_f = r0
    //     0x7e7850: stur            w0, [x1, #0xf]
    // 0x7e7854: r0 = 4
    //     0x7e7854: mov             x0, #4
    // 0x7e7858: StoreField: r1->field_b = r0
    //     0x7e7858: stur            w0, [x1, #0xb]
    // 0x7e785c: r0 = BoxDecoration()
    //     0x7e785c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e7860: r1 = Instance_Color
    //     0x7e7860: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e7864: StoreField: r0->field_7 = r1
    //     0x7e7864: stur            w1, [x0, #7]
    // 0x7e7868: ldur            x1, [fp, #-8]
    // 0x7e786c: StoreField: r0->field_f = r1
    //     0x7e786c: stur            w1, [x0, #0xf]
    // 0x7e7870: ldur            x1, [fp, #-0x10]
    // 0x7e7874: StoreField: r0->field_13 = r1
    //     0x7e7874: stur            w1, [x0, #0x13]
    // 0x7e7878: ldur            x1, [fp, #-0x20]
    // 0x7e787c: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e787c: stur            w1, [x0, #0x17]
    // 0x7e7880: r1 = Instance_BoxShape
    //     0x7e7880: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e7884: ldr             x1, [x1, #0x1c8]
    // 0x7e7888: StoreField: r0->field_23 = r1
    //     0x7e7888: stur            w1, [x0, #0x23]
    // 0x7e788c: LeaveFrame
    //     0x7e788c: mov             SP, fp
    //     0x7e7890: ldp             fp, lr, [SP], #0x10
    // 0x7e7894: ret
    //     0x7e7894: ret             
    // 0x7e7898: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e7898: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e789c: b               #0x7e7700
    // 0x7e78a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e78a0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

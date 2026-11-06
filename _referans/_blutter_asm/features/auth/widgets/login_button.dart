// lib: , url: package:umrem_demo/features/auth/widgets/login_button.dart

// class id: 1049566, size: 0x8
class :: {
}

// class id: 2908, size: 0x24, field offset: 0xc
//   const constructor, 
class LoginButton extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e91e4, size: 0x58
    // 0x7e91e4: EnterFrame
    //     0x7e91e4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e91e8: mov             fp, SP
    // 0x7e91ec: AllocStack(0x8)
    //     0x7e91ec: sub             SP, SP, #8
    // 0x7e91f0: SetupParameters(LoginButton this /* r1 => r1, fp-0x8 */)
    //     0x7e91f0: stur            x1, [fp, #-8]
    // 0x7e91f4: r1 = 1
    //     0x7e91f4: mov             x1, #1
    // 0x7e91f8: r0 = AllocateContext()
    //     0x7e91f8: bl              #0x927010  ; AllocateContextStub
    // 0x7e91fc: mov             x1, x0
    // 0x7e9200: ldur            x0, [fp, #-8]
    // 0x7e9204: StoreField: r1->field_f = r0
    //     0x7e9204: stur            w0, [x1, #0xf]
    // 0x7e9208: mov             x2, x1
    // 0x7e920c: r1 = Function '<anonymous closure>':.
    //     0x7e920c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf30] AnonymousClosure: (0x7e923c), in [package:umrem_demo/features/auth/widgets/login_button.dart] LoginButton::build (0x7e91e4)
    //     0x7e9210: ldr             x1, [x1, #0xf30]
    // 0x7e9214: r0 = AllocateClosure()
    //     0x7e9214: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e9218: r1 = <LoginProvider>
    //     0x7e9218: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b40] TypeArguments: <LoginProvider>
    //     0x7e921c: ldr             x1, [x1, #0xb40]
    // 0x7e9220: stur            x0, [fp, #-8]
    // 0x7e9224: r0 = Consumer()
    //     0x7e9224: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7e9228: ldur            x1, [fp, #-8]
    // 0x7e922c: StoreField: r0->field_13 = r1
    //     0x7e922c: stur            w1, [x0, #0x13]
    // 0x7e9230: LeaveFrame
    //     0x7e9230: mov             SP, fp
    //     0x7e9234: ldp             fp, lr, [SP], #0x10
    // 0x7e9238: ret
    //     0x7e9238: ret             
  }
  [closure] SizedBox <anonymous closure>(dynamic, BuildContext, LoginProvider, Widget?) {
    // ** addr: 0x7e923c, size: 0x39c
    // 0x7e923c: EnterFrame
    //     0x7e923c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e9240: mov             fp, SP
    // 0x7e9244: AllocStack(0x50)
    //     0x7e9244: sub             SP, SP, #0x50
    // 0x7e9248: SetupParameters([dynamic _ /* r0 */])
    //     0x7e9248: ldr             x0, [fp, #0x28]
    //     0x7e924c: ldur            w1, [x0, #0x17]
    //     0x7e9250: add             x1, x1, HEAP, lsl #32
    //     0x7e9254: stur            x1, [fp, #-8]
    // 0x7e9258: CheckStackOverflow
    //     0x7e9258: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e925c: cmp             SP, x16
    //     0x7e9260: b.ls            #0x7e95cc
    // 0x7e9264: r1 = 2
    //     0x7e9264: mov             x1, #2
    // 0x7e9268: r0 = AllocateContext()
    //     0x7e9268: bl              #0x927010  ; AllocateContextStub
    // 0x7e926c: mov             x1, x0
    // 0x7e9270: ldur            x0, [fp, #-8]
    // 0x7e9274: StoreField: r1->field_b = r0
    //     0x7e9274: stur            w0, [x1, #0xb]
    // 0x7e9278: ldr             x2, [fp, #0x20]
    // 0x7e927c: StoreField: r1->field_f = r2
    //     0x7e927c: stur            w2, [x1, #0xf]
    // 0x7e9280: ldr             x2, [fp, #0x18]
    // 0x7e9284: StoreField: r1->field_13 = r2
    //     0x7e9284: stur            w2, [x1, #0x13]
    // 0x7e9288: LoadField: r3 = r0->field_f
    //     0x7e9288: ldur            w3, [x0, #0xf]
    // 0x7e928c: DecompressPointer r3
    //     0x7e928c: add             x3, x3, HEAP, lsl #32
    // 0x7e9290: stur            x3, [fp, #-0x10]
    // 0x7e9294: LoadField: r2 = r3->field_1b
    //     0x7e9294: ldur            w2, [x3, #0x1b]
    // 0x7e9298: DecompressPointer r2
    //     0x7e9298: add             x2, x2, HEAP, lsl #32
    // 0x7e929c: tbnz            w2, #4, #0x7e92ac
    // 0x7e92a0: mov             x0, x3
    // 0x7e92a4: r1 = Null
    //     0x7e92a4: mov             x1, NULL
    // 0x7e92a8: b               #0x7e92c4
    // 0x7e92ac: mov             x2, x1
    // 0x7e92b0: r1 = Function '<anonymous closure>':.
    //     0x7e92b0: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf38] AnonymousClosure: (0x7e95d8), in [package:umrem_demo/features/auth/widgets/login_button.dart] LoginButton::build (0x7e91e4)
    //     0x7e92b4: ldr             x1, [x1, #0xf38]
    // 0x7e92b8: r0 = AllocateClosure()
    //     0x7e92b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e92bc: mov             x1, x0
    // 0x7e92c0: ldur            x0, [fp, #-0x10]
    // 0x7e92c4: stur            x1, [fp, #-0x18]
    // 0x7e92c8: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7e92c8: ldur            w2, [x0, #0x17]
    // 0x7e92cc: DecompressPointer r2
    //     0x7e92cc: add             x2, x2, HEAP, lsl #32
    // 0x7e92d0: r0 = LoadClassIdInstr(r2)
    //     0x7e92d0: ldur            x0, [x2, #-1]
    //     0x7e92d4: ubfx            x0, x0, #0xc, #0x14
    // 0x7e92d8: r16 = "super_admin"
    //     0x7e92d8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf40] "super_admin"
    //     0x7e92dc: ldr             x16, [x16, #0xf40]
    // 0x7e92e0: stp             x16, x2, [SP]
    // 0x7e92e4: mov             lr, x0
    // 0x7e92e8: ldr             lr, [x21, lr, lsl #3]
    // 0x7e92ec: blr             lr
    // 0x7e92f0: tbnz            w0, #4, #0x7e9300
    // 0x7e92f4: r1 = Instance_Color
    //     0x7e92f4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a388] Obj!Color@a254b1
    //     0x7e92f8: ldr             x1, [x1, #0x388]
    // 0x7e92fc: b               #0x7e9308
    // 0x7e9300: r1 = Instance_Color
    //     0x7e9300: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e9304: ldr             x1, [x1, #0xb78]
    // 0x7e9308: ldur            x0, [fp, #-8]
    // 0x7e930c: stur            x1, [fp, #-0x10]
    // 0x7e9310: r0 = Radius()
    //     0x7e9310: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e9314: d0 = 16.000000
    //     0x7e9314: fmov            d0, #16.00000000
    // 0x7e9318: stur            x0, [fp, #-0x20]
    // 0x7e931c: StoreField: r0->field_7 = d0
    //     0x7e931c: stur            d0, [x0, #7]
    // 0x7e9320: StoreField: r0->field_f = d0
    //     0x7e9320: stur            d0, [x0, #0xf]
    // 0x7e9324: r0 = BorderRadius()
    //     0x7e9324: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e9328: mov             x1, x0
    // 0x7e932c: ldur            x0, [fp, #-0x20]
    // 0x7e9330: stur            x1, [fp, #-0x28]
    // 0x7e9334: StoreField: r1->field_7 = r0
    //     0x7e9334: stur            w0, [x1, #7]
    // 0x7e9338: StoreField: r1->field_b = r0
    //     0x7e9338: stur            w0, [x1, #0xb]
    // 0x7e933c: StoreField: r1->field_f = r0
    //     0x7e933c: stur            w0, [x1, #0xf]
    // 0x7e9340: StoreField: r1->field_13 = r0
    //     0x7e9340: stur            w0, [x1, #0x13]
    // 0x7e9344: r0 = RoundedRectangleBorder()
    //     0x7e9344: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7e9348: mov             x3, x0
    // 0x7e934c: ldur            x0, [fp, #-0x28]
    // 0x7e9350: stur            x3, [fp, #-0x20]
    // 0x7e9354: StoreField: r3->field_b = r0
    //     0x7e9354: stur            w0, [x3, #0xb]
    // 0x7e9358: r0 = Instance_BorderSide
    //     0x7e9358: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7e935c: ldr             x0, [x0, #0xcb8]
    // 0x7e9360: StoreField: r3->field_7 = r0
    //     0x7e9360: stur            w0, [x3, #7]
    // 0x7e9364: r1 = _ConstMap len:12
    //     0x7e9364: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e9368: r2 = 600
    //     0x7e9368: mov             x2, #0x258
    // 0x7e936c: r0 = []()
    //     0x7e936c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e9370: cmp             w0, NULL
    // 0x7e9374: b.eq            #0x7e95d4
    // 0x7e9378: ldur            x16, [fp, #-0x10]
    // 0x7e937c: r30 = Instance_Color
    //     0x7e937c: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e9380: stp             lr, x16, [SP, #0x18]
    // 0x7e9384: r16 = 0.000000
    //     0x7e9384: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7e9388: ldur            lr, [fp, #-0x20]
    // 0x7e938c: stp             lr, x16, [SP, #8]
    // 0x7e9390: str             x0, [SP]
    // 0x7e9394: r4 = const [0, 0x5, 0x5, 0, backgroundColor, 0, disabledBackgroundColor, 0x4, elevation, 0x2, foregroundColor, 0x1, shape, 0x3, null]
    //     0x7e9394: add             x4, PP, #0x1b, lsl #12  ; [pp+0x1bf48] List(15) [0, 0x5, 0x5, 0, "backgroundColor", 0, "disabledBackgroundColor", 0x4, "elevation", 0x2, "foregroundColor", 0x1, "shape", 0x3, Null]
    //     0x7e9398: ldr             x4, [x4, #0xf48]
    // 0x7e939c: r0 = styleFrom()
    //     0x7e939c: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e93a0: mov             x2, x0
    // 0x7e93a4: ldur            x1, [fp, #-8]
    // 0x7e93a8: stur            x2, [fp, #-0x10]
    // 0x7e93ac: LoadField: r0 = r1->field_f
    //     0x7e93ac: ldur            w0, [x1, #0xf]
    // 0x7e93b0: DecompressPointer r0
    //     0x7e93b0: add             x0, x0, HEAP, lsl #32
    // 0x7e93b4: LoadField: r3 = r0->field_1b
    //     0x7e93b4: ldur            w3, [x0, #0x1b]
    // 0x7e93b8: DecompressPointer r3
    //     0x7e93b8: add             x3, x3, HEAP, lsl #32
    // 0x7e93bc: tbnz            w3, #4, #0x7e93d0
    // 0x7e93c0: mov             x0, x2
    // 0x7e93c4: r2 = Instance_SizedBox
    //     0x7e93c4: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bf50] Obj!SizedBox@a1fd91
    //     0x7e93c8: ldr             x2, [x2, #0xf50]
    // 0x7e93cc: b               #0x7e9560
    // 0x7e93d0: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7e93d0: ldur            w3, [x0, #0x17]
    // 0x7e93d4: DecompressPointer r3
    //     0x7e93d4: add             x3, x3, HEAP, lsl #32
    // 0x7e93d8: r0 = LoadClassIdInstr(r3)
    //     0x7e93d8: ldur            x0, [x3, #-1]
    //     0x7e93dc: ubfx            x0, x0, #0xc, #0x14
    // 0x7e93e0: r16 = "super_admin"
    //     0x7e93e0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf40] "super_admin"
    //     0x7e93e4: ldr             x16, [x16, #0xf40]
    // 0x7e93e8: stp             x16, x3, [SP]
    // 0x7e93ec: mov             lr, x0
    // 0x7e93f0: ldr             lr, [x21, lr, lsl #3]
    // 0x7e93f4: blr             lr
    // 0x7e93f8: tbnz            w0, #4, #0x7e9408
    // 0x7e93fc: r1 = "Süper Admin Girişi"
    //     0x7e93fc: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf58] "Süper Admin Girişi"
    //     0x7e9400: ldr             x1, [x1, #0xf58]
    // 0x7e9404: b               #0x7e9410
    // 0x7e9408: r1 = "Giriş Yap"
    //     0x7e9408: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf60] "Giriş Yap"
    //     0x7e940c: ldr             x1, [x1, #0xf60]
    // 0x7e9410: ldur            x0, [fp, #-8]
    // 0x7e9414: stur            x1, [fp, #-0x20]
    // 0x7e9418: r0 = Text()
    //     0x7e9418: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e941c: mov             x1, x0
    // 0x7e9420: ldur            x0, [fp, #-0x20]
    // 0x7e9424: stur            x1, [fp, #-0x28]
    // 0x7e9428: StoreField: r1->field_b = r0
    //     0x7e9428: stur            w0, [x1, #0xb]
    // 0x7e942c: r0 = Instance_TextStyle
    //     0x7e942c: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bf68] Obj!TextStyle@a18e81
    //     0x7e9430: ldr             x0, [x0, #0xf68]
    // 0x7e9434: StoreField: r1->field_13 = r0
    //     0x7e9434: stur            w0, [x1, #0x13]
    // 0x7e9438: ldur            x0, [fp, #-8]
    // 0x7e943c: LoadField: r2 = r0->field_f
    //     0x7e943c: ldur            w2, [x0, #0xf]
    // 0x7e9440: DecompressPointer r2
    //     0x7e9440: add             x2, x2, HEAP, lsl #32
    // 0x7e9444: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x7e9444: ldur            w0, [x2, #0x17]
    // 0x7e9448: DecompressPointer r0
    //     0x7e9448: add             x0, x0, HEAP, lsl #32
    // 0x7e944c: r2 = LoadClassIdInstr(r0)
    //     0x7e944c: ldur            x2, [x0, #-1]
    //     0x7e9450: ubfx            x2, x2, #0xc, #0x14
    // 0x7e9454: r16 = "super_admin"
    //     0x7e9454: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf40] "super_admin"
    //     0x7e9458: ldr             x16, [x16, #0xf40]
    // 0x7e945c: stp             x16, x0, [SP]
    // 0x7e9460: mov             x0, x2
    // 0x7e9464: mov             lr, x0
    // 0x7e9468: ldr             lr, [x21, lr, lsl #3]
    // 0x7e946c: blr             lr
    // 0x7e9470: tbnz            w0, #4, #0x7e9480
    // 0x7e9474: r1 = Instance_IconData
    //     0x7e9474: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf70] Obj!IconData@a0a921
    //     0x7e9478: ldr             x1, [x1, #0xf70]
    // 0x7e947c: b               #0x7e9488
    // 0x7e9480: r1 = Instance_IconData
    //     0x7e9480: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf78] Obj!IconData@a09fa1
    //     0x7e9484: ldr             x1, [x1, #0xf78]
    // 0x7e9488: ldur            x0, [fp, #-0x28]
    // 0x7e948c: stur            x1, [fp, #-8]
    // 0x7e9490: r0 = Icon()
    //     0x7e9490: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e9494: mov             x3, x0
    // 0x7e9498: ldur            x0, [fp, #-8]
    // 0x7e949c: stur            x3, [fp, #-0x20]
    // 0x7e94a0: StoreField: r3->field_b = r0
    //     0x7e94a0: stur            w0, [x3, #0xb]
    // 0x7e94a4: r0 = 20.000000
    //     0x7e94a4: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7e94a8: ldr             x0, [x0, #0xe48]
    // 0x7e94ac: StoreField: r3->field_f = r0
    //     0x7e94ac: stur            w0, [x3, #0xf]
    // 0x7e94b0: r1 = Null
    //     0x7e94b0: mov             x1, NULL
    // 0x7e94b4: r2 = 6
    //     0x7e94b4: mov             x2, #6
    // 0x7e94b8: r0 = AllocateArray()
    //     0x7e94b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e94bc: mov             x2, x0
    // 0x7e94c0: ldur            x0, [fp, #-0x28]
    // 0x7e94c4: stur            x2, [fp, #-8]
    // 0x7e94c8: StoreField: r2->field_f = r0
    //     0x7e94c8: stur            w0, [x2, #0xf]
    // 0x7e94cc: r16 = Instance_SizedBox
    //     0x7e94cc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7e94d0: ldr             x16, [x16, #0x368]
    // 0x7e94d4: StoreField: r2->field_13 = r16
    //     0x7e94d4: stur            w16, [x2, #0x13]
    // 0x7e94d8: ldur            x0, [fp, #-0x20]
    // 0x7e94dc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e94dc: stur            w0, [x2, #0x17]
    // 0x7e94e0: r1 = <Widget>
    //     0x7e94e0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e94e4: r0 = AllocateGrowableArray()
    //     0x7e94e4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e94e8: mov             x1, x0
    // 0x7e94ec: ldur            x0, [fp, #-8]
    // 0x7e94f0: stur            x1, [fp, #-0x20]
    // 0x7e94f4: StoreField: r1->field_f = r0
    //     0x7e94f4: stur            w0, [x1, #0xf]
    // 0x7e94f8: r0 = 6
    //     0x7e94f8: mov             x0, #6
    // 0x7e94fc: StoreField: r1->field_b = r0
    //     0x7e94fc: stur            w0, [x1, #0xb]
    // 0x7e9500: r0 = Row()
    //     0x7e9500: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e9504: mov             x1, x0
    // 0x7e9508: r0 = Instance_Axis
    //     0x7e9508: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e950c: StoreField: r1->field_f = r0
    //     0x7e950c: stur            w0, [x1, #0xf]
    // 0x7e9510: r0 = Instance_MainAxisAlignment
    //     0x7e9510: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7e9514: ldr             x0, [x0, #0x328]
    // 0x7e9518: StoreField: r1->field_13 = r0
    //     0x7e9518: stur            w0, [x1, #0x13]
    // 0x7e951c: r0 = Instance_MainAxisSize
    //     0x7e951c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e9520: ldr             x0, [x0, #0x330]
    // 0x7e9524: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e9524: stur            w0, [x1, #0x17]
    // 0x7e9528: r0 = Instance_CrossAxisAlignment
    //     0x7e9528: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e952c: ldr             x0, [x0, #0x338]
    // 0x7e9530: StoreField: r1->field_1b = r0
    //     0x7e9530: stur            w0, [x1, #0x1b]
    // 0x7e9534: r0 = Instance_VerticalDirection
    //     0x7e9534: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e9538: ldr             x0, [x0, #0x340]
    // 0x7e953c: StoreField: r1->field_23 = r0
    //     0x7e953c: stur            w0, [x1, #0x23]
    // 0x7e9540: r0 = Instance_Clip
    //     0x7e9540: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e9544: ldr             x0, [x0, #0x348]
    // 0x7e9548: StoreField: r1->field_2b = r0
    //     0x7e9548: stur            w0, [x1, #0x2b]
    // 0x7e954c: StoreField: r1->field_2f = rZR
    //     0x7e954c: stur            xzr, [x1, #0x2f]
    // 0x7e9550: ldur            x0, [fp, #-0x20]
    // 0x7e9554: StoreField: r1->field_b = r0
    //     0x7e9554: stur            w0, [x1, #0xb]
    // 0x7e9558: mov             x2, x1
    // 0x7e955c: ldur            x0, [fp, #-0x10]
    // 0x7e9560: ldur            x1, [fp, #-0x18]
    // 0x7e9564: stur            x2, [fp, #-8]
    // 0x7e9568: r0 = ElevatedButton()
    //     0x7e9568: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7e956c: mov             x1, x0
    // 0x7e9570: ldur            x0, [fp, #-0x18]
    // 0x7e9574: stur            x1, [fp, #-0x20]
    // 0x7e9578: StoreField: r1->field_b = r0
    //     0x7e9578: stur            w0, [x1, #0xb]
    // 0x7e957c: ldur            x0, [fp, #-0x10]
    // 0x7e9580: StoreField: r1->field_1b = r0
    //     0x7e9580: stur            w0, [x1, #0x1b]
    // 0x7e9584: r0 = false
    //     0x7e9584: add             x0, NULL, #0x30  ; false
    // 0x7e9588: StoreField: r1->field_27 = r0
    //     0x7e9588: stur            w0, [x1, #0x27]
    // 0x7e958c: r0 = true
    //     0x7e958c: add             x0, NULL, #0x20  ; true
    // 0x7e9590: StoreField: r1->field_2f = r0
    //     0x7e9590: stur            w0, [x1, #0x2f]
    // 0x7e9594: ldur            x0, [fp, #-8]
    // 0x7e9598: StoreField: r1->field_37 = r0
    //     0x7e9598: stur            w0, [x1, #0x37]
    // 0x7e959c: r0 = SizedBox()
    //     0x7e959c: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x7e95a0: r1 = inf
    //     0x7e95a0: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x7e95a4: ldr             x1, [x1, #0xb20]
    // 0x7e95a8: StoreField: r0->field_f = r1
    //     0x7e95a8: stur            w1, [x0, #0xf]
    // 0x7e95ac: r1 = 56.000000
    //     0x7e95ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x123a0] 56
    //     0x7e95b0: ldr             x1, [x1, #0x3a0]
    // 0x7e95b4: StoreField: r0->field_13 = r1
    //     0x7e95b4: stur            w1, [x0, #0x13]
    // 0x7e95b8: ldur            x1, [fp, #-0x20]
    // 0x7e95bc: StoreField: r0->field_b = r1
    //     0x7e95bc: stur            w1, [x0, #0xb]
    // 0x7e95c0: LeaveFrame
    //     0x7e95c0: mov             SP, fp
    //     0x7e95c4: ldp             fp, lr, [SP], #0x10
    // 0x7e95c8: ret
    //     0x7e95c8: ret             
    // 0x7e95cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e95cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e95d0: b               #0x7e9264
    // 0x7e95d4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e95d4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e95d8, size: 0x2b4
    // 0x7e95d8: EnterFrame
    //     0x7e95d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e95dc: mov             fp, SP
    // 0x7e95e0: AllocStack(0x38)
    //     0x7e95e0: sub             SP, SP, #0x38
    // 0x7e95e4: SetupParameters(LoginButton this /* r1 */)
    //     0x7e95e4: stur            NULL, [fp, #-8]
    //     0x7e95e8: mov             x0, #0
    //     0x7e95ec: add             x1, fp, w0, sxtw #2
    //     0x7e95f0: ldr             x1, [x1, #0x10]
    //     0x7e95f4: ldur            w2, [x1, #0x17]
    //     0x7e95f8: add             x2, x2, HEAP, lsl #32
    //     0x7e95fc: stur            x2, [fp, #-0x10]
    // 0x7e9600: CheckStackOverflow
    //     0x7e9600: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e9604: cmp             SP, x16
    //     0x7e9608: b.ls            #0x7e9884
    // 0x7e960c: InitAsync() -> Future<void?>
    //     0x7e960c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e9610: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e9614: ldur            x0, [fp, #-0x10]
    // 0x7e9618: LoadField: r2 = r0->field_b
    //     0x7e9618: ldur            w2, [x0, #0xb]
    // 0x7e961c: DecompressPointer r2
    //     0x7e961c: add             x2, x2, HEAP, lsl #32
    // 0x7e9620: stur            x2, [fp, #-0x18]
    // 0x7e9624: LoadField: r1 = r2->field_f
    //     0x7e9624: ldur            w1, [x2, #0xf]
    // 0x7e9628: DecompressPointer r1
    //     0x7e9628: add             x1, x1, HEAP, lsl #32
    // 0x7e962c: LoadField: r3 = r1->field_13
    //     0x7e962c: ldur            w3, [x1, #0x13]
    // 0x7e9630: DecompressPointer r3
    //     0x7e9630: add             x3, x3, HEAP, lsl #32
    // 0x7e9634: LoadField: r1 = r3->field_27
    //     0x7e9634: ldur            w1, [x3, #0x27]
    // 0x7e9638: DecompressPointer r1
    //     0x7e9638: add             x1, x1, HEAP, lsl #32
    // 0x7e963c: LoadField: r3 = r1->field_7
    //     0x7e963c: ldur            w3, [x1, #7]
    // 0x7e9640: DecompressPointer r3
    //     0x7e9640: add             x3, x3, HEAP, lsl #32
    // 0x7e9644: mov             x1, x3
    // 0x7e9648: r0 = trim()
    //     0x7e9648: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x7e964c: r1 = LoadClassIdInstr(r0)
    //     0x7e964c: ldur            x1, [x0, #-1]
    //     0x7e9650: ubfx            x1, x1, #0xc, #0x14
    // 0x7e9654: r16 = "12345678909"
    //     0x7e9654: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf80] "12345678909"
    //     0x7e9658: ldr             x16, [x16, #0xf80]
    // 0x7e965c: stp             x16, x0, [SP]
    // 0x7e9660: mov             x0, x1
    // 0x7e9664: mov             lr, x0
    // 0x7e9668: ldr             lr, [x21, lr, lsl #3]
    // 0x7e966c: blr             lr
    // 0x7e9670: tbnz            w0, #4, #0x7e96b0
    // 0x7e9674: ldur            x1, [fp, #-0x10]
    // 0x7e9678: r3 = true
    //     0x7e9678: add             x3, NULL, #0x20  ; true
    // 0x7e967c: StoreStaticField(0xfe8, r3)
    //     0x7e967c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e9680: str             x3, [x0, #0x1fd0]
    // 0x7e9684: LoadField: r0 = r1->field_f
    //     0x7e9684: ldur            w0, [x1, #0xf]
    // 0x7e9688: DecompressPointer r0
    //     0x7e9688: add             x0, x0, HEAP, lsl #32
    // 0x7e968c: r16 = <Object?, Object?>
    //     0x7e968c: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x7e9690: stp             x0, x16, [SP, #8]
    // 0x7e9694: r16 = "/super-admin"
    //     0x7e9694: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cc0] "/super-admin"
    //     0x7e9698: ldr             x16, [x16, #0xcc0]
    // 0x7e969c: str             x16, [SP]
    // 0x7e96a0: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7e96a0: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7e96a4: r0 = pushReplacementNamed()
    //     0x7e96a4: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x7e96a8: r0 = Null
    //     0x7e96a8: mov             x0, NULL
    // 0x7e96ac: r0 = ReturnAsyncNotFuture()
    //     0x7e96ac: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e96b0: ldur            x1, [fp, #-0x10]
    // 0x7e96b4: ldur            x2, [fp, #-0x18]
    // 0x7e96b8: r3 = true
    //     0x7e96b8: add             x3, NULL, #0x20  ; true
    // 0x7e96bc: LoadField: r0 = r2->field_f
    //     0x7e96bc: ldur            w0, [x2, #0xf]
    // 0x7e96c0: DecompressPointer r0
    //     0x7e96c0: add             x0, x0, HEAP, lsl #32
    // 0x7e96c4: LoadField: r4 = r0->field_1f
    //     0x7e96c4: ldur            w4, [x0, #0x1f]
    // 0x7e96c8: DecompressPointer r4
    //     0x7e96c8: add             x4, x4, HEAP, lsl #32
    // 0x7e96cc: r16 = true
    //     0x7e96cc: add             x16, NULL, #0x20  ; true
    // 0x7e96d0: stp             x16, x4, [SP]
    // 0x7e96d4: mov             x0, x4
    // 0x7e96d8: ClosureCall
    //     0x7e96d8: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7e96dc: ldur            x2, [x0, #0x1f]
    //     0x7e96e0: blr             x2
    // 0x7e96e4: ldur            x0, [fp, #-0x10]
    // 0x7e96e8: LoadField: r1 = r0->field_13
    //     0x7e96e8: ldur            w1, [x0, #0x13]
    // 0x7e96ec: DecompressPointer r1
    //     0x7e96ec: add             x1, x1, HEAP, lsl #32
    // 0x7e96f0: ldur            x4, [fp, #-0x18]
    // 0x7e96f4: LoadField: r2 = r4->field_f
    //     0x7e96f4: ldur            w2, [x4, #0xf]
    // 0x7e96f8: DecompressPointer r2
    //     0x7e96f8: add             x2, x2, HEAP, lsl #32
    // 0x7e96fc: LoadField: r3 = r2->field_f
    //     0x7e96fc: ldur            w3, [x2, #0xf]
    // 0x7e9700: DecompressPointer r3
    //     0x7e9700: add             x3, x3, HEAP, lsl #32
    // 0x7e9704: LoadField: r5 = r2->field_13
    //     0x7e9704: ldur            w5, [x2, #0x13]
    // 0x7e9708: DecompressPointer r5
    //     0x7e9708: add             x5, x5, HEAP, lsl #32
    // 0x7e970c: ArrayLoad: r6 = r2[0]  ; List_4
    //     0x7e970c: ldur            w6, [x2, #0x17]
    // 0x7e9710: DecompressPointer r6
    //     0x7e9710: add             x6, x6, HEAP, lsl #32
    // 0x7e9714: mov             x2, x3
    // 0x7e9718: mov             x3, x5
    // 0x7e971c: mov             x5, x6
    // 0x7e9720: r0 = handleLogin()
    //     0x7e9720: bl              #0x7e988c  ; [package:umrem_demo/features/auth/providers/login_provider.dart] LoginProvider::handleLogin
    // 0x7e9724: mov             x1, x0
    // 0x7e9728: stur            x1, [fp, #-0x20]
    // 0x7e972c: r0 = Await()
    //     0x7e972c: bl              #0x3dd188  ; AwaitStub
    // 0x7e9730: ldur            x0, [fp, #-0x18]
    // 0x7e9734: LoadField: r1 = r0->field_f
    //     0x7e9734: ldur            w1, [x0, #0xf]
    // 0x7e9738: DecompressPointer r1
    //     0x7e9738: add             x1, x1, HEAP, lsl #32
    // 0x7e973c: LoadField: r0 = r1->field_1f
    //     0x7e973c: ldur            w0, [x1, #0x1f]
    // 0x7e9740: DecompressPointer r0
    //     0x7e9740: add             x0, x0, HEAP, lsl #32
    // 0x7e9744: r16 = false
    //     0x7e9744: add             x16, NULL, #0x30  ; false
    // 0x7e9748: stp             x16, x0, [SP]
    // 0x7e974c: ClosureCall
    //     0x7e974c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7e9750: ldur            x2, [x0, #0x1f]
    //     0x7e9754: blr             x2
    // 0x7e9758: r0 = LoadStaticField(0xfe4)
    //     0x7e9758: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e975c: ldr             x0, [x0, #0x1fc8]
    // 0x7e9760: cmp             w0, NULL
    // 0x7e9764: b.ne            #0x7e9770
    // 0x7e9768: r0 = Null
    //     0x7e9768: mov             x0, NULL
    // 0x7e976c: b               #0x7e977c
    // 0x7e9770: LoadField: r1 = r0->field_f
    //     0x7e9770: ldur            w1, [x0, #0xf]
    // 0x7e9774: DecompressPointer r1
    //     0x7e9774: add             x1, x1, HEAP, lsl #32
    // 0x7e9778: mov             x0, x1
    // 0x7e977c: r1 = LoadClassIdInstr(r0)
    //     0x7e977c: ldur            x1, [x0, #-1]
    //     0x7e9780: ubfx            x1, x1, #0xc, #0x14
    // 0x7e9784: r16 = "misafir"
    //     0x7e9784: add             x16, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x7e9788: ldr             x16, [x16, #0x588]
    // 0x7e978c: stp             x16, x0, [SP]
    // 0x7e9790: mov             x0, x1
    // 0x7e9794: mov             lr, x0
    // 0x7e9798: ldr             lr, [x21, lr, lsl #3]
    // 0x7e979c: blr             lr
    // 0x7e97a0: tbnz            w0, #4, #0x7e9804
    // 0x7e97a4: ldur            x0, [fp, #-0x10]
    // 0x7e97a8: r0 = getInstance()
    //     0x7e97a8: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x7e97ac: mov             x1, x0
    // 0x7e97b0: stur            x1, [fp, #-0x18]
    // 0x7e97b4: r0 = Await()
    //     0x7e97b4: bl              #0x3dd188  ; AwaitStub
    // 0x7e97b8: mov             x1, x0
    // 0x7e97bc: r2 = "show_download_dialog_on_login"
    //     0x7e97bc: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a290] "show_download_dialog_on_login"
    //     0x7e97c0: ldr             x2, [x2, #0x290]
    // 0x7e97c4: r3 = true
    //     0x7e97c4: add             x3, NULL, #0x20  ; true
    // 0x7e97c8: r0 = setBool()
    //     0x7e97c8: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x7e97cc: mov             x1, x0
    // 0x7e97d0: stur            x1, [fp, #-0x18]
    // 0x7e97d4: r0 = Await()
    //     0x7e97d4: bl              #0x3dd188  ; AwaitStub
    // 0x7e97d8: ldur            x1, [fp, #-0x10]
    // 0x7e97dc: LoadField: r0 = r1->field_f
    //     0x7e97dc: ldur            w0, [x1, #0xf]
    // 0x7e97e0: DecompressPointer r0
    //     0x7e97e0: add             x0, x0, HEAP, lsl #32
    // 0x7e97e4: r16 = <Object?, Object?>
    //     0x7e97e4: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x7e97e8: stp             x0, x16, [SP, #8]
    // 0x7e97ec: r16 = "/main"
    //     0x7e97ec: add             x16, PP, #0x11, lsl #12  ; [pp+0x11368] "/main"
    //     0x7e97f0: ldr             x16, [x16, #0x368]
    // 0x7e97f4: str             x16, [SP]
    // 0x7e97f8: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7e97f8: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7e97fc: r0 = pushReplacementNamed()
    //     0x7e97fc: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x7e9800: b               #0x7e987c
    // 0x7e9804: ldur            x1, [fp, #-0x10]
    // 0x7e9808: r0 = LoadStaticField(0xfe4)
    //     0x7e9808: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e980c: ldr             x0, [x0, #0x1fc8]
    // 0x7e9810: cmp             w0, NULL
    // 0x7e9814: b.ne            #0x7e9820
    // 0x7e9818: r0 = Null
    //     0x7e9818: mov             x0, NULL
    // 0x7e981c: b               #0x7e982c
    // 0x7e9820: LoadField: r2 = r0->field_f
    //     0x7e9820: ldur            w2, [x0, #0xf]
    // 0x7e9824: DecompressPointer r2
    //     0x7e9824: add             x2, x2, HEAP, lsl #32
    // 0x7e9828: mov             x0, x2
    // 0x7e982c: r2 = LoadClassIdInstr(r0)
    //     0x7e982c: ldur            x2, [x0, #-1]
    //     0x7e9830: ubfx            x2, x2, #0xc, #0x14
    // 0x7e9834: r16 = "yonetici"
    //     0x7e9834: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x7e9838: ldr             x16, [x16, #0x798]
    // 0x7e983c: stp             x16, x0, [SP]
    // 0x7e9840: mov             x0, x2
    // 0x7e9844: mov             lr, x0
    // 0x7e9848: ldr             lr, [x21, lr, lsl #3]
    // 0x7e984c: blr             lr
    // 0x7e9850: tbnz            w0, #4, #0x7e987c
    // 0x7e9854: ldur            x0, [fp, #-0x10]
    // 0x7e9858: LoadField: r1 = r0->field_f
    //     0x7e9858: ldur            w1, [x0, #0xf]
    // 0x7e985c: DecompressPointer r1
    //     0x7e985c: add             x1, x1, HEAP, lsl #32
    // 0x7e9860: r16 = <Object?, Object?>
    //     0x7e9860: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x7e9864: stp             x1, x16, [SP, #8]
    // 0x7e9868: r16 = "/admin"
    //     0x7e9868: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c90] "/admin"
    //     0x7e986c: ldr             x16, [x16, #0xc90]
    // 0x7e9870: str             x16, [SP]
    // 0x7e9874: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7e9874: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7e9878: r0 = pushReplacementNamed()
    //     0x7e9878: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x7e987c: r0 = Null
    //     0x7e987c: mov             x0, NULL
    // 0x7e9880: r0 = ReturnAsyncNotFuture()
    //     0x7e9880: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9884: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9884: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9888: b               #0x7e960c
  }
}

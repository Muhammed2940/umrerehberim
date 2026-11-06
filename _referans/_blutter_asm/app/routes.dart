// lib: , url: package:umrem_demo/app/routes.dart

// class id: 1049483, size: 0x8
class :: {
}

// class id: 221, size: 0x8, field offset: 0x8
abstract class AppRoutes extends Object {

  [closure] static RehberIletisimPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7323f8, size: 0xc
    // 0x7323f8: r0 = Instance_RehberIletisimPage
    //     0x7323f8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11dc8] Obj!RehberIletisimPage@a20251
    //     0x7323fc: ldr             x0, [x0, #0xdc8]
    // 0x732400: ret
    //     0x732400: ret             
  }
  get _ routes(/* No info */) {
    // ** addr: 0x732404, size: 0x828
    // 0x732404: EnterFrame
    //     0x732404: stp             fp, lr, [SP, #-0x10]!
    //     0x732408: mov             fp, SP
    // 0x73240c: AllocStack(0x18)
    //     0x73240c: sub             SP, SP, #0x18
    // 0x732410: CheckStackOverflow
    //     0x732410: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732414: cmp             SP, x16
    //     0x732418: b.ls            #0x732c24
    // 0x73241c: r1 = Null
    //     0x73241c: mov             x1, NULL
    // 0x732420: r2 = 112
    //     0x732420: mov             x2, #0x70
    // 0x732424: r0 = AllocateArray()
    //     0x732424: bl              #0x9280a0  ; AllocateArrayStub
    // 0x732428: stur            x0, [fp, #-8]
    // 0x73242c: r16 = "/"
    //     0x73242c: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x732430: StoreField: r0->field_f = r16
    //     0x732430: stur            w16, [x0, #0xf]
    // 0x732434: r1 = Function '<anonymous closure>': static.
    //     0x732434: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c10] AnonymousClosure: static (0x732f04), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732438: ldr             x1, [x1, #0xc10]
    // 0x73243c: r2 = Null
    //     0x73243c: mov             x2, NULL
    // 0x732440: r0 = AllocateClosure()
    //     0x732440: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732444: ldur            x1, [fp, #-8]
    // 0x732448: ArrayStore: r1[1] = r0  ; List_4
    //     0x732448: add             x25, x1, #0x13
    //     0x73244c: str             w0, [x25]
    //     0x732450: tbz             w0, #0, #0x73246c
    //     0x732454: ldurb           w16, [x1, #-1]
    //     0x732458: ldurb           w17, [x0, #-1]
    //     0x73245c: and             x16, x17, x16, lsr #2
    //     0x732460: tst             x16, HEAP, lsr #32
    //     0x732464: b.eq            #0x73246c
    //     0x732468: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73246c: ldur            x0, [fp, #-8]
    // 0x732470: r16 = "/splash"
    //     0x732470: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c18] "/splash"
    //     0x732474: ldr             x16, [x16, #0xc18]
    // 0x732478: ArrayStore: r0[0] = r16  ; List_4
    //     0x732478: stur            w16, [x0, #0x17]
    // 0x73247c: r1 = Function '<anonymous closure>': static.
    //     0x73247c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c20] AnonymousClosure: static (0x732ef8), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732480: ldr             x1, [x1, #0xc20]
    // 0x732484: r2 = Null
    //     0x732484: mov             x2, NULL
    // 0x732488: r0 = AllocateClosure()
    //     0x732488: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73248c: ldur            x1, [fp, #-8]
    // 0x732490: ArrayStore: r1[3] = r0  ; List_4
    //     0x732490: add             x25, x1, #0x1b
    //     0x732494: str             w0, [x25]
    //     0x732498: tbz             w0, #0, #0x7324b4
    //     0x73249c: ldurb           w16, [x1, #-1]
    //     0x7324a0: ldurb           w17, [x0, #-1]
    //     0x7324a4: and             x16, x17, x16, lsr #2
    //     0x7324a8: tst             x16, HEAP, lsr #32
    //     0x7324ac: b.eq            #0x7324b4
    //     0x7324b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7324b4: ldur            x0, [fp, #-8]
    // 0x7324b8: r16 = "/login"
    //     0x7324b8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c28] "/login"
    //     0x7324bc: ldr             x16, [x16, #0xc28]
    // 0x7324c0: StoreField: r0->field_1f = r16
    //     0x7324c0: stur            w16, [x0, #0x1f]
    // 0x7324c4: r1 = Function '<anonymous closure>': static.
    //     0x7324c4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c30] AnonymousClosure: static (0x732eec), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7324c8: ldr             x1, [x1, #0xc30]
    // 0x7324cc: r2 = Null
    //     0x7324cc: mov             x2, NULL
    // 0x7324d0: r0 = AllocateClosure()
    //     0x7324d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7324d4: ldur            x1, [fp, #-8]
    // 0x7324d8: ArrayStore: r1[5] = r0  ; List_4
    //     0x7324d8: add             x25, x1, #0x23
    //     0x7324dc: str             w0, [x25]
    //     0x7324e0: tbz             w0, #0, #0x7324fc
    //     0x7324e4: ldurb           w16, [x1, #-1]
    //     0x7324e8: ldurb           w17, [x0, #-1]
    //     0x7324ec: and             x16, x17, x16, lsr #2
    //     0x7324f0: tst             x16, HEAP, lsr #32
    //     0x7324f4: b.eq            #0x7324fc
    //     0x7324f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7324fc: ldur            x0, [fp, #-8]
    // 0x732500: r16 = "/main"
    //     0x732500: add             x16, PP, #0x11, lsl #12  ; [pp+0x11368] "/main"
    //     0x732504: ldr             x16, [x16, #0x368]
    // 0x732508: StoreField: r0->field_27 = r16
    //     0x732508: stur            w16, [x0, #0x27]
    // 0x73250c: r1 = Function '<anonymous closure>': static.
    //     0x73250c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c38] AnonymousClosure: static (0x732ee0), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732510: ldr             x1, [x1, #0xc38]
    // 0x732514: r2 = Null
    //     0x732514: mov             x2, NULL
    // 0x732518: r0 = AllocateClosure()
    //     0x732518: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73251c: ldur            x1, [fp, #-8]
    // 0x732520: ArrayStore: r1[7] = r0  ; List_4
    //     0x732520: add             x25, x1, #0x2b
    //     0x732524: str             w0, [x25]
    //     0x732528: tbz             w0, #0, #0x732544
    //     0x73252c: ldurb           w16, [x1, #-1]
    //     0x732530: ldurb           w17, [x0, #-1]
    //     0x732534: and             x16, x17, x16, lsr #2
    //     0x732538: tst             x16, HEAP, lsr #32
    //     0x73253c: b.eq            #0x732544
    //     0x732540: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732544: ldur            x0, [fp, #-8]
    // 0x732548: r16 = "/home"
    //     0x732548: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c40] "/home"
    //     0x73254c: ldr             x16, [x16, #0xc40]
    // 0x732550: StoreField: r0->field_2f = r16
    //     0x732550: stur            w16, [x0, #0x2f]
    // 0x732554: r1 = Function '<anonymous closure>': static.
    //     0x732554: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c48] AnonymousClosure: static (0x732ed4), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732558: ldr             x1, [x1, #0xc48]
    // 0x73255c: r2 = Null
    //     0x73255c: mov             x2, NULL
    // 0x732560: r0 = AllocateClosure()
    //     0x732560: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732564: ldur            x1, [fp, #-8]
    // 0x732568: ArrayStore: r1[9] = r0  ; List_4
    //     0x732568: add             x25, x1, #0x33
    //     0x73256c: str             w0, [x25]
    //     0x732570: tbz             w0, #0, #0x73258c
    //     0x732574: ldurb           w16, [x1, #-1]
    //     0x732578: ldurb           w17, [x0, #-1]
    //     0x73257c: and             x16, x17, x16, lsr #2
    //     0x732580: tst             x16, HEAP, lsr #32
    //     0x732584: b.eq            #0x73258c
    //     0x732588: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73258c: ldur            x0, [fp, #-8]
    // 0x732590: r16 = "/profil"
    //     0x732590: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c50] "/profil"
    //     0x732594: ldr             x16, [x16, #0xc50]
    // 0x732598: StoreField: r0->field_37 = r16
    //     0x732598: stur            w16, [x0, #0x37]
    // 0x73259c: r1 = Function '<anonymous closure>': static.
    //     0x73259c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c58] AnonymousClosure: static (0x732ec8), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7325a0: ldr             x1, [x1, #0xc58]
    // 0x7325a4: r2 = Null
    //     0x7325a4: mov             x2, NULL
    // 0x7325a8: r0 = AllocateClosure()
    //     0x7325a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7325ac: ldur            x1, [fp, #-8]
    // 0x7325b0: ArrayStore: r1[11] = r0  ; List_4
    //     0x7325b0: add             x25, x1, #0x3b
    //     0x7325b4: str             w0, [x25]
    //     0x7325b8: tbz             w0, #0, #0x7325d4
    //     0x7325bc: ldurb           w16, [x1, #-1]
    //     0x7325c0: ldurb           w17, [x0, #-1]
    //     0x7325c4: and             x16, x17, x16, lsr #2
    //     0x7325c8: tst             x16, HEAP, lsr #32
    //     0x7325cc: b.eq            #0x7325d4
    //     0x7325d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7325d4: ldur            x0, [fp, #-8]
    // 0x7325d8: r16 = "/info"
    //     0x7325d8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c60] "/info"
    //     0x7325dc: ldr             x16, [x16, #0xc60]
    // 0x7325e0: StoreField: r0->field_3f = r16
    //     0x7325e0: stur            w16, [x0, #0x3f]
    // 0x7325e4: r1 = Function '<anonymous closure>': static.
    //     0x7325e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c68] AnonymousClosure: static (0x732ebc), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7325e8: ldr             x1, [x1, #0xc68]
    // 0x7325ec: r2 = Null
    //     0x7325ec: mov             x2, NULL
    // 0x7325f0: r0 = AllocateClosure()
    //     0x7325f0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7325f4: ldur            x1, [fp, #-8]
    // 0x7325f8: ArrayStore: r1[13] = r0  ; List_4
    //     0x7325f8: add             x25, x1, #0x43
    //     0x7325fc: str             w0, [x25]
    //     0x732600: tbz             w0, #0, #0x73261c
    //     0x732604: ldurb           w16, [x1, #-1]
    //     0x732608: ldurb           w17, [x0, #-1]
    //     0x73260c: and             x16, x17, x16, lsr #2
    //     0x732610: tst             x16, HEAP, lsr #32
    //     0x732614: b.eq            #0x73261c
    //     0x732618: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73261c: ldur            x0, [fp, #-8]
    // 0x732620: r16 = "/takvim"
    //     0x732620: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c70] "/takvim"
    //     0x732624: ldr             x16, [x16, #0xc70]
    // 0x732628: StoreField: r0->field_47 = r16
    //     0x732628: stur            w16, [x0, #0x47]
    // 0x73262c: r1 = Function '<anonymous closure>': static.
    //     0x73262c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c78] AnonymousClosure: static (0x732eb0), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732630: ldr             x1, [x1, #0xc78]
    // 0x732634: r2 = Null
    //     0x732634: mov             x2, NULL
    // 0x732638: r0 = AllocateClosure()
    //     0x732638: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73263c: ldur            x1, [fp, #-8]
    // 0x732640: ArrayStore: r1[15] = r0  ; List_4
    //     0x732640: add             x25, x1, #0x4b
    //     0x732644: str             w0, [x25]
    //     0x732648: tbz             w0, #0, #0x732664
    //     0x73264c: ldurb           w16, [x1, #-1]
    //     0x732650: ldurb           w17, [x0, #-1]
    //     0x732654: and             x16, x17, x16, lsr #2
    //     0x732658: tst             x16, HEAP, lsr #32
    //     0x73265c: b.eq            #0x732664
    //     0x732660: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732664: ldur            x0, [fp, #-8]
    // 0x732668: r16 = "/gezilecek-yerler"
    //     0x732668: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c80] "/gezilecek-yerler"
    //     0x73266c: ldr             x16, [x16, #0xc80]
    // 0x732670: StoreField: r0->field_4f = r16
    //     0x732670: stur            w16, [x0, #0x4f]
    // 0x732674: r1 = Function '<anonymous closure>': static.
    //     0x732674: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c88] AnonymousClosure: static (0x732c50), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732678: ldr             x1, [x1, #0xc88]
    // 0x73267c: r2 = Null
    //     0x73267c: mov             x2, NULL
    // 0x732680: r0 = AllocateClosure()
    //     0x732680: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732684: ldur            x1, [fp, #-8]
    // 0x732688: ArrayStore: r1[17] = r0  ; List_4
    //     0x732688: add             x25, x1, #0x53
    //     0x73268c: str             w0, [x25]
    //     0x732690: tbz             w0, #0, #0x7326ac
    //     0x732694: ldurb           w16, [x1, #-1]
    //     0x732698: ldurb           w17, [x0, #-1]
    //     0x73269c: and             x16, x17, x16, lsr #2
    //     0x7326a0: tst             x16, HEAP, lsr #32
    //     0x7326a4: b.eq            #0x7326ac
    //     0x7326a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7326ac: ldur            x0, [fp, #-8]
    // 0x7326b0: r16 = "/admin"
    //     0x7326b0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c90] "/admin"
    //     0x7326b4: ldr             x16, [x16, #0xc90]
    // 0x7326b8: StoreField: r0->field_57 = r16
    //     0x7326b8: stur            w16, [x0, #0x57]
    // 0x7326bc: r1 = Function '<anonymous closure>': static.
    //     0x7326bc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11c98] AnonymousClosure: static (0x732ea4), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7326c0: ldr             x1, [x1, #0xc98]
    // 0x7326c4: r2 = Null
    //     0x7326c4: mov             x2, NULL
    // 0x7326c8: r0 = AllocateClosure()
    //     0x7326c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7326cc: ldur            x1, [fp, #-8]
    // 0x7326d0: ArrayStore: r1[19] = r0  ; List_4
    //     0x7326d0: add             x25, x1, #0x5b
    //     0x7326d4: str             w0, [x25]
    //     0x7326d8: tbz             w0, #0, #0x7326f4
    //     0x7326dc: ldurb           w16, [x1, #-1]
    //     0x7326e0: ldurb           w17, [x0, #-1]
    //     0x7326e4: and             x16, x17, x16, lsr #2
    //     0x7326e8: tst             x16, HEAP, lsr #32
    //     0x7326ec: b.eq            #0x7326f4
    //     0x7326f0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7326f4: ldur            x0, [fp, #-8]
    // 0x7326f8: r16 = "/admin/analytics"
    //     0x7326f8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ca0] "/admin/analytics"
    //     0x7326fc: ldr             x16, [x16, #0xca0]
    // 0x732700: StoreField: r0->field_5f = r16
    //     0x732700: stur            w16, [x0, #0x5f]
    // 0x732704: r1 = Function '<anonymous closure>': static.
    //     0x732704: add             x1, PP, #0x11, lsl #12  ; [pp+0x11ca8] AnonymousClosure: static (0x732e98), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732708: ldr             x1, [x1, #0xca8]
    // 0x73270c: r2 = Null
    //     0x73270c: mov             x2, NULL
    // 0x732710: r0 = AllocateClosure()
    //     0x732710: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732714: ldur            x1, [fp, #-8]
    // 0x732718: ArrayStore: r1[21] = r0  ; List_4
    //     0x732718: add             x25, x1, #0x63
    //     0x73271c: str             w0, [x25]
    //     0x732720: tbz             w0, #0, #0x73273c
    //     0x732724: ldurb           w16, [x1, #-1]
    //     0x732728: ldurb           w17, [x0, #-1]
    //     0x73272c: and             x16, x17, x16, lsr #2
    //     0x732730: tst             x16, HEAP, lsr #32
    //     0x732734: b.eq            #0x73273c
    //     0x732738: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73273c: ldur            x0, [fp, #-8]
    // 0x732740: r16 = "/admin/agencies"
    //     0x732740: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cb0] "/admin/agencies"
    //     0x732744: ldr             x16, [x16, #0xcb0]
    // 0x732748: StoreField: r0->field_67 = r16
    //     0x732748: stur            w16, [x0, #0x67]
    // 0x73274c: r1 = Function '<anonymous closure>': static.
    //     0x73274c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11cb8] AnonymousClosure: static (0x732e8c), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732750: ldr             x1, [x1, #0xcb8]
    // 0x732754: r2 = Null
    //     0x732754: mov             x2, NULL
    // 0x732758: r0 = AllocateClosure()
    //     0x732758: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73275c: ldur            x1, [fp, #-8]
    // 0x732760: ArrayStore: r1[23] = r0  ; List_4
    //     0x732760: add             x25, x1, #0x6b
    //     0x732764: str             w0, [x25]
    //     0x732768: tbz             w0, #0, #0x732784
    //     0x73276c: ldurb           w16, [x1, #-1]
    //     0x732770: ldurb           w17, [x0, #-1]
    //     0x732774: and             x16, x17, x16, lsr #2
    //     0x732778: tst             x16, HEAP, lsr #32
    //     0x73277c: b.eq            #0x732784
    //     0x732780: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732784: ldur            x0, [fp, #-8]
    // 0x732788: r16 = "/super-admin"
    //     0x732788: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cc0] "/super-admin"
    //     0x73278c: ldr             x16, [x16, #0xcc0]
    // 0x732790: StoreField: r0->field_6f = r16
    //     0x732790: stur            w16, [x0, #0x6f]
    // 0x732794: r1 = Function '<anonymous closure>': static.
    //     0x732794: add             x1, PP, #0x11, lsl #12  ; [pp+0x11cc8] AnonymousClosure: static (0x732e80), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732798: ldr             x1, [x1, #0xcc8]
    // 0x73279c: r2 = Null
    //     0x73279c: mov             x2, NULL
    // 0x7327a0: r0 = AllocateClosure()
    //     0x7327a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7327a4: ldur            x1, [fp, #-8]
    // 0x7327a8: ArrayStore: r1[25] = r0  ; List_4
    //     0x7327a8: add             x25, x1, #0x73
    //     0x7327ac: str             w0, [x25]
    //     0x7327b0: tbz             w0, #0, #0x7327cc
    //     0x7327b4: ldurb           w16, [x1, #-1]
    //     0x7327b8: ldurb           w17, [x0, #-1]
    //     0x7327bc: and             x16, x17, x16, lsr #2
    //     0x7327c0: tst             x16, HEAP, lsr #32
    //     0x7327c4: b.eq            #0x7327cc
    //     0x7327c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7327cc: ldur            x0, [fp, #-8]
    // 0x7327d0: r16 = "/super-admin/agency"
    //     0x7327d0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cd0] "/super-admin/agency"
    //     0x7327d4: ldr             x16, [x16, #0xcd0]
    // 0x7327d8: StoreField: r0->field_77 = r16
    //     0x7327d8: stur            w16, [x0, #0x77]
    // 0x7327dc: r1 = Function '<anonymous closure>': static.
    //     0x7327dc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11cd8] AnonymousClosure: static (0x732e74), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7327e0: ldr             x1, [x1, #0xcd8]
    // 0x7327e4: r2 = Null
    //     0x7327e4: mov             x2, NULL
    // 0x7327e8: r0 = AllocateClosure()
    //     0x7327e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7327ec: ldur            x1, [fp, #-8]
    // 0x7327f0: ArrayStore: r1[27] = r0  ; List_4
    //     0x7327f0: add             x25, x1, #0x7b
    //     0x7327f4: str             w0, [x25]
    //     0x7327f8: tbz             w0, #0, #0x732814
    //     0x7327fc: ldurb           w16, [x1, #-1]
    //     0x732800: ldurb           w17, [x0, #-1]
    //     0x732804: and             x16, x17, x16, lsr #2
    //     0x732808: tst             x16, HEAP, lsr #32
    //     0x73280c: b.eq            #0x732814
    //     0x732810: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732814: ldur            x0, [fp, #-8]
    // 0x732818: r16 = "/admin/events"
    //     0x732818: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ce0] "/admin/events"
    //     0x73281c: ldr             x16, [x16, #0xce0]
    // 0x732820: StoreField: r0->field_7f = r16
    //     0x732820: stur            w16, [x0, #0x7f]
    // 0x732824: r1 = Function '<anonymous closure>': static.
    //     0x732824: add             x1, PP, #0x11, lsl #12  ; [pp+0x11ce8] AnonymousClosure: static (0x732e68), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732828: ldr             x1, [x1, #0xce8]
    // 0x73282c: r2 = Null
    //     0x73282c: mov             x2, NULL
    // 0x732830: r0 = AllocateClosure()
    //     0x732830: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732834: ldur            x1, [fp, #-8]
    // 0x732838: ArrayStore: r1[29] = r0  ; List_4
    //     0x732838: add             x25, x1, #0x83
    //     0x73283c: str             w0, [x25]
    //     0x732840: tbz             w0, #0, #0x73285c
    //     0x732844: ldurb           w16, [x1, #-1]
    //     0x732848: ldurb           w17, [x0, #-1]
    //     0x73284c: and             x16, x17, x16, lsr #2
    //     0x732850: tst             x16, HEAP, lsr #32
    //     0x732854: b.eq            #0x73285c
    //     0x732858: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73285c: ldur            x0, [fp, #-8]
    // 0x732860: r16 = "/admin/users"
    //     0x732860: add             x16, PP, #0x11, lsl #12  ; [pp+0x11cf0] "/admin/users"
    //     0x732864: ldr             x16, [x16, #0xcf0]
    // 0x732868: StoreField: r0->field_87 = r16
    //     0x732868: stur            w16, [x0, #0x87]
    // 0x73286c: r1 = Function '<anonymous closure>': static.
    //     0x73286c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11cf8] AnonymousClosure: static (0x732e5c), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732870: ldr             x1, [x1, #0xcf8]
    // 0x732874: r2 = Null
    //     0x732874: mov             x2, NULL
    // 0x732878: r0 = AllocateClosure()
    //     0x732878: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73287c: ldur            x1, [fp, #-8]
    // 0x732880: ArrayStore: r1[31] = r0  ; List_4
    //     0x732880: add             x25, x1, #0x8b
    //     0x732884: str             w0, [x25]
    //     0x732888: tbz             w0, #0, #0x7328a4
    //     0x73288c: ldurb           w16, [x1, #-1]
    //     0x732890: ldurb           w17, [x0, #-1]
    //     0x732894: and             x16, x17, x16, lsr #2
    //     0x732898: tst             x16, HEAP, lsr #32
    //     0x73289c: b.eq            #0x7328a4
    //     0x7328a0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7328a4: ldur            x0, [fp, #-8]
    // 0x7328a8: r16 = "/admin/users/create"
    //     0x7328a8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d00] "/admin/users/create"
    //     0x7328ac: ldr             x16, [x16, #0xd00]
    // 0x7328b0: StoreField: r0->field_8f = r16
    //     0x7328b0: stur            w16, [x0, #0x8f]
    // 0x7328b4: r1 = Function '<anonymous closure>': static.
    //     0x7328b4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d08] AnonymousClosure: static (0x732e50), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7328b8: ldr             x1, [x1, #0xd08]
    // 0x7328bc: r2 = Null
    //     0x7328bc: mov             x2, NULL
    // 0x7328c0: r0 = AllocateClosure()
    //     0x7328c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7328c4: ldur            x1, [fp, #-8]
    // 0x7328c8: ArrayStore: r1[33] = r0  ; List_4
    //     0x7328c8: add             x25, x1, #0x93
    //     0x7328cc: str             w0, [x25]
    //     0x7328d0: tbz             w0, #0, #0x7328ec
    //     0x7328d4: ldurb           w16, [x1, #-1]
    //     0x7328d8: ldurb           w17, [x0, #-1]
    //     0x7328dc: and             x16, x17, x16, lsr #2
    //     0x7328e0: tst             x16, HEAP, lsr #32
    //     0x7328e4: b.eq            #0x7328ec
    //     0x7328e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7328ec: ldur            x0, [fp, #-8]
    // 0x7328f0: r16 = "/admin/users/detail"
    //     0x7328f0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d10] "/admin/users/detail"
    //     0x7328f4: ldr             x16, [x16, #0xd10]
    // 0x7328f8: StoreField: r0->field_97 = r16
    //     0x7328f8: stur            w16, [x0, #0x97]
    // 0x7328fc: r1 = Function '<anonymous closure>': static.
    //     0x7328fc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d18] AnonymousClosure: static (0x732e44), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732900: ldr             x1, [x1, #0xd18]
    // 0x732904: r2 = Null
    //     0x732904: mov             x2, NULL
    // 0x732908: r0 = AllocateClosure()
    //     0x732908: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73290c: ldur            x1, [fp, #-8]
    // 0x732910: ArrayStore: r1[35] = r0  ; List_4
    //     0x732910: add             x25, x1, #0x9b
    //     0x732914: str             w0, [x25]
    //     0x732918: tbz             w0, #0, #0x732934
    //     0x73291c: ldurb           w16, [x1, #-1]
    //     0x732920: ldurb           w17, [x0, #-1]
    //     0x732924: and             x16, x17, x16, lsr #2
    //     0x732928: tst             x16, HEAP, lsr #32
    //     0x73292c: b.eq            #0x732934
    //     0x732930: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732934: ldur            x0, [fp, #-8]
    // 0x732938: r16 = "/admin/trips"
    //     0x732938: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d20] "/admin/trips"
    //     0x73293c: ldr             x16, [x16, #0xd20]
    // 0x732940: StoreField: r0->field_9f = r16
    //     0x732940: stur            w16, [x0, #0x9f]
    // 0x732944: r1 = Function '<anonymous closure>': static.
    //     0x732944: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d28] AnonymousClosure: static (0x732e38), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732948: ldr             x1, [x1, #0xd28]
    // 0x73294c: r2 = Null
    //     0x73294c: mov             x2, NULL
    // 0x732950: r0 = AllocateClosure()
    //     0x732950: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732954: ldur            x1, [fp, #-8]
    // 0x732958: ArrayStore: r1[37] = r0  ; List_4
    //     0x732958: add             x25, x1, #0xa3
    //     0x73295c: str             w0, [x25]
    //     0x732960: tbz             w0, #0, #0x73297c
    //     0x732964: ldurb           w16, [x1, #-1]
    //     0x732968: ldurb           w17, [x0, #-1]
    //     0x73296c: and             x16, x17, x16, lsr #2
    //     0x732970: tst             x16, HEAP, lsr #32
    //     0x732974: b.eq            #0x73297c
    //     0x732978: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73297c: ldur            x0, [fp, #-8]
    // 0x732980: r16 = "/admin/hotels"
    //     0x732980: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d30] "/admin/hotels"
    //     0x732984: ldr             x16, [x16, #0xd30]
    // 0x732988: StoreField: r0->field_a7 = r16
    //     0x732988: stur            w16, [x0, #0xa7]
    // 0x73298c: r1 = Function '<anonymous closure>': static.
    //     0x73298c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d38] AnonymousClosure: static (0x732e2c), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732990: ldr             x1, [x1, #0xd38]
    // 0x732994: r2 = Null
    //     0x732994: mov             x2, NULL
    // 0x732998: r0 = AllocateClosure()
    //     0x732998: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73299c: ldur            x1, [fp, #-8]
    // 0x7329a0: ArrayStore: r1[39] = r0  ; List_4
    //     0x7329a0: add             x25, x1, #0xab
    //     0x7329a4: str             w0, [x25]
    //     0x7329a8: tbz             w0, #0, #0x7329c4
    //     0x7329ac: ldurb           w16, [x1, #-1]
    //     0x7329b0: ldurb           w17, [x0, #-1]
    //     0x7329b4: and             x16, x17, x16, lsr #2
    //     0x7329b8: tst             x16, HEAP, lsr #32
    //     0x7329bc: b.eq            #0x7329c4
    //     0x7329c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7329c4: ldur            x0, [fp, #-8]
    // 0x7329c8: r16 = "/admin/currency"
    //     0x7329c8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d40] "/admin/currency"
    //     0x7329cc: ldr             x16, [x16, #0xd40]
    // 0x7329d0: StoreField: r0->field_af = r16
    //     0x7329d0: stur            w16, [x0, #0xaf]
    // 0x7329d4: r1 = Function '<anonymous closure>': static.
    //     0x7329d4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d48] AnonymousClosure: static (0x732e20), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x7329d8: ldr             x1, [x1, #0xd48]
    // 0x7329dc: r2 = Null
    //     0x7329dc: mov             x2, NULL
    // 0x7329e0: r0 = AllocateClosure()
    //     0x7329e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7329e4: ldur            x1, [fp, #-8]
    // 0x7329e8: ArrayStore: r1[41] = r0  ; List_4
    //     0x7329e8: add             x25, x1, #0xb3
    //     0x7329ec: str             w0, [x25]
    //     0x7329f0: tbz             w0, #0, #0x732a0c
    //     0x7329f4: ldurb           w16, [x1, #-1]
    //     0x7329f8: ldurb           w17, [x0, #-1]
    //     0x7329fc: and             x16, x17, x16, lsr #2
    //     0x732a00: tst             x16, HEAP, lsr #32
    //     0x732a04: b.eq            #0x732a0c
    //     0x732a08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732a0c: ldur            x0, [fp, #-8]
    // 0x732a10: r16 = "/admin/notifications"
    //     0x732a10: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d50] "/admin/notifications"
    //     0x732a14: ldr             x16, [x16, #0xd50]
    // 0x732a18: StoreField: r0->field_b7 = r16
    //     0x732a18: stur            w16, [x0, #0xb7]
    // 0x732a1c: r1 = Function '<anonymous closure>': static.
    //     0x732a1c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d58] AnonymousClosure: static (0x732e14), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732a20: ldr             x1, [x1, #0xd58]
    // 0x732a24: r2 = Null
    //     0x732a24: mov             x2, NULL
    // 0x732a28: r0 = AllocateClosure()
    //     0x732a28: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732a2c: ldur            x1, [fp, #-8]
    // 0x732a30: ArrayStore: r1[43] = r0  ; List_4
    //     0x732a30: add             x25, x1, #0xbb
    //     0x732a34: str             w0, [x25]
    //     0x732a38: tbz             w0, #0, #0x732a54
    //     0x732a3c: ldurb           w16, [x1, #-1]
    //     0x732a40: ldurb           w17, [x0, #-1]
    //     0x732a44: and             x16, x17, x16, lsr #2
    //     0x732a48: tst             x16, HEAP, lsr #32
    //     0x732a4c: b.eq            #0x732a54
    //     0x732a50: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732a54: ldur            x0, [fp, #-8]
    // 0x732a58: r16 = "/admin/settings"
    //     0x732a58: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d60] "/admin/settings"
    //     0x732a5c: ldr             x16, [x16, #0xd60]
    // 0x732a60: StoreField: r0->field_bf = r16
    //     0x732a60: stur            w16, [x0, #0xbf]
    // 0x732a64: r1 = Function '<anonymous closure>': static.
    //     0x732a64: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d68] AnonymousClosure: static (0x732e08), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732a68: ldr             x1, [x1, #0xd68]
    // 0x732a6c: r2 = Null
    //     0x732a6c: mov             x2, NULL
    // 0x732a70: r0 = AllocateClosure()
    //     0x732a70: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732a74: ldur            x1, [fp, #-8]
    // 0x732a78: ArrayStore: r1[45] = r0  ; List_4
    //     0x732a78: add             x25, x1, #0xc3
    //     0x732a7c: str             w0, [x25]
    //     0x732a80: tbz             w0, #0, #0x732a9c
    //     0x732a84: ldurb           w16, [x1, #-1]
    //     0x732a88: ldurb           w17, [x0, #-1]
    //     0x732a8c: and             x16, x17, x16, lsr #2
    //     0x732a90: tst             x16, HEAP, lsr #32
    //     0x732a94: b.eq            #0x732a9c
    //     0x732a98: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732a9c: ldur            x0, [fp, #-8]
    // 0x732aa0: r16 = "/general/places"
    //     0x732aa0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d70] "/general/places"
    //     0x732aa4: ldr             x16, [x16, #0xd70]
    // 0x732aa8: StoreField: r0->field_c7 = r16
    //     0x732aa8: stur            w16, [x0, #0xc7]
    // 0x732aac: r1 = Function '<anonymous closure>': static.
    //     0x732aac: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d78] AnonymousClosure: static (0x732c50), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732ab0: ldr             x1, [x1, #0xd78]
    // 0x732ab4: r2 = Null
    //     0x732ab4: mov             x2, NULL
    // 0x732ab8: r0 = AllocateClosure()
    //     0x732ab8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732abc: ldur            x1, [fp, #-8]
    // 0x732ac0: ArrayStore: r1[47] = r0  ; List_4
    //     0x732ac0: add             x25, x1, #0xcb
    //     0x732ac4: str             w0, [x25]
    //     0x732ac8: tbz             w0, #0, #0x732ae4
    //     0x732acc: ldurb           w16, [x1, #-1]
    //     0x732ad0: ldurb           w17, [x0, #-1]
    //     0x732ad4: and             x16, x17, x16, lsr #2
    //     0x732ad8: tst             x16, HEAP, lsr #32
    //     0x732adc: b.eq            #0x732ae4
    //     0x732ae0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732ae4: ldur            x0, [fp, #-8]
    // 0x732ae8: r16 = "/technical-support"
    //     0x732ae8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d80] "/technical-support"
    //     0x732aec: ldr             x16, [x16, #0xd80]
    // 0x732af0: StoreField: r0->field_cf = r16
    //     0x732af0: stur            w16, [x0, #0xcf]
    // 0x732af4: r1 = Function '<anonymous closure>': static.
    //     0x732af4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d88] AnonymousClosure: static (0x732c44), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732af8: ldr             x1, [x1, #0xd88]
    // 0x732afc: r2 = Null
    //     0x732afc: mov             x2, NULL
    // 0x732b00: r0 = AllocateClosure()
    //     0x732b00: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732b04: ldur            x1, [fp, #-8]
    // 0x732b08: ArrayStore: r1[49] = r0  ; List_4
    //     0x732b08: add             x25, x1, #0xd3
    //     0x732b0c: str             w0, [x25]
    //     0x732b10: tbz             w0, #0, #0x732b2c
    //     0x732b14: ldurb           w16, [x1, #-1]
    //     0x732b18: ldurb           w17, [x0, #-1]
    //     0x732b1c: and             x16, x17, x16, lsr #2
    //     0x732b20: tst             x16, HEAP, lsr #32
    //     0x732b24: b.eq            #0x732b2c
    //     0x732b28: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732b2c: ldur            x0, [fp, #-8]
    // 0x732b30: r16 = "/dualar"
    //     0x732b30: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d90] "/dualar"
    //     0x732b34: ldr             x16, [x16, #0xd90]
    // 0x732b38: StoreField: r0->field_d7 = r16
    //     0x732b38: stur            w16, [x0, #0xd7]
    // 0x732b3c: r1 = Function '<anonymous closure>': static.
    //     0x732b3c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11d98] AnonymousClosure: static (0x732c38), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732b40: ldr             x1, [x1, #0xd98]
    // 0x732b44: r2 = Null
    //     0x732b44: mov             x2, NULL
    // 0x732b48: r0 = AllocateClosure()
    //     0x732b48: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732b4c: ldur            x1, [fp, #-8]
    // 0x732b50: ArrayStore: r1[51] = r0  ; List_4
    //     0x732b50: add             x25, x1, #0xdb
    //     0x732b54: str             w0, [x25]
    //     0x732b58: tbz             w0, #0, #0x732b74
    //     0x732b5c: ldurb           w16, [x1, #-1]
    //     0x732b60: ldurb           w17, [x0, #-1]
    //     0x732b64: and             x16, x17, x16, lsr #2
    //     0x732b68: tst             x16, HEAP, lsr #32
    //     0x732b6c: b.eq            #0x732b74
    //     0x732b70: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732b74: ldur            x0, [fp, #-8]
    // 0x732b78: r16 = "/kuran"
    //     0x732b78: add             x16, PP, #0x11, lsl #12  ; [pp+0x11da0] "/kuran"
    //     0x732b7c: ldr             x16, [x16, #0xda0]
    // 0x732b80: StoreField: r0->field_df = r16
    //     0x732b80: stur            w16, [x0, #0xdf]
    // 0x732b84: r1 = Function '<anonymous closure>': static.
    //     0x732b84: add             x1, PP, #0x11, lsl #12  ; [pp+0x11da8] AnonymousClosure: static (0x732c2c), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732b88: ldr             x1, [x1, #0xda8]
    // 0x732b8c: r2 = Null
    //     0x732b8c: mov             x2, NULL
    // 0x732b90: r0 = AllocateClosure()
    //     0x732b90: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732b94: ldur            x1, [fp, #-8]
    // 0x732b98: ArrayStore: r1[53] = r0  ; List_4
    //     0x732b98: add             x25, x1, #0xe3
    //     0x732b9c: str             w0, [x25]
    //     0x732ba0: tbz             w0, #0, #0x732bbc
    //     0x732ba4: ldurb           w16, [x1, #-1]
    //     0x732ba8: ldurb           w17, [x0, #-1]
    //     0x732bac: and             x16, x17, x16, lsr #2
    //     0x732bb0: tst             x16, HEAP, lsr #32
    //     0x732bb4: b.eq            #0x732bbc
    //     0x732bb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732bbc: ldur            x0, [fp, #-8]
    // 0x732bc0: r16 = "/rehber_iletisim"
    //     0x732bc0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11db0] "/rehber_iletisim"
    //     0x732bc4: ldr             x16, [x16, #0xdb0]
    // 0x732bc8: StoreField: r0->field_e7 = r16
    //     0x732bc8: stur            w16, [x0, #0xe7]
    // 0x732bcc: r1 = Function '<anonymous closure>': static.
    //     0x732bcc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11db8] AnonymousClosure: static (0x7323f8), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732bd0: ldr             x1, [x1, #0xdb8]
    // 0x732bd4: r2 = Null
    //     0x732bd4: mov             x2, NULL
    // 0x732bd8: r0 = AllocateClosure()
    //     0x732bd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732bdc: ldur            x1, [fp, #-8]
    // 0x732be0: ArrayStore: r1[55] = r0  ; List_4
    //     0x732be0: add             x25, x1, #0xeb
    //     0x732be4: str             w0, [x25]
    //     0x732be8: tbz             w0, #0, #0x732c04
    //     0x732bec: ldurb           w16, [x1, #-1]
    //     0x732bf0: ldurb           w17, [x0, #-1]
    //     0x732bf4: and             x16, x17, x16, lsr #2
    //     0x732bf8: tst             x16, HEAP, lsr #32
    //     0x732bfc: b.eq            #0x732c04
    //     0x732c00: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732c04: r16 = <String, (dynamic this, BuildContext) => Widget>
    //     0x732c04: add             x16, PP, #0x11, lsl #12  ; [pp+0x11dc0] TypeArguments: <String, (dynamic this, BuildContext) => Widget>
    //     0x732c08: ldr             x16, [x16, #0xdc0]
    // 0x732c0c: ldur            lr, [fp, #-8]
    // 0x732c10: stp             lr, x16, [SP]
    // 0x732c14: r0 = Map._fromLiteral()
    //     0x732c14: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x732c18: LeaveFrame
    //     0x732c18: mov             SP, fp
    //     0x732c1c: ldp             fp, lr, [SP], #0x10
    // 0x732c20: ret
    //     0x732c20: ret             
    // 0x732c24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x732c24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732c28: b               #0x73241c
  }
  [closure] static QuranPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732c2c, size: 0xc
    // 0x732c2c: r0 = Instance_QuranPage
    //     0x732c2c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11dd0] Obj!QuranPage@a202d1
    //     0x732c30: ldr             x0, [x0, #0xdd0]
    // 0x732c34: ret
    //     0x732c34: ret             
  }
  [closure] static Dualar <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732c38, size: 0xc
    // 0x732c38: r0 = Instance_Dualar
    //     0x732c38: add             x0, PP, #0x11, lsl #12  ; [pp+0x11dd8] Obj!Dualar@a20291
    //     0x732c3c: ldr             x0, [x0, #0xdd8]
    // 0x732c40: ret
    //     0x732c40: ret             
  }
  [closure] static TechnicalSupportScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732c44, size: 0xc
    // 0x732c44: r0 = Instance_TechnicalSupportScreen
    //     0x732c44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11de0] Obj!TechnicalSupportScreen@a1ae01
    //     0x732c48: ldr             x0, [x0, #0xde0]
    // 0x732c4c: ret
    //     0x732c4c: ret             
  }
  [closure] static GezilecekYerlerScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732c50, size: 0x40
    // 0x732c50: EnterFrame
    //     0x732c50: stp             fp, lr, [SP, #-0x10]!
    //     0x732c54: mov             fp, SP
    // 0x732c58: AllocStack(0x8)
    //     0x732c58: sub             SP, SP, #8
    // 0x732c5c: CheckStackOverflow
    //     0x732c5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732c60: cmp             SP, x16
    //     0x732c64: b.ls            #0x732c88
    // 0x732c68: r0 = GezilecekYerlerScreen()
    //     0x732c68: bl              #0x732dfc  ; AllocateGezilecekYerlerScreenStub -> GezilecekYerlerScreen (size=0x10)
    // 0x732c6c: mov             x1, x0
    // 0x732c70: stur            x0, [fp, #-8]
    // 0x732c74: r0 = GezilecekYerlerScreen()
    //     0x732c74: bl              #0x732c90  ; [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] GezilecekYerlerScreen::GezilecekYerlerScreen
    // 0x732c78: ldur            x0, [fp, #-8]
    // 0x732c7c: LeaveFrame
    //     0x732c7c: mov             SP, fp
    //     0x732c80: ldp             fp, lr, [SP], #0x10
    // 0x732c84: ret
    //     0x732c84: ret             
    // 0x732c88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x732c88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732c8c: b               #0x732c68
  }
  [closure] static SettingsPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e08, size: 0xc
    // 0x732e08: r0 = Instance_SettingsPage
    //     0x732e08: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e10] Obj!SettingsPage@a20321
    //     0x732e0c: ldr             x0, [x0, #0xe10]
    // 0x732e10: ret
    //     0x732e10: ret             
  }
  [closure] static NotificationsPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e14, size: 0xc
    // 0x732e14: r0 = Instance_NotificationsPage
    //     0x732e14: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e18] Obj!NotificationsPage@a20331
    //     0x732e18: ldr             x0, [x0, #0xe18]
    // 0x732e1c: ret
    //     0x732e1c: ret             
  }
  [closure] static CurrencyPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e20, size: 0xc
    // 0x732e20: r0 = Instance_CurrencyPage
    //     0x732e20: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e20] Obj!CurrencyPage@a20341
    //     0x732e24: ldr             x0, [x0, #0xe20]
    // 0x732e28: ret
    //     0x732e28: ret             
  }
  [closure] static HotelsPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e2c, size: 0xc
    // 0x732e2c: r0 = Instance_HotelsPage
    //     0x732e2c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e28] Obj!HotelsPage@a1ae71
    //     0x732e30: ldr             x0, [x0, #0xe28]
    // 0x732e34: ret
    //     0x732e34: ret             
  }
  [closure] static TripsPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e38, size: 0xc
    // 0x732e38: r0 = Instance_TripsPage
    //     0x732e38: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e30] Obj!TripsPage@a1ae61
    //     0x732e3c: ldr             x0, [x0, #0xe30]
    // 0x732e40: ret
    //     0x732e40: ret             
  }
  [closure] static UserDetailScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e44, size: 0xc
    // 0x732e44: r0 = Instance_UserDetailScreen
    //     0x732e44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e38] Obj!UserDetailScreen@a1ae31
    //     0x732e48: ldr             x0, [x0, #0xe38]
    // 0x732e4c: ret
    //     0x732e4c: ret             
  }
  [closure] static CreateUserScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e50, size: 0xc
    // 0x732e50: r0 = Instance_CreateUserScreen
    //     0x732e50: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e40] Obj!CreateUserScreen@a20301
    //     0x732e54: ldr             x0, [x0, #0xe40]
    // 0x732e58: ret
    //     0x732e58: ret             
  }
  [closure] static UsersPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e5c, size: 0xc
    // 0x732e5c: r0 = Instance_UsersPage
    //     0x732e5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e48] Obj!UsersPage@a1ae21
    //     0x732e60: ldr             x0, [x0, #0xe48]
    // 0x732e64: ret
    //     0x732e64: ret             
  }
  [closure] static AdminEventsScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e68, size: 0xc
    // 0x732e68: r0 = Instance_AdminEventsScreen
    //     0x732e68: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e50] Obj!AdminEventsScreen@a20361
    //     0x732e6c: ldr             x0, [x0, #0xe50]
    // 0x732e70: ret
    //     0x732e70: ret             
  }
  [closure] static AgencyDetailPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e74, size: 0xc
    // 0x732e74: r0 = Instance_AgencyDetailPage
    //     0x732e74: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e58] Obj!AgencyDetailPage@a20211
    //     0x732e78: ldr             x0, [x0, #0xe58]
    // 0x732e7c: ret
    //     0x732e7c: ret             
  }
  [closure] static SuperAdminDashboard <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e80, size: 0xc
    // 0x732e80: r0 = Instance_SuperAdminDashboard
    //     0x732e80: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e60] Obj!SuperAdminDashboard@a20311
    //     0x732e84: ldr             x0, [x0, #0xe60]
    // 0x732e88: ret
    //     0x732e88: ret             
  }
  [closure] static AgenciesPage <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e8c, size: 0xc
    // 0x732e8c: r0 = Instance_AgenciesPage
    //     0x732e8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e68] Obj!AgenciesPage@a20351
    //     0x732e90: ldr             x0, [x0, #0xe68]
    // 0x732e94: ret
    //     0x732e94: ret             
  }
  [closure] static AdminAnalyticsScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732e98, size: 0xc
    // 0x732e98: r0 = Instance_AdminAnalyticsScreen
    //     0x732e98: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e70] Obj!AdminAnalyticsScreen@a1ae91
    //     0x732e9c: ldr             x0, [x0, #0xe70]
    // 0x732ea0: ret
    //     0x732ea0: ret             
  }
  [closure] static AdminDashboardScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ea4, size: 0xc
    // 0x732ea4: r0 = Instance_AdminDashboardScreen
    //     0x732ea4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e78] Obj!AdminDashboardScreen@a20371
    //     0x732ea8: ldr             x0, [x0, #0xe78]
    // 0x732eac: ret
    //     0x732eac: ret             
  }
  [closure] static TakvimScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732eb0, size: 0xc
    // 0x732eb0: r0 = Instance_TakvimScreen
    //     0x732eb0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e80] Obj!TakvimScreen@a20241
    //     0x732eb4: ldr             x0, [x0, #0xe80]
    // 0x732eb8: ret
    //     0x732eb8: ret             
  }
  [closure] static GeneralInfoScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ebc, size: 0xc
    // 0x732ebc: r0 = Instance_GeneralInfoScreen
    //     0x732ebc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e88] Obj!GeneralInfoScreen@a20271
    //     0x732ec0: ldr             x0, [x0, #0xe88]
    // 0x732ec4: ret
    //     0x732ec4: ret             
  }
  [closure] static ProfilScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ec8, size: 0xc
    // 0x732ec8: r0 = Instance_ProfilScreen
    //     0x732ec8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e90] Obj!ProfilScreen@a20261
    //     0x732ecc: ldr             x0, [x0, #0xe90]
    // 0x732ed0: ret
    //     0x732ed0: ret             
  }
  [closure] static HomeScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ed4, size: 0xc
    // 0x732ed4: r0 = Instance_HomeScreen
    //     0x732ed4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e98] Obj!HomeScreen@a20281
    //     0x732ed8: ldr             x0, [x0, #0xe98]
    // 0x732edc: ret
    //     0x732edc: ret             
  }
  [closure] static MainScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ee0, size: 0xc
    // 0x732ee0: r0 = Instance_MainScreen
    //     0x732ee0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11ea0] Obj!MainScreen@a20231
    //     0x732ee4: ldr             x0, [x0, #0xea0]
    // 0x732ee8: ret
    //     0x732ee8: ret             
  }
  [closure] static LoginScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732eec, size: 0xc
    // 0x732eec: r0 = Instance_LoginScreen
    //     0x732eec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11ea8] Obj!LoginScreen@a202f1
    //     0x732ef0: ldr             x0, [x0, #0xea8]
    // 0x732ef4: ret
    //     0x732ef4: ret             
  }
  [closure] static SplashScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732ef8, size: 0xc
    // 0x732ef8: r0 = Instance_SplashScreen
    //     0x732ef8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11eb0] Obj!SplashScreen@a20221
    //     0x732efc: ldr             x0, [x0, #0xeb0]
    // 0x732f00: ret
    //     0x732f00: ret             
  }
  [closure] static AppWrapper <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x732f04, size: 0xc
    // 0x732f04: r0 = Instance_AppWrapper
    //     0x732f04: add             x0, PP, #0x11, lsl #12  ; [pp+0x11eb8] Obj!AppWrapper@a1aea1
    //     0x732f08: ldr             x0, [x0, #0xeb8]
    // 0x732f0c: ret
    //     0x732f0c: ret             
  }
}

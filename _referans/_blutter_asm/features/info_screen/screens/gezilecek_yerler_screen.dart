// lib: , url: package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart

// class id: 1049597, size: 0x8
class :: {

  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6ce104, size: 0x54
    // 0x6ce104: EnterFrame
    //     0x6ce104: stp             fp, lr, [SP, #-0x10]!
    //     0x6ce108: mov             fp, SP
    // 0x6ce10c: AllocStack(0x10)
    //     0x6ce10c: sub             SP, SP, #0x10
    // 0x6ce110: SetupParameters([dynamic _ /* r0 */])
    //     0x6ce110: ldr             x0, [fp, #0x10]
    //     0x6ce114: ldur            w1, [x0, #0x17]
    //     0x6ce118: add             x1, x1, HEAP, lsl #32
    // 0x6ce11c: CheckStackOverflow
    //     0x6ce11c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ce120: cmp             SP, x16
    //     0x6ce124: b.ls            #0x6ce150
    // 0x6ce128: LoadField: r0 = r1->field_f
    //     0x6ce128: ldur            w0, [x1, #0xf]
    // 0x6ce12c: DecompressPointer r0
    //     0x6ce12c: add             x0, x0, HEAP, lsl #32
    // 0x6ce130: r16 = <Object?>
    //     0x6ce130: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6ce134: stp             x0, x16, [SP]
    // 0x6ce138: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6ce138: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6ce13c: r0 = pop()
    //     0x6ce13c: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6ce140: r0 = Null
    //     0x6ce140: mov             x0, NULL
    // 0x6ce144: LeaveFrame
    //     0x6ce144: mov             SP, fp
    //     0x6ce148: ldp             fp, lr, [SP], #0x10
    // 0x6ce14c: ret
    //     0x6ce14c: ret             
    // 0x6ce150: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ce150: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ce154: b               #0x6ce128
  }
  static _ _buildGezilecekYerlerListesi(/* No info */) {
    // ** addr: 0x6ce158, size: 0x350
    // 0x6ce158: EnterFrame
    //     0x6ce158: stp             fp, lr, [SP, #-0x10]!
    //     0x6ce15c: mov             fp, SP
    // 0x6ce160: AllocStack(0x58)
    //     0x6ce160: sub             SP, SP, #0x58
    // 0x6ce164: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x6ce164: stur            x1, [fp, #-8]
    //     0x6ce168: stur            x2, [fp, #-0x10]
    //     0x6ce16c: stur            x3, [fp, #-0x18]
    // 0x6ce170: CheckStackOverflow
    //     0x6ce170: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ce174: cmp             SP, x16
    //     0x6ce178: b.ls            #0x6ce4a0
    // 0x6ce17c: r1 = 2
    //     0x6ce17c: mov             x1, #2
    // 0x6ce180: r0 = AllocateContext()
    //     0x6ce180: bl              #0x927010  ; AllocateContextStub
    // 0x6ce184: mov             x2, x0
    // 0x6ce188: ldur            x0, [fp, #-0x10]
    // 0x6ce18c: stur            x2, [fp, #-0x20]
    // 0x6ce190: StoreField: r2->field_f = r0
    //     0x6ce190: stur            w0, [x2, #0xf]
    // 0x6ce194: ldur            x0, [fp, #-0x18]
    // 0x6ce198: StoreField: r2->field_13 = r0
    //     0x6ce198: stur            w0, [x2, #0x13]
    // 0x6ce19c: r16 = 0.900000
    //     0x6ce19c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x6ce1a0: ldr             x16, [x16, #0x190]
    // 0x6ce1a4: str             x16, [SP]
    // 0x6ce1a8: r1 = Instance_Color
    //     0x6ce1a8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ce1ac: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ce1ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ce1b0: ldr             x4, [x4, #0x198]
    // 0x6ce1b4: r0 = withValues()
    //     0x6ce1b4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ce1b8: stur            x0, [fp, #-0x10]
    // 0x6ce1bc: r0 = BoxDecoration()
    //     0x6ce1bc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ce1c0: mov             x1, x0
    // 0x6ce1c4: ldur            x0, [fp, #-0x10]
    // 0x6ce1c8: stur            x1, [fp, #-0x18]
    // 0x6ce1cc: StoreField: r1->field_7 = r0
    //     0x6ce1cc: stur            w0, [x1, #7]
    // 0x6ce1d0: r0 = Instance_BoxShape
    //     0x6ce1d0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6ce1d4: ldr             x0, [x0, #0x1a0]
    // 0x6ce1d8: StoreField: r1->field_23 = r0
    //     0x6ce1d8: stur            w0, [x1, #0x23]
    // 0x6ce1dc: r0 = Icon()
    //     0x6ce1dc: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ce1e0: mov             x3, x0
    // 0x6ce1e4: r0 = Instance_IconData
    //     0x6ce1e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x6ce1e8: ldr             x0, [x0, #0x1a8]
    // 0x6ce1ec: stur            x3, [fp, #-0x10]
    // 0x6ce1f0: StoreField: r3->field_b = r0
    //     0x6ce1f0: stur            w0, [x3, #0xb]
    // 0x6ce1f4: r0 = Instance_Color
    //     0x6ce1f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6ce1f8: ldr             x0, [x0, #0xb88]
    // 0x6ce1fc: StoreField: r3->field_23 = r0
    //     0x6ce1fc: stur            w0, [x3, #0x23]
    // 0x6ce200: ldur            x2, [fp, #-0x20]
    // 0x6ce204: r1 = Function '<anonymous closure>': static.
    //     0x6ce204: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e50] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6ce208: ldr             x1, [x1, #0xe50]
    // 0x6ce20c: r0 = AllocateClosure()
    //     0x6ce20c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ce210: stur            x0, [fp, #-0x28]
    // 0x6ce214: r0 = IconButton()
    //     0x6ce214: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6ce218: mov             x1, x0
    // 0x6ce21c: ldur            x0, [fp, #-0x28]
    // 0x6ce220: stur            x1, [fp, #-0x30]
    // 0x6ce224: StoreField: r1->field_3b = r0
    //     0x6ce224: stur            w0, [x1, #0x3b]
    // 0x6ce228: r0 = false
    //     0x6ce228: add             x0, NULL, #0x30  ; false
    // 0x6ce22c: StoreField: r1->field_4f = r0
    //     0x6ce22c: stur            w0, [x1, #0x4f]
    // 0x6ce230: ldur            x2, [fp, #-0x10]
    // 0x6ce234: StoreField: r1->field_1f = r2
    //     0x6ce234: stur            w2, [x1, #0x1f]
    // 0x6ce238: r2 = Instance__IconButtonVariant
    //     0x6ce238: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6ce23c: ldr             x2, [x2, #0x1b8]
    // 0x6ce240: StoreField: r1->field_6f = r2
    //     0x6ce240: stur            w2, [x1, #0x6f]
    // 0x6ce244: r0 = Container()
    //     0x6ce244: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ce248: stur            x0, [fp, #-0x10]
    // 0x6ce24c: r16 = Instance_EdgeInsets
    //     0x6ce24c: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x6ce250: ldr             x16, [x16, #0xde8]
    // 0x6ce254: ldur            lr, [fp, #-0x18]
    // 0x6ce258: stp             lr, x16, [SP, #8]
    // 0x6ce25c: ldur            x16, [fp, #-0x30]
    // 0x6ce260: str             x16, [SP]
    // 0x6ce264: mov             x1, x0
    // 0x6ce268: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x6ce268: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x6ce26c: ldr             x4, [x4, #0x1c0]
    // 0x6ce270: r0 = Container()
    //     0x6ce270: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ce274: r16 = 0.900000
    //     0x6ce274: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x6ce278: ldr             x16, [x16, #0x190]
    // 0x6ce27c: str             x16, [SP]
    // 0x6ce280: r1 = Instance_Color
    //     0x6ce280: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ce284: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ce284: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ce288: ldr             x4, [x4, #0x198]
    // 0x6ce28c: r0 = withValues()
    //     0x6ce28c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ce290: stur            x0, [fp, #-0x18]
    // 0x6ce294: r0 = Radius()
    //     0x6ce294: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ce298: d0 = 20.000000
    //     0x6ce298: fmov            d0, #20.00000000
    // 0x6ce29c: stur            x0, [fp, #-0x28]
    // 0x6ce2a0: StoreField: r0->field_7 = d0
    //     0x6ce2a0: stur            d0, [x0, #7]
    // 0x6ce2a4: StoreField: r0->field_f = d0
    //     0x6ce2a4: stur            d0, [x0, #0xf]
    // 0x6ce2a8: r0 = BorderRadius()
    //     0x6ce2a8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ce2ac: mov             x1, x0
    // 0x6ce2b0: ldur            x0, [fp, #-0x28]
    // 0x6ce2b4: stur            x1, [fp, #-0x30]
    // 0x6ce2b8: StoreField: r1->field_7 = r0
    //     0x6ce2b8: stur            w0, [x1, #7]
    // 0x6ce2bc: StoreField: r1->field_b = r0
    //     0x6ce2bc: stur            w0, [x1, #0xb]
    // 0x6ce2c0: StoreField: r1->field_f = r0
    //     0x6ce2c0: stur            w0, [x1, #0xf]
    // 0x6ce2c4: StoreField: r1->field_13 = r0
    //     0x6ce2c4: stur            w0, [x1, #0x13]
    // 0x6ce2c8: r0 = BoxDecoration()
    //     0x6ce2c8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ce2cc: mov             x1, x0
    // 0x6ce2d0: ldur            x0, [fp, #-0x18]
    // 0x6ce2d4: stur            x1, [fp, #-0x28]
    // 0x6ce2d8: StoreField: r1->field_7 = r0
    //     0x6ce2d8: stur            w0, [x1, #7]
    // 0x6ce2dc: ldur            x0, [fp, #-0x30]
    // 0x6ce2e0: StoreField: r1->field_13 = r0
    //     0x6ce2e0: stur            w0, [x1, #0x13]
    // 0x6ce2e4: r0 = Instance_BoxShape
    //     0x6ce2e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ce2e8: ldr             x0, [x0, #0x1c8]
    // 0x6ce2ec: StoreField: r1->field_23 = r0
    //     0x6ce2ec: stur            w0, [x1, #0x23]
    // 0x6ce2f0: r0 = TextStyle()
    //     0x6ce2f0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ce2f4: mov             x1, x0
    // 0x6ce2f8: r0 = true
    //     0x6ce2f8: add             x0, NULL, #0x20  ; true
    // 0x6ce2fc: stur            x1, [fp, #-0x18]
    // 0x6ce300: StoreField: r1->field_7 = r0
    //     0x6ce300: stur            w0, [x1, #7]
    // 0x6ce304: r2 = Instance_Color
    //     0x6ce304: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6ce308: ldr             x2, [x2, #0xb88]
    // 0x6ce30c: StoreField: r1->field_b = r2
    //     0x6ce30c: stur            w2, [x1, #0xb]
    // 0x6ce310: r2 = 16.000000
    //     0x6ce310: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x6ce314: ldr             x2, [x2, #0x358]
    // 0x6ce318: StoreField: r1->field_1f = r2
    //     0x6ce318: stur            w2, [x1, #0x1f]
    // 0x6ce31c: r2 = Instance_FontWeight
    //     0x6ce31c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6ce320: ldr             x2, [x2, #0x1d0]
    // 0x6ce324: StoreField: r1->field_23 = r2
    //     0x6ce324: stur            w2, [x1, #0x23]
    // 0x6ce328: r0 = Text()
    //     0x6ce328: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ce32c: mov             x1, x0
    // 0x6ce330: ldur            x0, [fp, #-8]
    // 0x6ce334: stur            x1, [fp, #-0x30]
    // 0x6ce338: StoreField: r1->field_b = r0
    //     0x6ce338: stur            w0, [x1, #0xb]
    // 0x6ce33c: ldur            x0, [fp, #-0x18]
    // 0x6ce340: StoreField: r1->field_13 = r0
    //     0x6ce340: stur            w0, [x1, #0x13]
    // 0x6ce344: r0 = Container()
    //     0x6ce344: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ce348: stur            x0, [fp, #-8]
    // 0x6ce34c: r16 = Instance_EdgeInsets
    //     0x6ce34c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x6ce350: ldr             x16, [x16, #0x1e0]
    // 0x6ce354: ldur            lr, [fp, #-0x28]
    // 0x6ce358: stp             lr, x16, [SP, #8]
    // 0x6ce35c: ldur            x16, [fp, #-0x30]
    // 0x6ce360: str             x16, [SP]
    // 0x6ce364: mov             x1, x0
    // 0x6ce368: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6ce368: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6ce36c: ldr             x4, [x4, #0x1e8]
    // 0x6ce370: r0 = Container()
    //     0x6ce370: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ce374: r0 = AppBar()
    //     0x6ce374: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6ce378: stur            x0, [fp, #-0x18]
    // 0x6ce37c: r16 = Instance_Color
    //     0x6ce37c: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x6ce380: ldr             x16, [x16, #0x860]
    // 0x6ce384: r30 = 0.000000
    //     0x6ce384: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6ce388: stp             lr, x16, [SP, #0x10]
    // 0x6ce38c: ldur            x16, [fp, #-0x10]
    // 0x6ce390: r30 = true
    //     0x6ce390: add             lr, NULL, #0x20  ; true
    // 0x6ce394: stp             lr, x16, [SP]
    // 0x6ce398: mov             x1, x0
    // 0x6ce39c: ldur            x2, [fp, #-8]
    // 0x6ce3a0: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x6ce3a0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x6ce3a4: ldr             x4, [x4, #0x1f0]
    // 0x6ce3a8: r0 = AppBar()
    //     0x6ce3a8: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6ce3ac: ldur            x2, [fp, #-0x20]
    // 0x6ce3b0: LoadField: r0 = r2->field_13
    //     0x6ce3b0: ldur            w0, [x2, #0x13]
    // 0x6ce3b4: DecompressPointer r0
    //     0x6ce3b4: add             x0, x0, HEAP, lsl #32
    // 0x6ce3b8: LoadField: r1 = r0->field_b
    //     0x6ce3b8: ldur            w1, [x0, #0xb]
    // 0x6ce3bc: r3 = LoadInt32Instr(r1)
    //     0x6ce3bc: sbfx            x3, x1, #1, #0x1f
    // 0x6ce3c0: stur            x3, [fp, #-0x38]
    // 0x6ce3c4: r1 = Function '<anonymous closure>': static.
    //     0x6ce3c4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e58] AnonymousClosure: static (0x6ce6c4), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6ce3c8: ldr             x1, [x1, #0xe58]
    // 0x6ce3cc: r0 = AllocateClosure()
    //     0x6ce3cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ce3d0: stur            x0, [fp, #-8]
    // 0x6ce3d4: r0 = ListView()
    //     0x6ce3d4: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6ce3d8: stur            x0, [fp, #-0x10]
    // 0x6ce3dc: r16 = Instance_EdgeInsets
    //     0x6ce3dc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6ce3e0: ldr             x16, [x16, #0x240]
    // 0x6ce3e4: str             x16, [SP]
    // 0x6ce3e8: mov             x1, x0
    // 0x6ce3ec: ldur            x2, [fp, #-8]
    // 0x6ce3f0: ldur            x3, [fp, #-0x38]
    // 0x6ce3f4: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x6ce3f4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x6ce3f8: ldr             x4, [x4, #0xe60]
    // 0x6ce3fc: r0 = ListView.builder()
    //     0x6ce3fc: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6ce400: r0 = SafeArea()
    //     0x6ce400: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x6ce404: mov             x1, x0
    // 0x6ce408: r0 = true
    //     0x6ce408: add             x0, NULL, #0x20  ; true
    // 0x6ce40c: stur            x1, [fp, #-8]
    // 0x6ce410: StoreField: r1->field_b = r0
    //     0x6ce410: stur            w0, [x1, #0xb]
    // 0x6ce414: StoreField: r1->field_f = r0
    //     0x6ce414: stur            w0, [x1, #0xf]
    // 0x6ce418: StoreField: r1->field_13 = r0
    //     0x6ce418: stur            w0, [x1, #0x13]
    // 0x6ce41c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6ce41c: stur            w0, [x1, #0x17]
    // 0x6ce420: r2 = Instance_EdgeInsets
    //     0x6ce420: ldr             x2, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x6ce424: StoreField: r1->field_1b = r2
    //     0x6ce424: stur            w2, [x1, #0x1b]
    // 0x6ce428: r2 = false
    //     0x6ce428: add             x2, NULL, #0x30  ; false
    // 0x6ce42c: StoreField: r1->field_1f = r2
    //     0x6ce42c: stur            w2, [x1, #0x1f]
    // 0x6ce430: ldur            x3, [fp, #-0x10]
    // 0x6ce434: StoreField: r1->field_23 = r3
    //     0x6ce434: stur            w3, [x1, #0x23]
    // 0x6ce438: r0 = Scaffold()
    //     0x6ce438: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6ce43c: ldur            x1, [fp, #-0x18]
    // 0x6ce440: ArrayStore: r0[0] = r1  ; List_4
    //     0x6ce440: stur            w1, [x0, #0x17]
    // 0x6ce444: ldur            x1, [fp, #-8]
    // 0x6ce448: StoreField: r0->field_1b = r1
    //     0x6ce448: stur            w1, [x0, #0x1b]
    // 0x6ce44c: r1 = Instance_AlignmentDirectional
    //     0x6ce44c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6ce450: ldr             x1, [x1, #0x350]
    // 0x6ce454: StoreField: r0->field_2f = r1
    //     0x6ce454: stur            w1, [x0, #0x2f]
    // 0x6ce458: r1 = Instance_Color
    //     0x6ce458: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ce45c: StoreField: r0->field_4f = r1
    //     0x6ce45c: stur            w1, [x0, #0x4f]
    // 0x6ce460: r1 = true
    //     0x6ce460: add             x1, NULL, #0x20  ; true
    // 0x6ce464: StoreField: r0->field_5f = r1
    //     0x6ce464: stur            w1, [x0, #0x5f]
    // 0x6ce468: r2 = Instance_DragStartBehavior
    //     0x6ce468: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6ce46c: StoreField: r0->field_63 = r2
    //     0x6ce46c: stur            w2, [x0, #0x63]
    // 0x6ce470: r2 = false
    //     0x6ce470: add             x2, NULL, #0x30  ; false
    // 0x6ce474: StoreField: r0->field_b = r2
    //     0x6ce474: stur            w2, [x0, #0xb]
    // 0x6ce478: StoreField: r0->field_f = r1
    //     0x6ce478: stur            w1, [x0, #0xf]
    // 0x6ce47c: StoreField: r0->field_13 = r1
    //     0x6ce47c: stur            w1, [x0, #0x13]
    // 0x6ce480: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6ce480: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6ce484: ldr             x2, [x2, #0x358]
    // 0x6ce488: StoreField: r0->field_4b = r2
    //     0x6ce488: stur            w2, [x0, #0x4b]
    // 0x6ce48c: StoreField: r0->field_6b = r1
    //     0x6ce48c: stur            w1, [x0, #0x6b]
    // 0x6ce490: StoreField: r0->field_6f = r1
    //     0x6ce490: stur            w1, [x0, #0x6f]
    // 0x6ce494: LeaveFrame
    //     0x6ce494: mov             SP, fp
    //     0x6ce498: ldp             fp, lr, [SP], #0x10
    // 0x6ce49c: ret
    //     0x6ce49c: ret             
    // 0x6ce4a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ce4a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ce4a4: b               #0x6ce17c
  }
  [closure] static GezilecekYerKart <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6ce6c4, size: 0x7c
    // 0x6ce6c4: EnterFrame
    //     0x6ce6c4: stp             fp, lr, [SP, #-0x10]!
    //     0x6ce6c8: mov             fp, SP
    // 0x6ce6cc: AllocStack(0x8)
    //     0x6ce6cc: sub             SP, SP, #8
    // 0x6ce6d0: SetupParameters([dynamic _ /* r0 */])
    //     0x6ce6d0: ldr             x0, [fp, #0x20]
    //     0x6ce6d4: ldur            w1, [x0, #0x17]
    //     0x6ce6d8: add             x1, x1, HEAP, lsl #32
    // 0x6ce6dc: LoadField: r2 = r1->field_13
    //     0x6ce6dc: ldur            w2, [x1, #0x13]
    // 0x6ce6e0: DecompressPointer r2
    //     0x6ce6e0: add             x2, x2, HEAP, lsl #32
    // 0x6ce6e4: LoadField: r0 = r2->field_b
    //     0x6ce6e4: ldur            w0, [x2, #0xb]
    // 0x6ce6e8: ldr             x1, [fp, #0x10]
    // 0x6ce6ec: r3 = LoadInt32Instr(r1)
    //     0x6ce6ec: sbfx            x3, x1, #1, #0x1f
    //     0x6ce6f0: tbz             w1, #0, #0x6ce6f8
    //     0x6ce6f4: ldur            x3, [x1, #7]
    // 0x6ce6f8: r1 = LoadInt32Instr(r0)
    //     0x6ce6f8: sbfx            x1, x0, #1, #0x1f
    // 0x6ce6fc: mov             x0, x1
    // 0x6ce700: mov             x1, x3
    // 0x6ce704: cmp             x1, x0
    // 0x6ce708: b.hs            #0x6ce73c
    // 0x6ce70c: LoadField: r0 = r2->field_f
    //     0x6ce70c: ldur            w0, [x2, #0xf]
    // 0x6ce710: DecompressPointer r0
    //     0x6ce710: add             x0, x0, HEAP, lsl #32
    // 0x6ce714: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0x6ce714: add             x16, x0, x3, lsl #2
    //     0x6ce718: ldur            w1, [x16, #0xf]
    // 0x6ce71c: DecompressPointer r1
    //     0x6ce71c: add             x1, x1, HEAP, lsl #32
    // 0x6ce720: stur            x1, [fp, #-8]
    // 0x6ce724: r0 = GezilecekYerKart()
    //     0x6ce724: bl              #0x6ce740  ; AllocateGezilecekYerKartStub -> GezilecekYerKart (size=0x10)
    // 0x6ce728: ldur            x1, [fp, #-8]
    // 0x6ce72c: StoreField: r0->field_b = r1
    //     0x6ce72c: stur            w1, [x0, #0xb]
    // 0x6ce730: LeaveFrame
    //     0x6ce730: mov             SP, fp
    //     0x6ce734: ldp             fp, lr, [SP], #0x10
    // 0x6ce738: ret
    //     0x6ce738: ret             
    // 0x6ce73c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ce73c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// class id: 192, size: 0x10, field offset: 0x8
class GezilecekYer extends Object {
}

// class id: 193, size: 0x10, field offset: 0x8
class ModelBilgiKartData extends Object {
}

// class id: 2892, size: 0x14, field offset: 0xc
//   const constructor, 
class BilgiKart extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ee26c, size: 0x3d8
    // 0x7ee26c: EnterFrame
    //     0x7ee26c: stp             fp, lr, [SP, #-0x10]!
    //     0x7ee270: mov             fp, SP
    // 0x7ee274: AllocStack(0x58)
    //     0x7ee274: sub             SP, SP, #0x58
    // 0x7ee278: SetupParameters(BilgiKart this /* r1 => r1, fp-0x10 */)
    //     0x7ee278: stur            x1, [fp, #-0x10]
    // 0x7ee27c: CheckStackOverflow
    //     0x7ee27c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ee280: cmp             SP, x16
    //     0x7ee284: b.ls            #0x7ee63c
    // 0x7ee288: LoadField: r0 = r1->field_f
    //     0x7ee288: ldur            w0, [x1, #0xf]
    // 0x7ee28c: DecompressPointer r0
    //     0x7ee28c: add             x0, x0, HEAP, lsl #32
    // 0x7ee290: stur            x0, [fp, #-8]
    // 0x7ee294: r0 = cardDecoration()
    //     0x7ee294: bl              #0x7e76e8  ; [package:umrem_demo/app/app_theme.dart] AppTheme::cardDecoration
    // 0x7ee298: stur            x0, [fp, #-0x18]
    // 0x7ee29c: r0 = Radius()
    //     0x7ee29c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ee2a0: d0 = 20.000000
    //     0x7ee2a0: fmov            d0, #20.00000000
    // 0x7ee2a4: stur            x0, [fp, #-0x20]
    // 0x7ee2a8: StoreField: r0->field_7 = d0
    //     0x7ee2a8: stur            d0, [x0, #7]
    // 0x7ee2ac: StoreField: r0->field_f = d0
    //     0x7ee2ac: stur            d0, [x0, #0xf]
    // 0x7ee2b0: r0 = BorderRadius()
    //     0x7ee2b0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ee2b4: mov             x2, x0
    // 0x7ee2b8: ldur            x0, [fp, #-0x20]
    // 0x7ee2bc: stur            x2, [fp, #-0x28]
    // 0x7ee2c0: StoreField: r2->field_7 = r0
    //     0x7ee2c0: stur            w0, [x2, #7]
    // 0x7ee2c4: StoreField: r2->field_b = r0
    //     0x7ee2c4: stur            w0, [x2, #0xb]
    // 0x7ee2c8: StoreField: r2->field_f = r0
    //     0x7ee2c8: stur            w0, [x2, #0xf]
    // 0x7ee2cc: StoreField: r2->field_13 = r0
    //     0x7ee2cc: stur            w0, [x2, #0x13]
    // 0x7ee2d0: ldur            x0, [fp, #-0x10]
    // 0x7ee2d4: LoadField: r3 = r0->field_b
    //     0x7ee2d4: ldur            w3, [x0, #0xb]
    // 0x7ee2d8: DecompressPointer r3
    //     0x7ee2d8: add             x3, x3, HEAP, lsl #32
    // 0x7ee2dc: stur            x3, [fp, #-0x20]
    // 0x7ee2e0: LoadField: r1 = r3->field_b
    //     0x7ee2e0: ldur            w1, [x3, #0xb]
    // 0x7ee2e4: DecompressPointer r1
    //     0x7ee2e4: add             x1, x1, HEAP, lsl #32
    // 0x7ee2e8: LoadField: r0 = r1->field_b
    //     0x7ee2e8: ldur            w0, [x1, #0xb]
    // 0x7ee2ec: cbz             w0, #0x7ee2fc
    // 0x7ee2f0: r0 = first()
    //     0x7ee2f0: bl              #0x4ecadc  ; [dart:core] _GrowableList::first
    // 0x7ee2f4: mov             x2, x0
    // 0x7ee2f8: b               #0x7ee300
    // 0x7ee2fc: r2 = ""
    //     0x7ee2fc: ldr             x2, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7ee300: ldur            x0, [fp, #-0x28]
    // 0x7ee304: ldur            x1, [fp, #-0x20]
    // 0x7ee308: stur            x2, [fp, #-0x10]
    // 0x7ee30c: r0 = Image()
    //     0x7ee30c: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x7ee310: r1 = Function '<anonymous closure>':.
    //     0x7ee310: add             x1, PP, #0x14, lsl #12  ; [pp+0x14cd8] AnonymousClosure: (0x7ee644), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] BilgiKart::build (0x7ee26c)
    //     0x7ee314: ldr             x1, [x1, #0xcd8]
    // 0x7ee318: r2 = Null
    //     0x7ee318: mov             x2, NULL
    // 0x7ee31c: stur            x0, [fp, #-0x30]
    // 0x7ee320: r0 = AllocateClosure()
    //     0x7ee320: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ee324: r16 = Instance_BoxFit
    //     0x7ee324: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ce0] Obj!BoxFit@a2a971
    //     0x7ee328: ldr             x16, [x16, #0xce0]
    // 0x7ee32c: stp             x0, x16, [SP]
    // 0x7ee330: ldur            x1, [fp, #-0x30]
    // 0x7ee334: ldur            x2, [fp, #-0x10]
    // 0x7ee338: r4 = const [0, 0x4, 0x2, 0x2, errorBuilder, 0x3, fit, 0x2, null]
    //     0x7ee338: add             x4, PP, #0x14, lsl #12  ; [pp+0x14ce8] List(9) [0, 0x4, 0x2, 0x2, "errorBuilder", 0x3, "fit", 0x2, Null]
    //     0x7ee33c: ldr             x4, [x4, #0xce8]
    // 0x7ee340: r0 = Image.asset()
    //     0x7ee340: bl              #0x6f8f2c  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x7ee344: r16 = 0.800000
    //     0x7ee344: add             x16, PP, #0x14, lsl #12  ; [pp+0x14cf0] 0.8
    //     0x7ee348: ldr             x16, [x16, #0xcf0]
    // 0x7ee34c: str             x16, [SP]
    // 0x7ee350: r1 = Instance_Color
    //     0x7ee350: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7ee354: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ee354: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ee358: ldr             x4, [x4, #0x198]
    // 0x7ee35c: r0 = withValues()
    //     0x7ee35c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ee360: r1 = Null
    //     0x7ee360: mov             x1, NULL
    // 0x7ee364: r2 = 4
    //     0x7ee364: mov             x2, #4
    // 0x7ee368: stur            x0, [fp, #-0x10]
    // 0x7ee36c: r0 = AllocateArray()
    //     0x7ee36c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ee370: stur            x0, [fp, #-0x38]
    // 0x7ee374: r16 = Instance_Color
    //     0x7ee374: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7ee378: ldr             x16, [x16, #0x860]
    // 0x7ee37c: StoreField: r0->field_f = r16
    //     0x7ee37c: stur            w16, [x0, #0xf]
    // 0x7ee380: ldur            x1, [fp, #-0x10]
    // 0x7ee384: StoreField: r0->field_13 = r1
    //     0x7ee384: stur            w1, [x0, #0x13]
    // 0x7ee388: r1 = <Color>
    //     0x7ee388: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x7ee38c: ldr             x1, [x1, #0x800]
    // 0x7ee390: r0 = AllocateGrowableArray()
    //     0x7ee390: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ee394: mov             x1, x0
    // 0x7ee398: ldur            x0, [fp, #-0x38]
    // 0x7ee39c: stur            x1, [fp, #-0x10]
    // 0x7ee3a0: StoreField: r1->field_f = r0
    //     0x7ee3a0: stur            w0, [x1, #0xf]
    // 0x7ee3a4: r2 = 4
    //     0x7ee3a4: mov             x2, #4
    // 0x7ee3a8: StoreField: r1->field_b = r2
    //     0x7ee3a8: stur            w2, [x1, #0xb]
    // 0x7ee3ac: r0 = LinearGradient()
    //     0x7ee3ac: bl              #0x55ed60  ; AllocateLinearGradientStub -> LinearGradient (size=0x20)
    // 0x7ee3b0: mov             x1, x0
    // 0x7ee3b4: r0 = Instance_Alignment
    //     0x7ee3b4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cf8] Obj!Alignment@a0cf11
    //     0x7ee3b8: ldr             x0, [x0, #0xcf8]
    // 0x7ee3bc: stur            x1, [fp, #-0x38]
    // 0x7ee3c0: StoreField: r1->field_13 = r0
    //     0x7ee3c0: stur            w0, [x1, #0x13]
    // 0x7ee3c4: r0 = Instance_Alignment
    //     0x7ee3c4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d00] Obj!Alignment@a0ced1
    //     0x7ee3c8: ldr             x0, [x0, #0xd00]
    // 0x7ee3cc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ee3cc: stur            w0, [x1, #0x17]
    // 0x7ee3d0: r0 = Instance_TileMode
    //     0x7ee3d0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d08] Obj!TileMode@a2d831
    //     0x7ee3d4: ldr             x0, [x0, #0xd08]
    // 0x7ee3d8: StoreField: r1->field_1b = r0
    //     0x7ee3d8: stur            w0, [x1, #0x1b]
    // 0x7ee3dc: ldur            x0, [fp, #-0x10]
    // 0x7ee3e0: StoreField: r1->field_7 = r0
    //     0x7ee3e0: stur            w0, [x1, #7]
    // 0x7ee3e4: r0 = BoxDecoration()
    //     0x7ee3e4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ee3e8: mov             x1, x0
    // 0x7ee3ec: ldur            x0, [fp, #-0x38]
    // 0x7ee3f0: stur            x1, [fp, #-0x40]
    // 0x7ee3f4: StoreField: r1->field_1b = r0
    //     0x7ee3f4: stur            w0, [x1, #0x1b]
    // 0x7ee3f8: r0 = Instance_BoxShape
    //     0x7ee3f8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ee3fc: ldr             x0, [x0, #0x1c8]
    // 0x7ee400: StoreField: r1->field_23 = r0
    //     0x7ee400: stur            w0, [x1, #0x23]
    // 0x7ee404: ldur            x0, [fp, #-0x20]
    // 0x7ee408: LoadField: r2 = r0->field_7
    //     0x7ee408: ldur            w2, [x0, #7]
    // 0x7ee40c: DecompressPointer r2
    //     0x7ee40c: add             x2, x2, HEAP, lsl #32
    // 0x7ee410: stur            x2, [fp, #-0x10]
    // 0x7ee414: r0 = Text()
    //     0x7ee414: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ee418: mov             x3, x0
    // 0x7ee41c: ldur            x0, [fp, #-0x10]
    // 0x7ee420: stur            x3, [fp, #-0x20]
    // 0x7ee424: StoreField: r3->field_b = r0
    //     0x7ee424: stur            w0, [x3, #0xb]
    // 0x7ee428: r0 = Instance_TextStyle
    //     0x7ee428: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d10] Obj!TextStyle@a19191
    //     0x7ee42c: ldr             x0, [x0, #0xd10]
    // 0x7ee430: StoreField: r3->field_13 = r0
    //     0x7ee430: stur            w0, [x3, #0x13]
    // 0x7ee434: r1 = Null
    //     0x7ee434: mov             x1, NULL
    // 0x7ee438: r2 = 4
    //     0x7ee438: mov             x2, #4
    // 0x7ee43c: r0 = AllocateArray()
    //     0x7ee43c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ee440: mov             x2, x0
    // 0x7ee444: ldur            x0, [fp, #-0x20]
    // 0x7ee448: stur            x2, [fp, #-0x10]
    // 0x7ee44c: StoreField: r2->field_f = r0
    //     0x7ee44c: stur            w0, [x2, #0xf]
    // 0x7ee450: r16 = Instance_Icon
    //     0x7ee450: add             x16, PP, #0x14, lsl #12  ; [pp+0x14d18] Obj!Icon@a1f271
    //     0x7ee454: ldr             x16, [x16, #0xd18]
    // 0x7ee458: StoreField: r2->field_13 = r16
    //     0x7ee458: stur            w16, [x2, #0x13]
    // 0x7ee45c: r1 = <Widget>
    //     0x7ee45c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ee460: r0 = AllocateGrowableArray()
    //     0x7ee460: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ee464: mov             x1, x0
    // 0x7ee468: ldur            x0, [fp, #-0x10]
    // 0x7ee46c: stur            x1, [fp, #-0x20]
    // 0x7ee470: StoreField: r1->field_f = r0
    //     0x7ee470: stur            w0, [x1, #0xf]
    // 0x7ee474: r2 = 4
    //     0x7ee474: mov             x2, #4
    // 0x7ee478: StoreField: r1->field_b = r2
    //     0x7ee478: stur            w2, [x1, #0xb]
    // 0x7ee47c: r0 = Row()
    //     0x7ee47c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7ee480: mov             x1, x0
    // 0x7ee484: r0 = Instance_Axis
    //     0x7ee484: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7ee488: stur            x1, [fp, #-0x10]
    // 0x7ee48c: StoreField: r1->field_f = r0
    //     0x7ee48c: stur            w0, [x1, #0xf]
    // 0x7ee490: r0 = Instance_MainAxisAlignment
    //     0x7ee490: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x7ee494: ldr             x0, [x0, #0xd20]
    // 0x7ee498: StoreField: r1->field_13 = r0
    //     0x7ee498: stur            w0, [x1, #0x13]
    // 0x7ee49c: r0 = Instance_MainAxisSize
    //     0x7ee49c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ee4a0: ldr             x0, [x0, #0x330]
    // 0x7ee4a4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ee4a4: stur            w0, [x1, #0x17]
    // 0x7ee4a8: r0 = Instance_CrossAxisAlignment
    //     0x7ee4a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ee4ac: ldr             x0, [x0, #0x338]
    // 0x7ee4b0: StoreField: r1->field_1b = r0
    //     0x7ee4b0: stur            w0, [x1, #0x1b]
    // 0x7ee4b4: r0 = Instance_VerticalDirection
    //     0x7ee4b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ee4b8: ldr             x0, [x0, #0x340]
    // 0x7ee4bc: StoreField: r1->field_23 = r0
    //     0x7ee4bc: stur            w0, [x1, #0x23]
    // 0x7ee4c0: r0 = Instance_Clip
    //     0x7ee4c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ee4c4: ldr             x0, [x0, #0x348]
    // 0x7ee4c8: StoreField: r1->field_2b = r0
    //     0x7ee4c8: stur            w0, [x1, #0x2b]
    // 0x7ee4cc: StoreField: r1->field_2f = rZR
    //     0x7ee4cc: stur            xzr, [x1, #0x2f]
    // 0x7ee4d0: ldur            x0, [fp, #-0x20]
    // 0x7ee4d4: StoreField: r1->field_b = r0
    //     0x7ee4d4: stur            w0, [x1, #0xb]
    // 0x7ee4d8: r0 = Container()
    //     0x7ee4d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee4dc: stur            x0, [fp, #-0x20]
    // 0x7ee4e0: r16 = Instance_EdgeInsets
    //     0x7ee4e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7ee4e4: ldr             x16, [x16, #0x370]
    // 0x7ee4e8: ldur            lr, [fp, #-0x40]
    // 0x7ee4ec: stp             lr, x16, [SP, #8]
    // 0x7ee4f0: ldur            x16, [fp, #-0x10]
    // 0x7ee4f4: str             x16, [SP]
    // 0x7ee4f8: mov             x1, x0
    // 0x7ee4fc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ee4fc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ee500: ldr             x4, [x4, #0x1e8]
    // 0x7ee504: r0 = Container()
    //     0x7ee504: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee508: r1 = <StackParentData>
    //     0x7ee508: add             x1, PP, #0x11, lsl #12  ; [pp+0x116a8] TypeArguments: <StackParentData>
    //     0x7ee50c: ldr             x1, [x1, #0x6a8]
    // 0x7ee510: r0 = Positioned()
    //     0x7ee510: bl              #0x40a1ec  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0x7ee514: mov             x3, x0
    // 0x7ee518: r0 = 0.000000
    //     0x7ee518: ldr             x0, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7ee51c: stur            x3, [fp, #-0x10]
    // 0x7ee520: StoreField: r3->field_13 = r0
    //     0x7ee520: stur            w0, [x3, #0x13]
    // 0x7ee524: StoreField: r3->field_1b = r0
    //     0x7ee524: stur            w0, [x3, #0x1b]
    // 0x7ee528: StoreField: r3->field_1f = r0
    //     0x7ee528: stur            w0, [x3, #0x1f]
    // 0x7ee52c: ldur            x0, [fp, #-0x20]
    // 0x7ee530: StoreField: r3->field_b = r0
    //     0x7ee530: stur            w0, [x3, #0xb]
    // 0x7ee534: r1 = Null
    //     0x7ee534: mov             x1, NULL
    // 0x7ee538: r2 = 4
    //     0x7ee538: mov             x2, #4
    // 0x7ee53c: r0 = AllocateArray()
    //     0x7ee53c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ee540: mov             x2, x0
    // 0x7ee544: ldur            x0, [fp, #-0x30]
    // 0x7ee548: stur            x2, [fp, #-0x20]
    // 0x7ee54c: StoreField: r2->field_f = r0
    //     0x7ee54c: stur            w0, [x2, #0xf]
    // 0x7ee550: ldur            x0, [fp, #-0x10]
    // 0x7ee554: StoreField: r2->field_13 = r0
    //     0x7ee554: stur            w0, [x2, #0x13]
    // 0x7ee558: r1 = <Widget>
    //     0x7ee558: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ee55c: r0 = AllocateGrowableArray()
    //     0x7ee55c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ee560: mov             x1, x0
    // 0x7ee564: ldur            x0, [fp, #-0x20]
    // 0x7ee568: stur            x1, [fp, #-0x10]
    // 0x7ee56c: StoreField: r1->field_f = r0
    //     0x7ee56c: stur            w0, [x1, #0xf]
    // 0x7ee570: r0 = 4
    //     0x7ee570: mov             x0, #4
    // 0x7ee574: StoreField: r1->field_b = r0
    //     0x7ee574: stur            w0, [x1, #0xb]
    // 0x7ee578: r0 = Stack()
    //     0x7ee578: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x7ee57c: mov             x1, x0
    // 0x7ee580: r0 = Instance_AlignmentDirectional
    //     0x7ee580: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x7ee584: ldr             x0, [x0, #0xd28]
    // 0x7ee588: stur            x1, [fp, #-0x20]
    // 0x7ee58c: StoreField: r1->field_f = r0
    //     0x7ee58c: stur            w0, [x1, #0xf]
    // 0x7ee590: r0 = Instance_StackFit
    //     0x7ee590: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d30] Obj!StackFit@a2a391
    //     0x7ee594: ldr             x0, [x0, #0xd30]
    // 0x7ee598: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ee598: stur            w0, [x1, #0x17]
    // 0x7ee59c: r0 = Instance_Clip
    //     0x7ee59c: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7ee5a0: ldr             x0, [x0, #0x2d8]
    // 0x7ee5a4: StoreField: r1->field_1b = r0
    //     0x7ee5a4: stur            w0, [x1, #0x1b]
    // 0x7ee5a8: ldur            x0, [fp, #-0x10]
    // 0x7ee5ac: StoreField: r1->field_b = r0
    //     0x7ee5ac: stur            w0, [x1, #0xb]
    // 0x7ee5b0: r0 = ClipRRect()
    //     0x7ee5b0: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x7ee5b4: mov             x1, x0
    // 0x7ee5b8: ldur            x0, [fp, #-0x28]
    // 0x7ee5bc: stur            x1, [fp, #-0x10]
    // 0x7ee5c0: StoreField: r1->field_f = r0
    //     0x7ee5c0: stur            w0, [x1, #0xf]
    // 0x7ee5c4: r0 = Instance_Clip
    //     0x7ee5c4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x7ee5c8: ldr             x0, [x0, #0xd38]
    // 0x7ee5cc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ee5cc: stur            w0, [x1, #0x17]
    // 0x7ee5d0: ldur            x0, [fp, #-0x20]
    // 0x7ee5d4: StoreField: r1->field_b = r0
    //     0x7ee5d4: stur            w0, [x1, #0xb]
    // 0x7ee5d8: r0 = Container()
    //     0x7ee5d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee5dc: stur            x0, [fp, #-0x20]
    // 0x7ee5e0: r16 = 200.000000
    //     0x7ee5e0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14d40] 200
    //     0x7ee5e4: ldr             x16, [x16, #0xd40]
    // 0x7ee5e8: ldur            lr, [fp, #-0x18]
    // 0x7ee5ec: stp             lr, x16, [SP, #8]
    // 0x7ee5f0: ldur            x16, [fp, #-0x10]
    // 0x7ee5f4: str             x16, [SP]
    // 0x7ee5f8: mov             x1, x0
    // 0x7ee5fc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, height, 0x1, null]
    //     0x7ee5fc: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d48] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "height", 0x1, Null]
    //     0x7ee600: ldr             x4, [x4, #0xd48]
    // 0x7ee604: r0 = Container()
    //     0x7ee604: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee608: r0 = GestureDetector()
    //     0x7ee608: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x7ee60c: stur            x0, [fp, #-0x10]
    // 0x7ee610: ldur            x16, [fp, #-8]
    // 0x7ee614: ldur            lr, [fp, #-0x20]
    // 0x7ee618: stp             lr, x16, [SP]
    // 0x7ee61c: mov             x1, x0
    // 0x7ee620: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7ee620: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7ee624: ldr             x4, [x4, #0xd50]
    // 0x7ee628: r0 = GestureDetector()
    //     0x7ee628: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7ee62c: ldur            x0, [fp, #-0x10]
    // 0x7ee630: LeaveFrame
    //     0x7ee630: mov             SP, fp
    //     0x7ee634: ldp             fp, lr, [SP], #0x10
    // 0x7ee638: ret
    //     0x7ee638: ret             
    // 0x7ee63c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ee63c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ee640: b               #0x7ee288
  }
  [closure] Container <anonymous closure>(dynamic, BuildContext, Object, StackTrace?) {
    // ** addr: 0x7ee644, size: 0x74
    // 0x7ee644: EnterFrame
    //     0x7ee644: stp             fp, lr, [SP, #-0x10]!
    //     0x7ee648: mov             fp, SP
    // 0x7ee64c: AllocStack(0x20)
    //     0x7ee64c: sub             SP, SP, #0x20
    // 0x7ee650: CheckStackOverflow
    //     0x7ee650: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ee654: cmp             SP, x16
    //     0x7ee658: b.ls            #0x7ee6ac
    // 0x7ee65c: r1 = _ConstMap len:12
    //     0x7ee65c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7ee660: r2 = 600
    //     0x7ee660: mov             x2, #0x258
    // 0x7ee664: r0 = []()
    //     0x7ee664: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7ee668: stur            x0, [fp, #-8]
    // 0x7ee66c: cmp             w0, NULL
    // 0x7ee670: b.eq            #0x7ee6b4
    // 0x7ee674: r0 = Container()
    //     0x7ee674: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee678: stur            x0, [fp, #-0x10]
    // 0x7ee67c: ldur            x16, [fp, #-8]
    // 0x7ee680: r30 = Instance_Icon
    //     0x7ee680: add             lr, PP, #0x14, lsl #12  ; [pp+0x14d58] Obj!Icon@a1f2b1
    //     0x7ee684: ldr             lr, [lr, #0xd58]
    // 0x7ee688: stp             lr, x16, [SP]
    // 0x7ee68c: mov             x1, x0
    // 0x7ee690: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, color, 0x1, null]
    //     0x7ee690: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d60] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "color", 0x1, Null]
    //     0x7ee694: ldr             x4, [x4, #0xd60]
    // 0x7ee698: r0 = Container()
    //     0x7ee698: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee69c: ldur            x0, [fp, #-0x10]
    // 0x7ee6a0: LeaveFrame
    //     0x7ee6a0: mov             SP, fp
    //     0x7ee6a4: ldp             fp, lr, [SP], #0x10
    // 0x7ee6a8: ret
    //     0x7ee6a8: ret             
    // 0x7ee6ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ee6ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ee6b0: b               #0x7ee65c
    // 0x7ee6b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7ee6b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 2893, size: 0x10, field offset: 0xc
//   const constructor, 
class GezilecekYerKart extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ee054, size: 0x218
    // 0x7ee054: EnterFrame
    //     0x7ee054: stp             fp, lr, [SP, #-0x10]!
    //     0x7ee058: mov             fp, SP
    // 0x7ee05c: AllocStack(0x48)
    //     0x7ee05c: sub             SP, SP, #0x48
    // 0x7ee060: SetupParameters(GezilecekYerKart this /* r1 => r1, fp-0x8 */)
    //     0x7ee060: stur            x1, [fp, #-8]
    // 0x7ee064: CheckStackOverflow
    //     0x7ee064: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ee068: cmp             SP, x16
    //     0x7ee06c: b.ls            #0x7ee264
    // 0x7ee070: r0 = cardDecoration()
    //     0x7ee070: bl              #0x7e76e8  ; [package:umrem_demo/app/app_theme.dart] AppTheme::cardDecoration
    // 0x7ee074: mov             x1, x0
    // 0x7ee078: ldur            x0, [fp, #-8]
    // 0x7ee07c: stur            x1, [fp, #-0x18]
    // 0x7ee080: LoadField: r2 = r0->field_b
    //     0x7ee080: ldur            w2, [x0, #0xb]
    // 0x7ee084: DecompressPointer r2
    //     0x7ee084: add             x2, x2, HEAP, lsl #32
    // 0x7ee088: stur            x2, [fp, #-0x10]
    // 0x7ee08c: LoadField: r0 = r2->field_7
    //     0x7ee08c: ldur            w0, [x2, #7]
    // 0x7ee090: DecompressPointer r0
    //     0x7ee090: add             x0, x0, HEAP, lsl #32
    // 0x7ee094: stur            x0, [fp, #-8]
    // 0x7ee098: r0 = TextStyle()
    //     0x7ee098: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ee09c: mov             x1, x0
    // 0x7ee0a0: r0 = true
    //     0x7ee0a0: add             x0, NULL, #0x20  ; true
    // 0x7ee0a4: stur            x1, [fp, #-0x20]
    // 0x7ee0a8: StoreField: r1->field_7 = r0
    //     0x7ee0a8: stur            w0, [x1, #7]
    // 0x7ee0ac: r2 = Instance_Color
    //     0x7ee0ac: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ee0b0: ldr             x2, [x2, #0xb88]
    // 0x7ee0b4: StoreField: r1->field_b = r2
    //     0x7ee0b4: stur            w2, [x1, #0xb]
    // 0x7ee0b8: r3 = 18.000000
    //     0x7ee0b8: add             x3, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x7ee0bc: ldr             x3, [x3, #0xe08]
    // 0x7ee0c0: StoreField: r1->field_1f = r3
    //     0x7ee0c0: stur            w3, [x1, #0x1f]
    // 0x7ee0c4: r3 = Instance_FontWeight
    //     0x7ee0c4: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ee0c8: ldr             x3, [x3, #0x1d0]
    // 0x7ee0cc: StoreField: r1->field_23 = r3
    //     0x7ee0cc: stur            w3, [x1, #0x23]
    // 0x7ee0d0: r0 = Text()
    //     0x7ee0d0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ee0d4: mov             x2, x0
    // 0x7ee0d8: ldur            x0, [fp, #-8]
    // 0x7ee0dc: stur            x2, [fp, #-0x28]
    // 0x7ee0e0: StoreField: r2->field_b = r0
    //     0x7ee0e0: stur            w0, [x2, #0xb]
    // 0x7ee0e4: ldur            x0, [fp, #-0x20]
    // 0x7ee0e8: StoreField: r2->field_13 = r0
    //     0x7ee0e8: stur            w0, [x2, #0x13]
    // 0x7ee0ec: ldur            x0, [fp, #-0x10]
    // 0x7ee0f0: LoadField: r3 = r0->field_b
    //     0x7ee0f0: ldur            w3, [x0, #0xb]
    // 0x7ee0f4: DecompressPointer r3
    //     0x7ee0f4: add             x3, x3, HEAP, lsl #32
    // 0x7ee0f8: stur            x3, [fp, #-8]
    // 0x7ee0fc: r16 = 0.700000
    //     0x7ee0fc: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c7d0] 0.7
    //     0x7ee100: ldr             x16, [x16, #0x7d0]
    // 0x7ee104: str             x16, [SP]
    // 0x7ee108: r1 = Instance_Color
    //     0x7ee108: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ee10c: ldr             x1, [x1, #0xb88]
    // 0x7ee110: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ee110: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ee114: ldr             x4, [x4, #0x198]
    // 0x7ee118: r0 = withValues()
    //     0x7ee118: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ee11c: stur            x0, [fp, #-0x10]
    // 0x7ee120: r0 = TextStyle()
    //     0x7ee120: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ee124: mov             x1, x0
    // 0x7ee128: r0 = true
    //     0x7ee128: add             x0, NULL, #0x20  ; true
    // 0x7ee12c: stur            x1, [fp, #-0x20]
    // 0x7ee130: StoreField: r1->field_7 = r0
    //     0x7ee130: stur            w0, [x1, #7]
    // 0x7ee134: ldur            x0, [fp, #-0x10]
    // 0x7ee138: StoreField: r1->field_b = r0
    //     0x7ee138: stur            w0, [x1, #0xb]
    // 0x7ee13c: r0 = 14.000000
    //     0x7ee13c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7ee140: ldr             x0, [x0, #0x1c8]
    // 0x7ee144: StoreField: r1->field_1f = r0
    //     0x7ee144: stur            w0, [x1, #0x1f]
    // 0x7ee148: r0 = 1.500000
    //     0x7ee148: add             x0, PP, #0x15, lsl #12  ; [pp+0x154b0] 1.5
    //     0x7ee14c: ldr             x0, [x0, #0x4b0]
    // 0x7ee150: StoreField: r1->field_37 = r0
    //     0x7ee150: stur            w0, [x1, #0x37]
    // 0x7ee154: r0 = Text()
    //     0x7ee154: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ee158: mov             x3, x0
    // 0x7ee15c: ldur            x0, [fp, #-8]
    // 0x7ee160: stur            x3, [fp, #-0x10]
    // 0x7ee164: StoreField: r3->field_b = r0
    //     0x7ee164: stur            w0, [x3, #0xb]
    // 0x7ee168: ldur            x0, [fp, #-0x20]
    // 0x7ee16c: StoreField: r3->field_13 = r0
    //     0x7ee16c: stur            w0, [x3, #0x13]
    // 0x7ee170: r1 = Null
    //     0x7ee170: mov             x1, NULL
    // 0x7ee174: r2 = 6
    //     0x7ee174: mov             x2, #6
    // 0x7ee178: r0 = AllocateArray()
    //     0x7ee178: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ee17c: mov             x2, x0
    // 0x7ee180: ldur            x0, [fp, #-0x28]
    // 0x7ee184: stur            x2, [fp, #-8]
    // 0x7ee188: StoreField: r2->field_f = r0
    //     0x7ee188: stur            w0, [x2, #0xf]
    // 0x7ee18c: r16 = Instance_SizedBox
    //     0x7ee18c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7ee190: ldr             x16, [x16, #0x318]
    // 0x7ee194: StoreField: r2->field_13 = r16
    //     0x7ee194: stur            w16, [x2, #0x13]
    // 0x7ee198: ldur            x0, [fp, #-0x10]
    // 0x7ee19c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ee19c: stur            w0, [x2, #0x17]
    // 0x7ee1a0: r1 = <Widget>
    //     0x7ee1a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ee1a4: r0 = AllocateGrowableArray()
    //     0x7ee1a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ee1a8: mov             x1, x0
    // 0x7ee1ac: ldur            x0, [fp, #-8]
    // 0x7ee1b0: stur            x1, [fp, #-0x10]
    // 0x7ee1b4: StoreField: r1->field_f = r0
    //     0x7ee1b4: stur            w0, [x1, #0xf]
    // 0x7ee1b8: r0 = 6
    //     0x7ee1b8: mov             x0, #6
    // 0x7ee1bc: StoreField: r1->field_b = r0
    //     0x7ee1bc: stur            w0, [x1, #0xb]
    // 0x7ee1c0: r0 = Column()
    //     0x7ee1c0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ee1c4: mov             x1, x0
    // 0x7ee1c8: r0 = Instance_Axis
    //     0x7ee1c8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ee1cc: stur            x1, [fp, #-8]
    // 0x7ee1d0: StoreField: r1->field_f = r0
    //     0x7ee1d0: stur            w0, [x1, #0xf]
    // 0x7ee1d4: r0 = Instance_MainAxisAlignment
    //     0x7ee1d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ee1d8: ldr             x0, [x0, #0x230]
    // 0x7ee1dc: StoreField: r1->field_13 = r0
    //     0x7ee1dc: stur            w0, [x1, #0x13]
    // 0x7ee1e0: r0 = Instance_MainAxisSize
    //     0x7ee1e0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ee1e4: ldr             x0, [x0, #0x330]
    // 0x7ee1e8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ee1e8: stur            w0, [x1, #0x17]
    // 0x7ee1ec: r0 = Instance_CrossAxisAlignment
    //     0x7ee1ec: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ee1f0: ldr             x0, [x0, #0x238]
    // 0x7ee1f4: StoreField: r1->field_1b = r0
    //     0x7ee1f4: stur            w0, [x1, #0x1b]
    // 0x7ee1f8: r0 = Instance_VerticalDirection
    //     0x7ee1f8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ee1fc: ldr             x0, [x0, #0x340]
    // 0x7ee200: StoreField: r1->field_23 = r0
    //     0x7ee200: stur            w0, [x1, #0x23]
    // 0x7ee204: r0 = Instance_Clip
    //     0x7ee204: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ee208: ldr             x0, [x0, #0x348]
    // 0x7ee20c: StoreField: r1->field_2b = r0
    //     0x7ee20c: stur            w0, [x1, #0x2b]
    // 0x7ee210: StoreField: r1->field_2f = rZR
    //     0x7ee210: stur            xzr, [x1, #0x2f]
    // 0x7ee214: ldur            x0, [fp, #-0x10]
    // 0x7ee218: StoreField: r1->field_b = r0
    //     0x7ee218: stur            w0, [x1, #0xb]
    // 0x7ee21c: r0 = Container()
    //     0x7ee21c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ee220: stur            x0, [fp, #-0x10]
    // 0x7ee224: r16 = Instance_EdgeInsets
    //     0x7ee224: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c7d8] Obj!EdgeInsets@a0caa1
    //     0x7ee228: ldr             x16, [x16, #0x7d8]
    // 0x7ee22c: r30 = Instance_EdgeInsets
    //     0x7ee22c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7ee230: ldr             lr, [lr, #0x240]
    // 0x7ee234: stp             lr, x16, [SP, #0x10]
    // 0x7ee238: ldur            x16, [fp, #-0x18]
    // 0x7ee23c: ldur            lr, [fp, #-8]
    // 0x7ee240: stp             lr, x16, [SP]
    // 0x7ee244: mov             x1, x0
    // 0x7ee248: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x7ee248: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x7ee24c: ldr             x4, [x4, #0x628]
    // 0x7ee250: r0 = Container()
    //     0x7ee250: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ee254: ldur            x0, [fp, #-0x10]
    // 0x7ee258: LeaveFrame
    //     0x7ee258: mov             SP, fp
    //     0x7ee25c: ldp             fp, lr, [SP], #0x10
    // 0x7ee260: ret
    //     0x7ee260: ret             
    // 0x7ee264: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ee264: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ee268: b               #0x7ee070
  }
}

// class id: 2894, size: 0x10, field offset: 0xc
class MedineGezilecekYerlerScreen extends StatelessWidget {

  _ MedineGezilecekYerlerScreen(/* No info */) {
    // ** addr: 0x7ed9f0, size: 0x1d0
    // 0x7ed9f0: EnterFrame
    //     0x7ed9f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7ed9f4: mov             fp, SP
    // 0x7ed9f8: AllocStack(0x50)
    //     0x7ed9f8: sub             SP, SP, #0x50
    // 0x7ed9fc: SetupParameters(MedineGezilecekYerlerScreen this /* r1 => r1, fp-0x8 */)
    //     0x7ed9fc: stur            x1, [fp, #-8]
    // 0x7eda00: r0 = GezilecekYer()
    //     0x7eda00: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eda04: mov             x1, x0
    // 0x7eda08: r0 = "Mescid-i Nebevî (Peygamber Mescidi)"
    //     0x7eda08: add             x0, PP, #0x12, lsl #12  ; [pp+0x12418] "Mescid-i Nebevî (Peygamber Mescidi)"
    //     0x7eda0c: ldr             x0, [x0, #0x418]
    // 0x7eda10: stur            x1, [fp, #-0x10]
    // 0x7eda14: StoreField: r1->field_7 = r0
    //     0x7eda14: stur            w0, [x1, #7]
    // 0x7eda18: r0 = "Hz. Muhammed\'in inşa ettiği ve kabrinin bulunduğu mescit. Ravza-i Mutahhara burada yer alır. Burada kılınan namaz bin namaza denktir."
    //     0x7eda18: add             x0, PP, #0x12, lsl #12  ; [pp+0x12420] "Hz. Muhammed\'in inşa ettiği ve kabrinin bulunduğu mescit. Ravza-i Mutahhara burada yer alır. Burada kılınan namaz bin namaza denktir."
    //     0x7eda1c: ldr             x0, [x0, #0x420]
    // 0x7eda20: StoreField: r1->field_b = r0
    //     0x7eda20: stur            w0, [x1, #0xb]
    // 0x7eda24: r0 = GezilecekYer()
    //     0x7eda24: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eda28: mov             x1, x0
    // 0x7eda2c: r0 = "Cennetü\'l Baki (Baki Mezarlığı)"
    //     0x7eda2c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12428] "Cennetü\'l Baki (Baki Mezarlığı)"
    //     0x7eda30: ldr             x0, [x0, #0x428]
    // 0x7eda34: stur            x1, [fp, #-0x18]
    // 0x7eda38: StoreField: r1->field_7 = r0
    //     0x7eda38: stur            w0, [x1, #7]
    // 0x7eda3c: r0 = "Hz. Osman, Hz. Fatıma ve birçok sahabenin medfun bulunduğu tarihi mezarlık."
    //     0x7eda3c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12430] "Hz. Osman, Hz. Fatıma ve birçok sahabenin medfun bulunduğu tarihi mezarlık."
    //     0x7eda40: ldr             x0, [x0, #0x430]
    // 0x7eda44: StoreField: r1->field_b = r0
    //     0x7eda44: stur            w0, [x1, #0xb]
    // 0x7eda48: r0 = GezilecekYer()
    //     0x7eda48: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eda4c: mov             x1, x0
    // 0x7eda50: r0 = "Uhud Dağı ve Şehitliği"
    //     0x7eda50: add             x0, PP, #0x12, lsl #12  ; [pp+0x12438] "Uhud Dağı ve Şehitliği"
    //     0x7eda54: ldr             x0, [x0, #0x438]
    // 0x7eda58: stur            x1, [fp, #-0x20]
    // 0x7eda5c: StoreField: r1->field_7 = r0
    //     0x7eda5c: stur            w0, [x1, #7]
    // 0x7eda60: r0 = "Uhud Savaşı\'nın yaşandığı yer. Hz. Hamza ve diğer şehitlerin kabirleri burada bulunmaktadır."
    //     0x7eda60: add             x0, PP, #0x12, lsl #12  ; [pp+0x12440] "Uhud Savaşı\'nın yaşandığı yer. Hz. Hamza ve diğer şehitlerin kabirleri burada bulunmaktadır."
    //     0x7eda64: ldr             x0, [x0, #0x440]
    // 0x7eda68: StoreField: r1->field_b = r0
    //     0x7eda68: stur            w0, [x1, #0xb]
    // 0x7eda6c: r0 = GezilecekYer()
    //     0x7eda6c: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eda70: mov             x1, x0
    // 0x7eda74: r0 = "Kuba Mescidi"
    //     0x7eda74: add             x0, PP, #0x12, lsl #12  ; [pp+0x12448] "Kuba Mescidi"
    //     0x7eda78: ldr             x0, [x0, #0x448]
    // 0x7eda7c: stur            x1, [fp, #-0x28]
    // 0x7eda80: StoreField: r1->field_7 = r0
    //     0x7eda80: stur            w0, [x1, #7]
    // 0x7eda84: r0 = "İslam tarihinin ilk mescidi. Hz. Peygamber tarafından Medine\'ye hicretten hemen sonra inşa edilmiştir. Burada kılınan namaz umre sevabına denktir."
    //     0x7eda84: add             x0, PP, #0x12, lsl #12  ; [pp+0x12450] "İslam tarihinin ilk mescidi. Hz. Peygamber tarafından Medine\'ye hicretten hemen sonra inşa edilmiştir. Burada kılınan namaz umre sevabına denktir."
    //     0x7eda88: ldr             x0, [x0, #0x450]
    // 0x7eda8c: StoreField: r1->field_b = r0
    //     0x7eda8c: stur            w0, [x1, #0xb]
    // 0x7eda90: r0 = GezilecekYer()
    //     0x7eda90: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eda94: mov             x1, x0
    // 0x7eda98: r0 = "Mescid-i Kıbleteyn (İki Kıbleli Mescit)"
    //     0x7eda98: add             x0, PP, #0x12, lsl #12  ; [pp+0x12458] "Mescid-i Kıbleteyn (İki Kıbleli Mescit)"
    //     0x7eda9c: ldr             x0, [x0, #0x458]
    // 0x7edaa0: stur            x1, [fp, #-0x30]
    // 0x7edaa4: StoreField: r1->field_7 = r0
    //     0x7edaa4: stur            w0, [x1, #7]
    // 0x7edaa8: r0 = "Namaz kıblesinin Kudüs\'ten Kâbe\'ye döndürüldüğü mescit. İslam tarihinde önemli bir dönüm noktasını temsil eder."
    //     0x7edaa8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12460] "Namaz kıblesinin Kudüs\'ten Kâbe\'ye döndürüldüğü mescit. İslam tarihinde önemli bir dönüm noktasını temsil eder."
    //     0x7edaac: ldr             x0, [x0, #0x460]
    // 0x7edab0: StoreField: r1->field_b = r0
    //     0x7edab0: stur            w0, [x1, #0xb]
    // 0x7edab4: r0 = GezilecekYer()
    //     0x7edab4: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edab8: mov             x1, x0
    // 0x7edabc: r0 = "Mescid-i Zülhuleyfe (Mîkât Mescidi)"
    //     0x7edabc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12468] "Mescid-i Zülhuleyfe (Mîkât Mescidi)"
    //     0x7edac0: ldr             x0, [x0, #0x468]
    // 0x7edac4: stur            x1, [fp, #-0x38]
    // 0x7edac8: StoreField: r1->field_7 = r0
    //     0x7edac8: stur            w0, [x1, #7]
    // 0x7edacc: r0 = "Medine\'den umre veya hac için ihrama girilen mîkât noktası. Bi\'r-i Ali olarak da bilinir."
    //     0x7edacc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12470] "Medine\'den umre veya hac için ihrama girilen mîkât noktası. Bi\'r-i Ali olarak da bilinir."
    //     0x7edad0: ldr             x0, [x0, #0x470]
    // 0x7edad4: StoreField: r1->field_b = r0
    //     0x7edad4: stur            w0, [x1, #0xb]
    // 0x7edad8: r0 = GezilecekYer()
    //     0x7edad8: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edadc: mov             x1, x0
    // 0x7edae0: r0 = "Yedi Mescitler (Mescid-i Seb\'a)"
    //     0x7edae0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12478] "Yedi Mescitler (Mescid-i Seb\'a)"
    //     0x7edae4: ldr             x0, [x0, #0x478]
    // 0x7edae8: stur            x1, [fp, #-0x40]
    // 0x7edaec: StoreField: r1->field_7 = r0
    //     0x7edaec: stur            w0, [x1, #7]
    // 0x7edaf0: r0 = "Hendek Savaşı\'nın gerçekleştiği bölgede bulunan tarihi mescitler topluluğu."
    //     0x7edaf0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12480] "Hendek Savaşı\'nın gerçekleştiği bölgede bulunan tarihi mescitler topluluğu."
    //     0x7edaf4: ldr             x0, [x0, #0x480]
    // 0x7edaf8: StoreField: r1->field_b = r0
    //     0x7edaf8: stur            w0, [x1, #0xb]
    // 0x7edafc: r0 = GezilecekYer()
    //     0x7edafc: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edb00: mov             x3, x0
    // 0x7edb04: r0 = "Diğer Önemli Yerler"
    //     0x7edb04: add             x0, PP, #0x12, lsl #12  ; [pp+0x12488] "Diğer Önemli Yerler"
    //     0x7edb08: ldr             x0, [x0, #0x488]
    // 0x7edb0c: stur            x3, [fp, #-0x48]
    // 0x7edb10: StoreField: r3->field_7 = r0
    //     0x7edb10: stur            w0, [x3, #7]
    // 0x7edb14: r0 = "Mescid-i Gamame, Mescid-i Ebu Bekir, Osmanlı Hicaz Demiryolu İstasyonu ve diğer tarihi mekânlar."
    //     0x7edb14: add             x0, PP, #0x12, lsl #12  ; [pp+0x12490] "Mescid-i Gamame, Mescid-i Ebu Bekir, Osmanlı Hicaz Demiryolu İstasyonu ve diğer tarihi mekânlar."
    //     0x7edb18: ldr             x0, [x0, #0x490]
    // 0x7edb1c: StoreField: r3->field_b = r0
    //     0x7edb1c: stur            w0, [x3, #0xb]
    // 0x7edb20: r1 = Null
    //     0x7edb20: mov             x1, NULL
    // 0x7edb24: r2 = 16
    //     0x7edb24: mov             x2, #0x10
    // 0x7edb28: r0 = AllocateArray()
    //     0x7edb28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7edb2c: mov             x2, x0
    // 0x7edb30: ldur            x0, [fp, #-0x10]
    // 0x7edb34: stur            x2, [fp, #-0x50]
    // 0x7edb38: StoreField: r2->field_f = r0
    //     0x7edb38: stur            w0, [x2, #0xf]
    // 0x7edb3c: ldur            x0, [fp, #-0x18]
    // 0x7edb40: StoreField: r2->field_13 = r0
    //     0x7edb40: stur            w0, [x2, #0x13]
    // 0x7edb44: ldur            x0, [fp, #-0x20]
    // 0x7edb48: ArrayStore: r2[0] = r0  ; List_4
    //     0x7edb48: stur            w0, [x2, #0x17]
    // 0x7edb4c: ldur            x0, [fp, #-0x28]
    // 0x7edb50: StoreField: r2->field_1b = r0
    //     0x7edb50: stur            w0, [x2, #0x1b]
    // 0x7edb54: ldur            x0, [fp, #-0x30]
    // 0x7edb58: StoreField: r2->field_1f = r0
    //     0x7edb58: stur            w0, [x2, #0x1f]
    // 0x7edb5c: ldur            x0, [fp, #-0x38]
    // 0x7edb60: StoreField: r2->field_23 = r0
    //     0x7edb60: stur            w0, [x2, #0x23]
    // 0x7edb64: ldur            x0, [fp, #-0x40]
    // 0x7edb68: StoreField: r2->field_27 = r0
    //     0x7edb68: stur            w0, [x2, #0x27]
    // 0x7edb6c: ldur            x0, [fp, #-0x48]
    // 0x7edb70: StoreField: r2->field_2b = r0
    //     0x7edb70: stur            w0, [x2, #0x2b]
    // 0x7edb74: r1 = <GezilecekYer>
    //     0x7edb74: add             x1, PP, #0x12, lsl #12  ; [pp+0x12498] TypeArguments: <GezilecekYer>
    //     0x7edb78: ldr             x1, [x1, #0x498]
    // 0x7edb7c: r0 = AllocateGrowableArray()
    //     0x7edb7c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7edb80: ldur            x1, [fp, #-0x50]
    // 0x7edb84: StoreField: r0->field_f = r1
    //     0x7edb84: stur            w1, [x0, #0xf]
    // 0x7edb88: r1 = 16
    //     0x7edb88: mov             x1, #0x10
    // 0x7edb8c: StoreField: r0->field_b = r1
    //     0x7edb8c: stur            w1, [x0, #0xb]
    // 0x7edb90: ldur            x1, [fp, #-8]
    // 0x7edb94: StoreField: r1->field_b = r0
    //     0x7edb94: stur            w0, [x1, #0xb]
    //     0x7edb98: ldurb           w16, [x1, #-1]
    //     0x7edb9c: ldurb           w17, [x0, #-1]
    //     0x7edba0: and             x16, x17, x16, lsr #2
    //     0x7edba4: tst             x16, HEAP, lsr #32
    //     0x7edba8: b.eq            #0x7edbb0
    //     0x7edbac: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7edbb0: r0 = Null
    //     0x7edbb0: mov             x0, NULL
    // 0x7edbb4: LeaveFrame
    //     0x7edbb4: mov             SP, fp
    //     0x7edbb8: ldp             fp, lr, [SP], #0x10
    // 0x7edbbc: ret
    //     0x7edbbc: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x7ee018, size: 0x3c
    // 0x7ee018: EnterFrame
    //     0x7ee018: stp             fp, lr, [SP, #-0x10]!
    //     0x7ee01c: mov             fp, SP
    // 0x7ee020: CheckStackOverflow
    //     0x7ee020: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ee024: cmp             SP, x16
    //     0x7ee028: b.ls            #0x7ee04c
    // 0x7ee02c: LoadField: r3 = r1->field_b
    //     0x7ee02c: ldur            w3, [x1, #0xb]
    // 0x7ee030: DecompressPointer r3
    //     0x7ee030: add             x3, x3, HEAP, lsl #32
    // 0x7ee034: r1 = "Medine Gezilecek Yerler"
    //     0x7ee034: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e48] "Medine Gezilecek Yerler"
    //     0x7ee038: ldr             x1, [x1, #0xe48]
    // 0x7ee03c: r0 = _buildGezilecekYerlerListesi()
    //     0x7ee03c: bl              #0x6ce158  ; [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi
    // 0x7ee040: LeaveFrame
    //     0x7ee040: mov             SP, fp
    //     0x7ee044: ldp             fp, lr, [SP], #0x10
    // 0x7ee048: ret
    //     0x7ee048: ret             
    // 0x7ee04c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ee04c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ee050: b               #0x7ee02c
  }
}

// class id: 2895, size: 0x10, field offset: 0xc
class MekkeGezilecekYerlerScreen extends StatelessWidget {

  _ MekkeGezilecekYerlerScreen(/* No info */) {
    // ** addr: 0x7edc38, size: 0x398
    // 0x7edc38: EnterFrame
    //     0x7edc38: stp             fp, lr, [SP, #-0x10]!
    //     0x7edc3c: mov             fp, SP
    // 0x7edc40: AllocStack(0x18)
    //     0x7edc40: sub             SP, SP, #0x18
    // 0x7edc44: SetupParameters(MekkeGezilecekYerlerScreen this /* r1 => r1, fp-0x8 */)
    //     0x7edc44: stur            x1, [fp, #-8]
    // 0x7edc48: r0 = GezilecekYer()
    //     0x7edc48: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edc4c: mov             x3, x0
    // 0x7edc50: r0 = "Mescid-i Haram ve Kâbe"
    //     0x7edc50: add             x0, PP, #0x12, lsl #12  ; [pp+0x124a0] "Mescid-i Haram ve Kâbe"
    //     0x7edc54: ldr             x0, [x0, #0x4a0]
    // 0x7edc58: stur            x3, [fp, #-0x10]
    // 0x7edc5c: StoreField: r3->field_7 = r0
    //     0x7edc5c: stur            w0, [x3, #7]
    // 0x7edc60: r0 = "İslam\'ın en kutsal mekânı olan Kâbe, Mescid-i Haram\'ın ortasında yer alır. Müslümanlar günde beş vakit namazda Kâbe\'ye yönelir ve hac ile umre ibadetlerini burada gerçekleştirir."
    //     0x7edc60: add             x0, PP, #0x12, lsl #12  ; [pp+0x124a8] "İslam\'ın en kutsal mekânı olan Kâbe, Mescid-i Haram\'ın ortasında yer alır. Müslümanlar günde beş vakit namazda Kâbe\'ye yönelir ve hac ile umre ibadetlerini burada gerçekleştirir."
    //     0x7edc64: ldr             x0, [x0, #0x4a8]
    // 0x7edc68: StoreField: r3->field_b = r0
    //     0x7edc68: stur            w0, [x3, #0xb]
    // 0x7edc6c: r1 = <GezilecekYer>
    //     0x7edc6c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12498] TypeArguments: <GezilecekYer>
    //     0x7edc70: ldr             x1, [x1, #0x498]
    // 0x7edc74: r2 = 22
    //     0x7edc74: mov             x2, #0x16
    // 0x7edc78: r0 = AllocateArray()
    //     0x7edc78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7edc7c: mov             x1, x0
    // 0x7edc80: ldur            x0, [fp, #-0x10]
    // 0x7edc84: stur            x1, [fp, #-0x18]
    // 0x7edc88: StoreField: r1->field_f = r0
    //     0x7edc88: stur            w0, [x1, #0xf]
    // 0x7edc8c: r0 = GezilecekYer()
    //     0x7edc8c: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edc90: mov             x1, x0
    // 0x7edc94: r0 = "Safa ve Merve Tepeleri"
    //     0x7edc94: add             x0, PP, #0x12, lsl #12  ; [pp+0x124b0] "Safa ve Merve Tepeleri"
    //     0x7edc98: ldr             x0, [x0, #0x4b0]
    // 0x7edc9c: StoreField: r1->field_7 = r0
    //     0x7edc9c: stur            w0, [x1, #7]
    // 0x7edca0: r0 = "Hz. Hacer\'in oğlu İsmail için su arayışını simgeleyen bu iki tepe arasında sa\'y ibadeti yapılır. Hac ve umrenin önemli rükünlerinden biridir."
    //     0x7edca0: add             x0, PP, #0x12, lsl #12  ; [pp+0x124b8] "Hz. Hacer\'in oğlu İsmail için su arayışını simgeleyen bu iki tepe arasında sa\'y ibadeti yapılır. Hac ve umrenin önemli rükünlerinden biridir."
    //     0x7edca4: ldr             x0, [x0, #0x4b8]
    // 0x7edca8: StoreField: r1->field_b = r0
    //     0x7edca8: stur            w0, [x1, #0xb]
    // 0x7edcac: mov             x0, x1
    // 0x7edcb0: ldur            x1, [fp, #-0x18]
    // 0x7edcb4: ArrayStore: r1[1] = r0  ; List_4
    //     0x7edcb4: add             x25, x1, #0x13
    //     0x7edcb8: str             w0, [x25]
    //     0x7edcbc: tbz             w0, #0, #0x7edcd8
    //     0x7edcc0: ldurb           w16, [x1, #-1]
    //     0x7edcc4: ldurb           w17, [x0, #-1]
    //     0x7edcc8: and             x16, x17, x16, lsr #2
    //     0x7edccc: tst             x16, HEAP, lsr #32
    //     0x7edcd0: b.eq            #0x7edcd8
    //     0x7edcd4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edcd8: r0 = GezilecekYer()
    //     0x7edcd8: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edcdc: mov             x1, x0
    // 0x7edce0: r0 = "Zemzem Kuyusu"
    //     0x7edce0: add             x0, PP, #0x12, lsl #12  ; [pp+0x124c0] "Zemzem Kuyusu"
    //     0x7edce4: ldr             x0, [x0, #0x4c0]
    // 0x7edce8: StoreField: r1->field_7 = r0
    //     0x7edce8: stur            w0, [x1, #7]
    // 0x7edcec: r0 = "Hz. İsmail\'in ayağının altından çıkan mübarek su kaynağı. Binlerce yıldır akmaya devam eden ve şifa niyetiyle içilen kutsal sudur."
    //     0x7edcec: add             x0, PP, #0x12, lsl #12  ; [pp+0x124c8] "Hz. İsmail\'in ayağının altından çıkan mübarek su kaynağı. Binlerce yıldır akmaya devam eden ve şifa niyetiyle içilen kutsal sudur."
    //     0x7edcf0: ldr             x0, [x0, #0x4c8]
    // 0x7edcf4: StoreField: r1->field_b = r0
    //     0x7edcf4: stur            w0, [x1, #0xb]
    // 0x7edcf8: mov             x0, x1
    // 0x7edcfc: ldur            x1, [fp, #-0x18]
    // 0x7edd00: ArrayStore: r1[2] = r0  ; List_4
    //     0x7edd00: add             x25, x1, #0x17
    //     0x7edd04: str             w0, [x25]
    //     0x7edd08: tbz             w0, #0, #0x7edd24
    //     0x7edd0c: ldurb           w16, [x1, #-1]
    //     0x7edd10: ldurb           w17, [x0, #-1]
    //     0x7edd14: and             x16, x17, x16, lsr #2
    //     0x7edd18: tst             x16, HEAP, lsr #32
    //     0x7edd1c: b.eq            #0x7edd24
    //     0x7edd20: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edd24: r0 = GezilecekYer()
    //     0x7edd24: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edd28: mov             x1, x0
    // 0x7edd2c: r0 = "Nur Dağı (Cebel-i Nur) ve Hira Mağarası"
    //     0x7edd2c: add             x0, PP, #0x12, lsl #12  ; [pp+0x124d0] "Nur Dağı (Cebel-i Nur) ve Hira Mağarası"
    //     0x7edd30: ldr             x0, [x0, #0x4d0]
    // 0x7edd34: StoreField: r1->field_7 = r0
    //     0x7edd34: stur            w0, [x1, #7]
    // 0x7edd38: r0 = "Hz. Muhammed\'e ilk vahyin geldiği mağara burada bulunmaktadır. Peygamber Efendimiz burada tefekkür ederdi."
    //     0x7edd38: add             x0, PP, #0x12, lsl #12  ; [pp+0x124d8] "Hz. Muhammed\'e ilk vahyin geldiği mağara burada bulunmaktadır. Peygamber Efendimiz burada tefekkür ederdi."
    //     0x7edd3c: ldr             x0, [x0, #0x4d8]
    // 0x7edd40: StoreField: r1->field_b = r0
    //     0x7edd40: stur            w0, [x1, #0xb]
    // 0x7edd44: mov             x0, x1
    // 0x7edd48: ldur            x1, [fp, #-0x18]
    // 0x7edd4c: ArrayStore: r1[3] = r0  ; List_4
    //     0x7edd4c: add             x25, x1, #0x1b
    //     0x7edd50: str             w0, [x25]
    //     0x7edd54: tbz             w0, #0, #0x7edd70
    //     0x7edd58: ldurb           w16, [x1, #-1]
    //     0x7edd5c: ldurb           w17, [x0, #-1]
    //     0x7edd60: and             x16, x17, x16, lsr #2
    //     0x7edd64: tst             x16, HEAP, lsr #32
    //     0x7edd68: b.eq            #0x7edd70
    //     0x7edd6c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edd70: r0 = GezilecekYer()
    //     0x7edd70: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edd74: mov             x1, x0
    // 0x7edd78: r0 = "Sevr Dağı ve Sevr Mağarası"
    //     0x7edd78: add             x0, PP, #0x12, lsl #12  ; [pp+0x124e0] "Sevr Dağı ve Sevr Mağarası"
    //     0x7edd7c: ldr             x0, [x0, #0x4e0]
    // 0x7edd80: StoreField: r1->field_7 = r0
    //     0x7edd80: stur            w0, [x1, #7]
    // 0x7edd84: r0 = "Hz. Muhammed ve Hz. Ebu Bekir\'in hicret sırasında sığındıkları mağara. Örümcek ağı ve güvercin yuvası mucizesiyle bilinir."
    //     0x7edd84: add             x0, PP, #0x12, lsl #12  ; [pp+0x124e8] "Hz. Muhammed ve Hz. Ebu Bekir\'in hicret sırasında sığındıkları mağara. Örümcek ağı ve güvercin yuvası mucizesiyle bilinir."
    //     0x7edd88: ldr             x0, [x0, #0x4e8]
    // 0x7edd8c: StoreField: r1->field_b = r0
    //     0x7edd8c: stur            w0, [x1, #0xb]
    // 0x7edd90: mov             x0, x1
    // 0x7edd94: ldur            x1, [fp, #-0x18]
    // 0x7edd98: ArrayStore: r1[4] = r0  ; List_4
    //     0x7edd98: add             x25, x1, #0x1f
    //     0x7edd9c: str             w0, [x25]
    //     0x7edda0: tbz             w0, #0, #0x7eddbc
    //     0x7edda4: ldurb           w16, [x1, #-1]
    //     0x7edda8: ldurb           w17, [x0, #-1]
    //     0x7eddac: and             x16, x17, x16, lsr #2
    //     0x7eddb0: tst             x16, HEAP, lsr #32
    //     0x7eddb4: b.eq            #0x7eddbc
    //     0x7eddb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7eddbc: r0 = GezilecekYer()
    //     0x7eddbc: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7eddc0: mov             x1, x0
    // 0x7eddc4: r0 = "Cennetü\'l Muallâ Mezarlığı"
    //     0x7eddc4: add             x0, PP, #0x12, lsl #12  ; [pp+0x124f0] "Cennetü\'l Muallâ Mezarlığı"
    //     0x7eddc8: ldr             x0, [x0, #0x4f0]
    // 0x7eddcc: StoreField: r1->field_7 = r0
    //     0x7eddcc: stur            w0, [x1, #7]
    // 0x7eddd0: r0 = "Hz. Hatice, Hz. Abdulmuttalib ve birçok sahabenin medfun bulunduğu tarihi mezarlık."
    //     0x7eddd0: add             x0, PP, #0x12, lsl #12  ; [pp+0x124f8] "Hz. Hatice, Hz. Abdulmuttalib ve birçok sahabenin medfun bulunduğu tarihi mezarlık."
    //     0x7eddd4: ldr             x0, [x0, #0x4f8]
    // 0x7eddd8: StoreField: r1->field_b = r0
    //     0x7eddd8: stur            w0, [x1, #0xb]
    // 0x7edddc: mov             x0, x1
    // 0x7edde0: ldur            x1, [fp, #-0x18]
    // 0x7edde4: ArrayStore: r1[5] = r0  ; List_4
    //     0x7edde4: add             x25, x1, #0x23
    //     0x7edde8: str             w0, [x25]
    //     0x7eddec: tbz             w0, #0, #0x7ede08
    //     0x7eddf0: ldurb           w16, [x1, #-1]
    //     0x7eddf4: ldurb           w17, [x0, #-1]
    //     0x7eddf8: and             x16, x17, x16, lsr #2
    //     0x7eddfc: tst             x16, HEAP, lsr #32
    //     0x7ede00: b.eq            #0x7ede08
    //     0x7ede04: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ede08: r0 = GezilecekYer()
    //     0x7ede08: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7ede0c: mov             x1, x0
    // 0x7ede10: r0 = "Mescid-i Cin"
    //     0x7ede10: add             x0, PP, #0x12, lsl #12  ; [pp+0x12500] "Mescid-i Cin"
    //     0x7ede14: ldr             x0, [x0, #0x500]
    // 0x7ede18: StoreField: r1->field_7 = r0
    //     0x7ede18: stur            w0, [x1, #7]
    // 0x7ede1c: r0 = "Cinlerin Hz. Peygamber\'den Kur\'an dinleyip Müslüman olduğu rivayet edilen yer."
    //     0x7ede1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12508] "Cinlerin Hz. Peygamber\'den Kur\'an dinleyip Müslüman olduğu rivayet edilen yer."
    //     0x7ede20: ldr             x0, [x0, #0x508]
    // 0x7ede24: StoreField: r1->field_b = r0
    //     0x7ede24: stur            w0, [x1, #0xb]
    // 0x7ede28: mov             x0, x1
    // 0x7ede2c: ldur            x1, [fp, #-0x18]
    // 0x7ede30: ArrayStore: r1[6] = r0  ; List_4
    //     0x7ede30: add             x25, x1, #0x27
    //     0x7ede34: str             w0, [x25]
    //     0x7ede38: tbz             w0, #0, #0x7ede54
    //     0x7ede3c: ldurb           w16, [x1, #-1]
    //     0x7ede40: ldurb           w17, [x0, #-1]
    //     0x7ede44: and             x16, x17, x16, lsr #2
    //     0x7ede48: tst             x16, HEAP, lsr #32
    //     0x7ede4c: b.eq            #0x7ede54
    //     0x7ede50: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ede54: r0 = GezilecekYer()
    //     0x7ede54: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7ede58: mov             x1, x0
    // 0x7ede5c: r0 = "Mina"
    //     0x7ede5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12510] "Mina"
    //     0x7ede60: ldr             x0, [x0, #0x510]
    // 0x7ede64: StoreField: r1->field_7 = r0
    //     0x7ede64: stur            w0, [x1, #7]
    // 0x7ede68: r0 = "Hac ibadetinin önemli duraklarından biri. Şeytan taşlama ve kurban kesme burada gerçekleştirilir."
    //     0x7ede68: add             x0, PP, #0x12, lsl #12  ; [pp+0x12518] "Hac ibadetinin önemli duraklarından biri. Şeytan taşlama ve kurban kesme burada gerçekleştirilir."
    //     0x7ede6c: ldr             x0, [x0, #0x518]
    // 0x7ede70: StoreField: r1->field_b = r0
    //     0x7ede70: stur            w0, [x1, #0xb]
    // 0x7ede74: mov             x0, x1
    // 0x7ede78: ldur            x1, [fp, #-0x18]
    // 0x7ede7c: ArrayStore: r1[7] = r0  ; List_4
    //     0x7ede7c: add             x25, x1, #0x2b
    //     0x7ede80: str             w0, [x25]
    //     0x7ede84: tbz             w0, #0, #0x7edea0
    //     0x7ede88: ldurb           w16, [x1, #-1]
    //     0x7ede8c: ldurb           w17, [x0, #-1]
    //     0x7ede90: and             x16, x17, x16, lsr #2
    //     0x7ede94: tst             x16, HEAP, lsr #32
    //     0x7ede98: b.eq            #0x7edea0
    //     0x7ede9c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edea0: r0 = GezilecekYer()
    //     0x7edea0: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edea4: mov             x1, x0
    // 0x7edea8: r0 = "Arafat Ovası ve Cebel-i Rahme"
    //     0x7edea8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12520] "Arafat Ovası ve Cebel-i Rahme"
    //     0x7edeac: ldr             x0, [x0, #0x520]
    // 0x7edeb0: StoreField: r1->field_7 = r0
    //     0x7edeb0: stur            w0, [x1, #7]
    // 0x7edeb4: r0 = "Haccın en önemli rüknü olan vakfenin yapıldığı yer. Hz. Adem ve Hz. Havva\'nın buluştuğu rivayet edilen Rahmet Dağı burada bulunur."
    //     0x7edeb4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12528] "Haccın en önemli rüknü olan vakfenin yapıldığı yer. Hz. Adem ve Hz. Havva\'nın buluştuğu rivayet edilen Rahmet Dağı burada bulunur."
    //     0x7edeb8: ldr             x0, [x0, #0x528]
    // 0x7edebc: StoreField: r1->field_b = r0
    //     0x7edebc: stur            w0, [x1, #0xb]
    // 0x7edec0: mov             x0, x1
    // 0x7edec4: ldur            x1, [fp, #-0x18]
    // 0x7edec8: ArrayStore: r1[8] = r0  ; List_4
    //     0x7edec8: add             x25, x1, #0x2f
    //     0x7edecc: str             w0, [x25]
    //     0x7eded0: tbz             w0, #0, #0x7edeec
    //     0x7eded4: ldurb           w16, [x1, #-1]
    //     0x7eded8: ldurb           w17, [x0, #-1]
    //     0x7ededc: and             x16, x17, x16, lsr #2
    //     0x7edee0: tst             x16, HEAP, lsr #32
    //     0x7edee4: b.eq            #0x7edeec
    //     0x7edee8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edeec: r0 = GezilecekYer()
    //     0x7edeec: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edef0: mov             x1, x0
    // 0x7edef4: r0 = "Müzdelife"
    //     0x7edef4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12530] "Müzdelife"
    //     0x7edef8: ldr             x0, [x0, #0x530]
    // 0x7edefc: StoreField: r1->field_7 = r0
    //     0x7edefc: stur            w0, [x1, #7]
    // 0x7edf00: r0 = "Arafat ile Mina arasında bulunan ve hacıların gecelediği bölge. Meş\'ar-i Haram burada yer alır."
    //     0x7edf00: add             x0, PP, #0x12, lsl #12  ; [pp+0x12538] "Arafat ile Mina arasında bulunan ve hacıların gecelediği bölge. Meş\'ar-i Haram burada yer alır."
    //     0x7edf04: ldr             x0, [x0, #0x538]
    // 0x7edf08: StoreField: r1->field_b = r0
    //     0x7edf08: stur            w0, [x1, #0xb]
    // 0x7edf0c: mov             x0, x1
    // 0x7edf10: ldur            x1, [fp, #-0x18]
    // 0x7edf14: ArrayStore: r1[9] = r0  ; List_4
    //     0x7edf14: add             x25, x1, #0x33
    //     0x7edf18: str             w0, [x25]
    //     0x7edf1c: tbz             w0, #0, #0x7edf38
    //     0x7edf20: ldurb           w16, [x1, #-1]
    //     0x7edf24: ldurb           w17, [x0, #-1]
    //     0x7edf28: and             x16, x17, x16, lsr #2
    //     0x7edf2c: tst             x16, HEAP, lsr #32
    //     0x7edf30: b.eq            #0x7edf38
    //     0x7edf34: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edf38: r0 = GezilecekYer()
    //     0x7edf38: bl              #0x7edbc0  ; AllocateGezilecekYerStub -> GezilecekYer (size=0x10)
    // 0x7edf3c: mov             x1, x0
    // 0x7edf40: r0 = "Diğer Önemli Yerler"
    //     0x7edf40: add             x0, PP, #0x12, lsl #12  ; [pp+0x12488] "Diğer Önemli Yerler"
    //     0x7edf44: ldr             x0, [x0, #0x488]
    // 0x7edf48: StoreField: r1->field_7 = r0
    //     0x7edf48: stur            w0, [x1, #7]
    // 0x7edf4c: r0 = "Hz. Peygamber\'in doğduğu ev (Mekke Kütüphanesi), Daru\'l-Erkam, Hz. Ebu Bekir\'in evi ve diğer tarihi mekânlar."
    //     0x7edf4c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12540] "Hz. Peygamber\'in doğduğu ev (Mekke Kütüphanesi), Daru\'l-Erkam, Hz. Ebu Bekir\'in evi ve diğer tarihi mekânlar."
    //     0x7edf50: ldr             x0, [x0, #0x540]
    // 0x7edf54: StoreField: r1->field_b = r0
    //     0x7edf54: stur            w0, [x1, #0xb]
    // 0x7edf58: mov             x0, x1
    // 0x7edf5c: ldur            x1, [fp, #-0x18]
    // 0x7edf60: ArrayStore: r1[10] = r0  ; List_4
    //     0x7edf60: add             x25, x1, #0x37
    //     0x7edf64: str             w0, [x25]
    //     0x7edf68: tbz             w0, #0, #0x7edf84
    //     0x7edf6c: ldurb           w16, [x1, #-1]
    //     0x7edf70: ldurb           w17, [x0, #-1]
    //     0x7edf74: and             x16, x17, x16, lsr #2
    //     0x7edf78: tst             x16, HEAP, lsr #32
    //     0x7edf7c: b.eq            #0x7edf84
    //     0x7edf80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7edf84: r1 = <GezilecekYer>
    //     0x7edf84: add             x1, PP, #0x12, lsl #12  ; [pp+0x12498] TypeArguments: <GezilecekYer>
    //     0x7edf88: ldr             x1, [x1, #0x498]
    // 0x7edf8c: r0 = AllocateGrowableArray()
    //     0x7edf8c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7edf90: ldur            x1, [fp, #-0x18]
    // 0x7edf94: StoreField: r0->field_f = r1
    //     0x7edf94: stur            w1, [x0, #0xf]
    // 0x7edf98: r1 = 22
    //     0x7edf98: mov             x1, #0x16
    // 0x7edf9c: StoreField: r0->field_b = r1
    //     0x7edf9c: stur            w1, [x0, #0xb]
    // 0x7edfa0: ldur            x1, [fp, #-8]
    // 0x7edfa4: StoreField: r1->field_b = r0
    //     0x7edfa4: stur            w0, [x1, #0xb]
    //     0x7edfa8: ldurb           w16, [x1, #-1]
    //     0x7edfac: ldurb           w17, [x0, #-1]
    //     0x7edfb0: and             x16, x17, x16, lsr #2
    //     0x7edfb4: tst             x16, HEAP, lsr #32
    //     0x7edfb8: b.eq            #0x7edfc0
    //     0x7edfbc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7edfc0: r0 = Null
    //     0x7edfc0: mov             x0, NULL
    // 0x7edfc4: LeaveFrame
    //     0x7edfc4: mov             SP, fp
    //     0x7edfc8: ldp             fp, lr, [SP], #0x10
    // 0x7edfcc: ret
    //     0x7edfcc: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x7edfdc, size: 0x3c
    // 0x7edfdc: EnterFrame
    //     0x7edfdc: stp             fp, lr, [SP, #-0x10]!
    //     0x7edfe0: mov             fp, SP
    // 0x7edfe4: CheckStackOverflow
    //     0x7edfe4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7edfe8: cmp             SP, x16
    //     0x7edfec: b.ls            #0x7ee010
    // 0x7edff0: LoadField: r3 = r1->field_b
    //     0x7edff0: ldur            w3, [x1, #0xb]
    // 0x7edff4: DecompressPointer r3
    //     0x7edff4: add             x3, x3, HEAP, lsl #32
    // 0x7edff8: r1 = "Mekke Gezilecek Yerler"
    //     0x7edff8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e70] "Mekke Gezilecek Yerler"
    //     0x7edffc: ldr             x1, [x1, #0xe70]
    // 0x7ee000: r0 = _buildGezilecekYerlerListesi()
    //     0x7ee000: bl              #0x6ce158  ; [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi
    // 0x7ee004: LeaveFrame
    //     0x7ee004: mov             SP, fp
    //     0x7ee008: ldp             fp, lr, [SP], #0x10
    // 0x7ee00c: ret
    //     0x7ee00c: ret             
    // 0x7ee010: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ee010: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ee014: b               #0x7edff0
  }
}

// class id: 2896, size: 0x10, field offset: 0xc
class GezilecekYerlerScreen extends StatelessWidget {

  _ GezilecekYerlerScreen(/* No info */) {
    // ** addr: 0x732c90, size: 0x140
    // 0x732c90: EnterFrame
    //     0x732c90: stp             fp, lr, [SP, #-0x10]!
    //     0x732c94: mov             fp, SP
    // 0x732c98: AllocStack(0x20)
    //     0x732c98: sub             SP, SP, #0x20
    // 0x732c9c: r0 = 2
    //     0x732c9c: mov             x0, #2
    // 0x732ca0: mov             x2, x0
    // 0x732ca4: mov             x3, x1
    // 0x732ca8: stur            x1, [fp, #-8]
    // 0x732cac: r1 = Null
    //     0x732cac: mov             x1, NULL
    // 0x732cb0: r0 = AllocateArray()
    //     0x732cb0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x732cb4: stur            x0, [fp, #-0x10]
    // 0x732cb8: r16 = "assets/images/kabe.webp"
    //     0x732cb8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11de8] "assets/images/kabe.webp"
    //     0x732cbc: ldr             x16, [x16, #0xde8]
    // 0x732cc0: StoreField: r0->field_f = r16
    //     0x732cc0: stur            w16, [x0, #0xf]
    // 0x732cc4: r1 = <String>
    //     0x732cc4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x732cc8: r0 = AllocateGrowableArray()
    //     0x732cc8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x732ccc: mov             x1, x0
    // 0x732cd0: ldur            x0, [fp, #-0x10]
    // 0x732cd4: stur            x1, [fp, #-0x18]
    // 0x732cd8: StoreField: r1->field_f = r0
    //     0x732cd8: stur            w0, [x1, #0xf]
    // 0x732cdc: r2 = 2
    //     0x732cdc: mov             x2, #2
    // 0x732ce0: StoreField: r1->field_b = r2
    //     0x732ce0: stur            w2, [x1, #0xb]
    // 0x732ce4: r0 = ModelBilgiKartData()
    //     0x732ce4: bl              #0x732dd0  ; AllocateModelBilgiKartDataStub -> ModelBilgiKartData (size=0x10)
    // 0x732ce8: mov             x3, x0
    // 0x732cec: r0 = "Mekke"
    //     0x732cec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x732cf0: ldr             x0, [x0, #0xdf0]
    // 0x732cf4: stur            x3, [fp, #-0x10]
    // 0x732cf8: StoreField: r3->field_7 = r0
    //     0x732cf8: stur            w0, [x3, #7]
    // 0x732cfc: ldur            x0, [fp, #-0x18]
    // 0x732d00: StoreField: r3->field_b = r0
    //     0x732d00: stur            w0, [x3, #0xb]
    // 0x732d04: r1 = Null
    //     0x732d04: mov             x1, NULL
    // 0x732d08: r2 = 2
    //     0x732d08: mov             x2, #2
    // 0x732d0c: r0 = AllocateArray()
    //     0x732d0c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x732d10: stur            x0, [fp, #-0x18]
    // 0x732d14: r16 = "assets/images/medine.jpg"
    //     0x732d14: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df8] "assets/images/medine.jpg"
    //     0x732d18: ldr             x16, [x16, #0xdf8]
    // 0x732d1c: StoreField: r0->field_f = r16
    //     0x732d1c: stur            w16, [x0, #0xf]
    // 0x732d20: r1 = <String>
    //     0x732d20: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x732d24: r0 = AllocateGrowableArray()
    //     0x732d24: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x732d28: mov             x1, x0
    // 0x732d2c: ldur            x0, [fp, #-0x18]
    // 0x732d30: stur            x1, [fp, #-0x20]
    // 0x732d34: StoreField: r1->field_f = r0
    //     0x732d34: stur            w0, [x1, #0xf]
    // 0x732d38: r0 = 2
    //     0x732d38: mov             x0, #2
    // 0x732d3c: StoreField: r1->field_b = r0
    //     0x732d3c: stur            w0, [x1, #0xb]
    // 0x732d40: r0 = ModelBilgiKartData()
    //     0x732d40: bl              #0x732dd0  ; AllocateModelBilgiKartDataStub -> ModelBilgiKartData (size=0x10)
    // 0x732d44: mov             x3, x0
    // 0x732d48: r0 = "Medine"
    //     0x732d48: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x732d4c: ldr             x0, [x0, #0xe00]
    // 0x732d50: stur            x3, [fp, #-0x18]
    // 0x732d54: StoreField: r3->field_7 = r0
    //     0x732d54: stur            w0, [x3, #7]
    // 0x732d58: ldur            x0, [fp, #-0x20]
    // 0x732d5c: StoreField: r3->field_b = r0
    //     0x732d5c: stur            w0, [x3, #0xb]
    // 0x732d60: r1 = Null
    //     0x732d60: mov             x1, NULL
    // 0x732d64: r2 = 4
    //     0x732d64: mov             x2, #4
    // 0x732d68: r0 = AllocateArray()
    //     0x732d68: bl              #0x9280a0  ; AllocateArrayStub
    // 0x732d6c: mov             x2, x0
    // 0x732d70: ldur            x0, [fp, #-0x10]
    // 0x732d74: stur            x2, [fp, #-0x20]
    // 0x732d78: StoreField: r2->field_f = r0
    //     0x732d78: stur            w0, [x2, #0xf]
    // 0x732d7c: ldur            x0, [fp, #-0x18]
    // 0x732d80: StoreField: r2->field_13 = r0
    //     0x732d80: stur            w0, [x2, #0x13]
    // 0x732d84: r1 = <ModelBilgiKartData>
    //     0x732d84: add             x1, PP, #0x11, lsl #12  ; [pp+0x11e08] TypeArguments: <ModelBilgiKartData>
    //     0x732d88: ldr             x1, [x1, #0xe08]
    // 0x732d8c: r0 = AllocateGrowableArray()
    //     0x732d8c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x732d90: ldur            x1, [fp, #-0x20]
    // 0x732d94: StoreField: r0->field_f = r1
    //     0x732d94: stur            w1, [x0, #0xf]
    // 0x732d98: r1 = 4
    //     0x732d98: mov             x1, #4
    // 0x732d9c: StoreField: r0->field_b = r1
    //     0x732d9c: stur            w1, [x0, #0xb]
    // 0x732da0: ldur            x1, [fp, #-8]
    // 0x732da4: StoreField: r1->field_b = r0
    //     0x732da4: stur            w0, [x1, #0xb]
    //     0x732da8: ldurb           w16, [x1, #-1]
    //     0x732dac: ldurb           w17, [x0, #-1]
    //     0x732db0: and             x16, x17, x16, lsr #2
    //     0x732db4: tst             x16, HEAP, lsr #32
    //     0x732db8: b.eq            #0x732dc0
    //     0x732dbc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x732dc0: r0 = Null
    //     0x732dc0: mov             x0, NULL
    // 0x732dc4: LeaveFrame
    //     0x732dc4: mov             SP, fp
    //     0x732dc8: ldp             fp, lr, [SP], #0x10
    // 0x732dcc: ret
    //     0x732dcc: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x7ed2ac, size: 0x4c4
    // 0x7ed2ac: EnterFrame
    //     0x7ed2ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7ed2b0: mov             fp, SP
    // 0x7ed2b4: AllocStack(0x68)
    //     0x7ed2b4: sub             SP, SP, #0x68
    // 0x7ed2b8: SetupParameters(GezilecekYerlerScreen this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7ed2b8: stur            x1, [fp, #-8]
    //     0x7ed2bc: stur            x2, [fp, #-0x10]
    // 0x7ed2c0: CheckStackOverflow
    //     0x7ed2c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ed2c4: cmp             SP, x16
    //     0x7ed2c8: b.ls            #0x7ed75c
    // 0x7ed2cc: r1 = 2
    //     0x7ed2cc: mov             x1, #2
    // 0x7ed2d0: r0 = AllocateContext()
    //     0x7ed2d0: bl              #0x927010  ; AllocateContextStub
    // 0x7ed2d4: mov             x2, x0
    // 0x7ed2d8: ldur            x0, [fp, #-8]
    // 0x7ed2dc: stur            x2, [fp, #-0x18]
    // 0x7ed2e0: StoreField: r2->field_f = r0
    //     0x7ed2e0: stur            w0, [x2, #0xf]
    // 0x7ed2e4: ldur            x1, [fp, #-0x10]
    // 0x7ed2e8: StoreField: r2->field_13 = r1
    //     0x7ed2e8: stur            w1, [x2, #0x13]
    // 0x7ed2ec: r16 = 0.900000
    //     0x7ed2ec: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7ed2f0: ldr             x16, [x16, #0x190]
    // 0x7ed2f4: str             x16, [SP]
    // 0x7ed2f8: r1 = Instance_Color
    //     0x7ed2f8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ed2fc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ed2fc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ed300: ldr             x4, [x4, #0x198]
    // 0x7ed304: r0 = withValues()
    //     0x7ed304: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ed308: stur            x0, [fp, #-0x10]
    // 0x7ed30c: r0 = BoxDecoration()
    //     0x7ed30c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ed310: mov             x1, x0
    // 0x7ed314: ldur            x0, [fp, #-0x10]
    // 0x7ed318: stur            x1, [fp, #-0x20]
    // 0x7ed31c: StoreField: r1->field_7 = r0
    //     0x7ed31c: stur            w0, [x1, #7]
    // 0x7ed320: r0 = Instance_BoxShape
    //     0x7ed320: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7ed324: ldr             x0, [x0, #0x1a0]
    // 0x7ed328: StoreField: r1->field_23 = r0
    //     0x7ed328: stur            w0, [x1, #0x23]
    // 0x7ed32c: r0 = Icon()
    //     0x7ed32c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ed330: mov             x3, x0
    // 0x7ed334: r0 = Instance_IconData
    //     0x7ed334: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x7ed338: ldr             x0, [x0, #0x1a8]
    // 0x7ed33c: stur            x3, [fp, #-0x10]
    // 0x7ed340: StoreField: r3->field_b = r0
    //     0x7ed340: stur            w0, [x3, #0xb]
    // 0x7ed344: r0 = Instance_Color
    //     0x7ed344: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ed348: ldr             x0, [x0, #0xb88]
    // 0x7ed34c: StoreField: r3->field_23 = r0
    //     0x7ed34c: stur            w0, [x3, #0x23]
    // 0x7ed350: ldur            x2, [fp, #-0x18]
    // 0x7ed354: r1 = Function '<anonymous closure>':.
    //     0x7ed354: add             x1, PP, #0x12, lsl #12  ; [pp+0x123f0] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ed358: ldr             x1, [x1, #0x3f0]
    // 0x7ed35c: r0 = AllocateClosure()
    //     0x7ed35c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ed360: stur            x0, [fp, #-0x28]
    // 0x7ed364: r0 = IconButton()
    //     0x7ed364: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7ed368: mov             x1, x0
    // 0x7ed36c: ldur            x0, [fp, #-0x28]
    // 0x7ed370: stur            x1, [fp, #-0x30]
    // 0x7ed374: StoreField: r1->field_3b = r0
    //     0x7ed374: stur            w0, [x1, #0x3b]
    // 0x7ed378: r0 = false
    //     0x7ed378: add             x0, NULL, #0x30  ; false
    // 0x7ed37c: StoreField: r1->field_4f = r0
    //     0x7ed37c: stur            w0, [x1, #0x4f]
    // 0x7ed380: ldur            x2, [fp, #-0x10]
    // 0x7ed384: StoreField: r1->field_1f = r2
    //     0x7ed384: stur            w2, [x1, #0x1f]
    // 0x7ed388: r2 = Instance__IconButtonVariant
    //     0x7ed388: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7ed38c: ldr             x2, [x2, #0x1b8]
    // 0x7ed390: StoreField: r1->field_6f = r2
    //     0x7ed390: stur            w2, [x1, #0x6f]
    // 0x7ed394: r0 = Container()
    //     0x7ed394: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ed398: stur            x0, [fp, #-0x10]
    // 0x7ed39c: r16 = Instance_EdgeInsets
    //     0x7ed39c: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7ed3a0: ldr             x16, [x16, #0xde8]
    // 0x7ed3a4: ldur            lr, [fp, #-0x20]
    // 0x7ed3a8: stp             lr, x16, [SP, #8]
    // 0x7ed3ac: ldur            x16, [fp, #-0x30]
    // 0x7ed3b0: str             x16, [SP]
    // 0x7ed3b4: mov             x1, x0
    // 0x7ed3b8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x7ed3b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x7ed3bc: ldr             x4, [x4, #0x1c0]
    // 0x7ed3c0: r0 = Container()
    //     0x7ed3c0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ed3c4: r16 = 0.900000
    //     0x7ed3c4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7ed3c8: ldr             x16, [x16, #0x190]
    // 0x7ed3cc: str             x16, [SP]
    // 0x7ed3d0: r1 = Instance_Color
    //     0x7ed3d0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ed3d4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ed3d4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ed3d8: ldr             x4, [x4, #0x198]
    // 0x7ed3dc: r0 = withValues()
    //     0x7ed3dc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ed3e0: stur            x0, [fp, #-0x20]
    // 0x7ed3e4: r0 = Radius()
    //     0x7ed3e4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ed3e8: d0 = 20.000000
    //     0x7ed3e8: fmov            d0, #20.00000000
    // 0x7ed3ec: stur            x0, [fp, #-0x28]
    // 0x7ed3f0: StoreField: r0->field_7 = d0
    //     0x7ed3f0: stur            d0, [x0, #7]
    // 0x7ed3f4: StoreField: r0->field_f = d0
    //     0x7ed3f4: stur            d0, [x0, #0xf]
    // 0x7ed3f8: r0 = BorderRadius()
    //     0x7ed3f8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ed3fc: mov             x1, x0
    // 0x7ed400: ldur            x0, [fp, #-0x28]
    // 0x7ed404: stur            x1, [fp, #-0x30]
    // 0x7ed408: StoreField: r1->field_7 = r0
    //     0x7ed408: stur            w0, [x1, #7]
    // 0x7ed40c: StoreField: r1->field_b = r0
    //     0x7ed40c: stur            w0, [x1, #0xb]
    // 0x7ed410: StoreField: r1->field_f = r0
    //     0x7ed410: stur            w0, [x1, #0xf]
    // 0x7ed414: StoreField: r1->field_13 = r0
    //     0x7ed414: stur            w0, [x1, #0x13]
    // 0x7ed418: r0 = BoxDecoration()
    //     0x7ed418: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ed41c: mov             x1, x0
    // 0x7ed420: ldur            x0, [fp, #-0x20]
    // 0x7ed424: stur            x1, [fp, #-0x28]
    // 0x7ed428: StoreField: r1->field_7 = r0
    //     0x7ed428: stur            w0, [x1, #7]
    // 0x7ed42c: ldur            x0, [fp, #-0x30]
    // 0x7ed430: StoreField: r1->field_13 = r0
    //     0x7ed430: stur            w0, [x1, #0x13]
    // 0x7ed434: r0 = Instance_BoxShape
    //     0x7ed434: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ed438: ldr             x0, [x0, #0x1c8]
    // 0x7ed43c: StoreField: r1->field_23 = r0
    //     0x7ed43c: stur            w0, [x1, #0x23]
    // 0x7ed440: r0 = TextStyle()
    //     0x7ed440: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ed444: mov             x1, x0
    // 0x7ed448: r0 = true
    //     0x7ed448: add             x0, NULL, #0x20  ; true
    // 0x7ed44c: stur            x1, [fp, #-0x20]
    // 0x7ed450: StoreField: r1->field_7 = r0
    //     0x7ed450: stur            w0, [x1, #7]
    // 0x7ed454: r2 = Instance_Color
    //     0x7ed454: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ed458: ldr             x2, [x2, #0xb88]
    // 0x7ed45c: StoreField: r1->field_b = r2
    //     0x7ed45c: stur            w2, [x1, #0xb]
    // 0x7ed460: r2 = 18.000000
    //     0x7ed460: add             x2, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x7ed464: ldr             x2, [x2, #0xe08]
    // 0x7ed468: StoreField: r1->field_1f = r2
    //     0x7ed468: stur            w2, [x1, #0x1f]
    // 0x7ed46c: r2 = Instance_FontWeight
    //     0x7ed46c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ed470: ldr             x2, [x2, #0x1d0]
    // 0x7ed474: StoreField: r1->field_23 = r2
    //     0x7ed474: stur            w2, [x1, #0x23]
    // 0x7ed478: r0 = Text()
    //     0x7ed478: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ed47c: mov             x1, x0
    // 0x7ed480: r0 = "Gezilecek Yerler"
    //     0x7ed480: add             x0, PP, #0x12, lsl #12  ; [pp+0x123f8] "Gezilecek Yerler"
    //     0x7ed484: ldr             x0, [x0, #0x3f8]
    // 0x7ed488: stur            x1, [fp, #-0x30]
    // 0x7ed48c: StoreField: r1->field_b = r0
    //     0x7ed48c: stur            w0, [x1, #0xb]
    // 0x7ed490: ldur            x0, [fp, #-0x20]
    // 0x7ed494: StoreField: r1->field_13 = r0
    //     0x7ed494: stur            w0, [x1, #0x13]
    // 0x7ed498: r0 = Container()
    //     0x7ed498: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ed49c: stur            x0, [fp, #-0x20]
    // 0x7ed4a0: r16 = Instance_EdgeInsets
    //     0x7ed4a0: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7ed4a4: ldr             x16, [x16, #0x1e0]
    // 0x7ed4a8: ldur            lr, [fp, #-0x28]
    // 0x7ed4ac: stp             lr, x16, [SP, #8]
    // 0x7ed4b0: ldur            x16, [fp, #-0x30]
    // 0x7ed4b4: str             x16, [SP]
    // 0x7ed4b8: mov             x1, x0
    // 0x7ed4bc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ed4bc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ed4c0: ldr             x4, [x4, #0x1e8]
    // 0x7ed4c4: r0 = Container()
    //     0x7ed4c4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ed4c8: r0 = AppBar()
    //     0x7ed4c8: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7ed4cc: stur            x0, [fp, #-0x28]
    // 0x7ed4d0: r16 = Instance_Color
    //     0x7ed4d0: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7ed4d4: ldr             x16, [x16, #0x860]
    // 0x7ed4d8: r30 = 0.000000
    //     0x7ed4d8: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7ed4dc: stp             lr, x16, [SP, #0x10]
    // 0x7ed4e0: ldur            x16, [fp, #-0x10]
    // 0x7ed4e4: r30 = true
    //     0x7ed4e4: add             lr, NULL, #0x20  ; true
    // 0x7ed4e8: stp             lr, x16, [SP]
    // 0x7ed4ec: mov             x1, x0
    // 0x7ed4f0: ldur            x2, [fp, #-0x20]
    // 0x7ed4f4: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x7ed4f4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x7ed4f8: ldr             x4, [x4, #0x1f0]
    // 0x7ed4fc: r0 = AppBar()
    //     0x7ed4fc: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7ed500: ldur            x0, [fp, #-8]
    // 0x7ed504: LoadField: r1 = r0->field_b
    //     0x7ed504: ldur            w1, [x0, #0xb]
    // 0x7ed508: DecompressPointer r1
    //     0x7ed508: add             x1, x1, HEAP, lsl #32
    // 0x7ed50c: LoadField: r0 = r1->field_b
    //     0x7ed50c: ldur            w0, [x1, #0xb]
    // 0x7ed510: r2 = LoadInt32Instr(r0)
    //     0x7ed510: sbfx            x2, x0, #1, #0x1f
    // 0x7ed514: r1 = <Widget>
    //     0x7ed514: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ed518: r0 = _GrowableList()
    //     0x7ed518: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7ed51c: stur            x0, [fp, #-0x10]
    // 0x7ed520: LoadField: r1 = r0->field_b
    //     0x7ed520: ldur            w1, [x0, #0xb]
    // 0x7ed524: r2 = LoadInt32Instr(r1)
    //     0x7ed524: sbfx            x2, x1, #1, #0x1f
    // 0x7ed528: stur            x2, [fp, #-0x40]
    // 0x7ed52c: LoadField: r1 = r0->field_f
    //     0x7ed52c: ldur            w1, [x0, #0xf]
    // 0x7ed530: DecompressPointer r1
    //     0x7ed530: add             x1, x1, HEAP, lsl #32
    // 0x7ed534: stur            x1, [fp, #-8]
    // 0x7ed538: r4 = 0
    //     0x7ed538: mov             x4, #0
    // 0x7ed53c: ldur            x3, [fp, #-0x18]
    // 0x7ed540: stur            x4, [fp, #-0x38]
    // 0x7ed544: CheckStackOverflow
    //     0x7ed544: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ed548: cmp             SP, x16
    //     0x7ed54c: b.ls            #0x7ed764
    // 0x7ed550: cmp             x4, x2
    // 0x7ed554: b.ge            #0x7ed65c
    // 0x7ed558: r1 = 1
    //     0x7ed558: mov             x1, #1
    // 0x7ed55c: r0 = AllocateContext()
    //     0x7ed55c: bl              #0x927010  ; AllocateContextStub
    // 0x7ed560: mov             x3, x0
    // 0x7ed564: ldur            x2, [fp, #-0x18]
    // 0x7ed568: stur            x3, [fp, #-0x30]
    // 0x7ed56c: StoreField: r3->field_b = r2
    //     0x7ed56c: stur            w2, [x3, #0xb]
    // 0x7ed570: ldur            x4, [fp, #-0x38]
    // 0x7ed574: lsl             x0, x4, #1
    // 0x7ed578: StoreField: r3->field_f = r0
    //     0x7ed578: stur            w0, [x3, #0xf]
    // 0x7ed57c: LoadField: r0 = r2->field_f
    //     0x7ed57c: ldur            w0, [x2, #0xf]
    // 0x7ed580: DecompressPointer r0
    //     0x7ed580: add             x0, x0, HEAP, lsl #32
    // 0x7ed584: LoadField: r5 = r0->field_b
    //     0x7ed584: ldur            w5, [x0, #0xb]
    // 0x7ed588: DecompressPointer r5
    //     0x7ed588: add             x5, x5, HEAP, lsl #32
    // 0x7ed58c: LoadField: r0 = r5->field_b
    //     0x7ed58c: ldur            w0, [x5, #0xb]
    // 0x7ed590: r1 = LoadInt32Instr(r0)
    //     0x7ed590: sbfx            x1, x0, #1, #0x1f
    // 0x7ed594: mov             x0, x1
    // 0x7ed598: mov             x1, x4
    // 0x7ed59c: cmp             x1, x0
    // 0x7ed5a0: b.hs            #0x7ed76c
    // 0x7ed5a4: LoadField: r0 = r5->field_f
    //     0x7ed5a4: ldur            w0, [x5, #0xf]
    // 0x7ed5a8: DecompressPointer r0
    //     0x7ed5a8: add             x0, x0, HEAP, lsl #32
    // 0x7ed5ac: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x7ed5ac: add             x16, x0, x4, lsl #2
    //     0x7ed5b0: ldur            w1, [x16, #0xf]
    // 0x7ed5b4: DecompressPointer r1
    //     0x7ed5b4: add             x1, x1, HEAP, lsl #32
    // 0x7ed5b8: stur            x1, [fp, #-0x20]
    // 0x7ed5bc: r0 = BilgiKart()
    //     0x7ed5bc: bl              #0x7ed770  ; AllocateBilgiKartStub -> BilgiKart (size=0x14)
    // 0x7ed5c0: mov             x3, x0
    // 0x7ed5c4: ldur            x0, [fp, #-0x20]
    // 0x7ed5c8: stur            x3, [fp, #-0x48]
    // 0x7ed5cc: StoreField: r3->field_b = r0
    //     0x7ed5cc: stur            w0, [x3, #0xb]
    // 0x7ed5d0: ldur            x2, [fp, #-0x30]
    // 0x7ed5d4: r1 = Function '<anonymous closure>':.
    //     0x7ed5d4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12400] AnonymousClosure: (0x7ed77c), of [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] GezilecekYerlerScreen
    //     0x7ed5d8: ldr             x1, [x1, #0x400]
    // 0x7ed5dc: r0 = AllocateClosure()
    //     0x7ed5dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ed5e0: mov             x1, x0
    // 0x7ed5e4: ldur            x0, [fp, #-0x48]
    // 0x7ed5e8: StoreField: r0->field_f = r1
    //     0x7ed5e8: stur            w1, [x0, #0xf]
    // 0x7ed5ec: r0 = Padding()
    //     0x7ed5ec: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7ed5f0: mov             x2, x0
    // 0x7ed5f4: r0 = Instance_EdgeInsets
    //     0x7ed5f4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7ed5f8: ldr             x0, [x0, #0x1e0]
    // 0x7ed5fc: stur            x2, [fp, #-0x20]
    // 0x7ed600: StoreField: r2->field_f = r0
    //     0x7ed600: stur            w0, [x2, #0xf]
    // 0x7ed604: ldur            x1, [fp, #-0x48]
    // 0x7ed608: StoreField: r2->field_b = r1
    //     0x7ed608: stur            w1, [x2, #0xb]
    // 0x7ed60c: mov             x1, x2
    // 0x7ed610: r0 = _NativeScene._()
    //     0x7ed610: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x7ed614: ldur            x1, [fp, #-8]
    // 0x7ed618: ldur            x0, [fp, #-0x20]
    // 0x7ed61c: ldur            x2, [fp, #-0x38]
    // 0x7ed620: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7ed620: add             x25, x1, x2, lsl #2
    //     0x7ed624: add             x25, x25, #0xf
    //     0x7ed628: str             w0, [x25]
    //     0x7ed62c: tbz             w0, #0, #0x7ed648
    //     0x7ed630: ldurb           w16, [x1, #-1]
    //     0x7ed634: ldurb           w17, [x0, #-1]
    //     0x7ed638: and             x16, x17, x16, lsr #2
    //     0x7ed63c: tst             x16, HEAP, lsr #32
    //     0x7ed640: b.eq            #0x7ed648
    //     0x7ed644: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ed648: add             x4, x2, #1
    // 0x7ed64c: ldur            x0, [fp, #-0x10]
    // 0x7ed650: ldur            x1, [fp, #-8]
    // 0x7ed654: ldur            x2, [fp, #-0x40]
    // 0x7ed658: b               #0x7ed53c
    // 0x7ed65c: ldur            x1, [fp, #-0x28]
    // 0x7ed660: r0 = Column()
    //     0x7ed660: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ed664: mov             x1, x0
    // 0x7ed668: r0 = Instance_Axis
    //     0x7ed668: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ed66c: stur            x1, [fp, #-8]
    // 0x7ed670: StoreField: r1->field_f = r0
    //     0x7ed670: stur            w0, [x1, #0xf]
    // 0x7ed674: r0 = Instance_MainAxisAlignment
    //     0x7ed674: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ed678: ldr             x0, [x0, #0x230]
    // 0x7ed67c: StoreField: r1->field_13 = r0
    //     0x7ed67c: stur            w0, [x1, #0x13]
    // 0x7ed680: r0 = Instance_MainAxisSize
    //     0x7ed680: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ed684: ldr             x0, [x0, #0x330]
    // 0x7ed688: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ed688: stur            w0, [x1, #0x17]
    // 0x7ed68c: r0 = Instance_CrossAxisAlignment
    //     0x7ed68c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ed690: ldr             x0, [x0, #0x338]
    // 0x7ed694: StoreField: r1->field_1b = r0
    //     0x7ed694: stur            w0, [x1, #0x1b]
    // 0x7ed698: r0 = Instance_VerticalDirection
    //     0x7ed698: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ed69c: ldr             x0, [x0, #0x340]
    // 0x7ed6a0: StoreField: r1->field_23 = r0
    //     0x7ed6a0: stur            w0, [x1, #0x23]
    // 0x7ed6a4: r0 = Instance_Clip
    //     0x7ed6a4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ed6a8: ldr             x0, [x0, #0x348]
    // 0x7ed6ac: StoreField: r1->field_2b = r0
    //     0x7ed6ac: stur            w0, [x1, #0x2b]
    // 0x7ed6b0: StoreField: r1->field_2f = rZR
    //     0x7ed6b0: stur            xzr, [x1, #0x2f]
    // 0x7ed6b4: ldur            x0, [fp, #-0x10]
    // 0x7ed6b8: StoreField: r1->field_b = r0
    //     0x7ed6b8: stur            w0, [x1, #0xb]
    // 0x7ed6bc: r0 = SafeArea()
    //     0x7ed6bc: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x7ed6c0: mov             x1, x0
    // 0x7ed6c4: r0 = true
    //     0x7ed6c4: add             x0, NULL, #0x20  ; true
    // 0x7ed6c8: stur            x1, [fp, #-0x10]
    // 0x7ed6cc: StoreField: r1->field_b = r0
    //     0x7ed6cc: stur            w0, [x1, #0xb]
    // 0x7ed6d0: StoreField: r1->field_f = r0
    //     0x7ed6d0: stur            w0, [x1, #0xf]
    // 0x7ed6d4: StoreField: r1->field_13 = r0
    //     0x7ed6d4: stur            w0, [x1, #0x13]
    // 0x7ed6d8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ed6d8: stur            w0, [x1, #0x17]
    // 0x7ed6dc: r2 = Instance_EdgeInsets
    //     0x7ed6dc: ldr             x2, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7ed6e0: StoreField: r1->field_1b = r2
    //     0x7ed6e0: stur            w2, [x1, #0x1b]
    // 0x7ed6e4: r2 = false
    //     0x7ed6e4: add             x2, NULL, #0x30  ; false
    // 0x7ed6e8: StoreField: r1->field_1f = r2
    //     0x7ed6e8: stur            w2, [x1, #0x1f]
    // 0x7ed6ec: ldur            x3, [fp, #-8]
    // 0x7ed6f0: StoreField: r1->field_23 = r3
    //     0x7ed6f0: stur            w3, [x1, #0x23]
    // 0x7ed6f4: r0 = Scaffold()
    //     0x7ed6f4: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7ed6f8: ldur            x1, [fp, #-0x28]
    // 0x7ed6fc: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ed6fc: stur            w1, [x0, #0x17]
    // 0x7ed700: ldur            x1, [fp, #-0x10]
    // 0x7ed704: StoreField: r0->field_1b = r1
    //     0x7ed704: stur            w1, [x0, #0x1b]
    // 0x7ed708: r1 = Instance_AlignmentDirectional
    //     0x7ed708: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7ed70c: ldr             x1, [x1, #0x350]
    // 0x7ed710: StoreField: r0->field_2f = r1
    //     0x7ed710: stur            w1, [x0, #0x2f]
    // 0x7ed714: r1 = Instance_Color
    //     0x7ed714: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ed718: StoreField: r0->field_4f = r1
    //     0x7ed718: stur            w1, [x0, #0x4f]
    // 0x7ed71c: r1 = true
    //     0x7ed71c: add             x1, NULL, #0x20  ; true
    // 0x7ed720: StoreField: r0->field_5f = r1
    //     0x7ed720: stur            w1, [x0, #0x5f]
    // 0x7ed724: r2 = Instance_DragStartBehavior
    //     0x7ed724: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7ed728: StoreField: r0->field_63 = r2
    //     0x7ed728: stur            w2, [x0, #0x63]
    // 0x7ed72c: r2 = false
    //     0x7ed72c: add             x2, NULL, #0x30  ; false
    // 0x7ed730: StoreField: r0->field_b = r2
    //     0x7ed730: stur            w2, [x0, #0xb]
    // 0x7ed734: StoreField: r0->field_f = r1
    //     0x7ed734: stur            w1, [x0, #0xf]
    // 0x7ed738: StoreField: r0->field_13 = r1
    //     0x7ed738: stur            w1, [x0, #0x13]
    // 0x7ed73c: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7ed73c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7ed740: ldr             x2, [x2, #0x358]
    // 0x7ed744: StoreField: r0->field_4b = r2
    //     0x7ed744: stur            w2, [x0, #0x4b]
    // 0x7ed748: StoreField: r0->field_6b = r1
    //     0x7ed748: stur            w1, [x0, #0x6b]
    // 0x7ed74c: StoreField: r0->field_6f = r1
    //     0x7ed74c: stur            w1, [x0, #0x6f]
    // 0x7ed750: LeaveFrame
    //     0x7ed750: mov             SP, fp
    //     0x7ed754: ldp             fp, lr, [SP], #0x10
    // 0x7ed758: ret
    //     0x7ed758: ret             
    // 0x7ed75c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ed75c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ed760: b               #0x7ed2cc
    // 0x7ed764: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ed764: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ed768: b               #0x7ed550
    // 0x7ed76c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7ed76c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7ed77c, size: 0x234
    // 0x7ed77c: EnterFrame
    //     0x7ed77c: stp             fp, lr, [SP, #-0x10]!
    //     0x7ed780: mov             fp, SP
    // 0x7ed784: AllocStack(0x40)
    //     0x7ed784: sub             SP, SP, #0x40
    // 0x7ed788: SetupParameters([dynamic _ /* r0 */])
    //     0x7ed788: ldr             x0, [fp, #0x10]
    //     0x7ed78c: ldur            w2, [x0, #0x17]
    //     0x7ed790: add             x2, x2, HEAP, lsl #32
    //     0x7ed794: stur            x2, [fp, #-0x10]
    // 0x7ed798: CheckStackOverflow
    //     0x7ed798: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ed79c: cmp             SP, x16
    //     0x7ed7a0: b.ls            #0x7ed9a0
    // 0x7ed7a4: LoadField: r3 = r2->field_b
    //     0x7ed7a4: ldur            w3, [x2, #0xb]
    // 0x7ed7a8: DecompressPointer r3
    //     0x7ed7a8: add             x3, x3, HEAP, lsl #32
    // 0x7ed7ac: stur            x3, [fp, #-8]
    // 0x7ed7b0: LoadField: r0 = r3->field_f
    //     0x7ed7b0: ldur            w0, [x3, #0xf]
    // 0x7ed7b4: DecompressPointer r0
    //     0x7ed7b4: add             x0, x0, HEAP, lsl #32
    // 0x7ed7b8: LoadField: r4 = r0->field_b
    //     0x7ed7b8: ldur            w4, [x0, #0xb]
    // 0x7ed7bc: DecompressPointer r4
    //     0x7ed7bc: add             x4, x4, HEAP, lsl #32
    // 0x7ed7c0: LoadField: r0 = r2->field_f
    //     0x7ed7c0: ldur            w0, [x2, #0xf]
    // 0x7ed7c4: DecompressPointer r0
    //     0x7ed7c4: add             x0, x0, HEAP, lsl #32
    // 0x7ed7c8: LoadField: r1 = r4->field_b
    //     0x7ed7c8: ldur            w1, [x4, #0xb]
    // 0x7ed7cc: r5 = LoadInt32Instr(r0)
    //     0x7ed7cc: sbfx            x5, x0, #1, #0x1f
    //     0x7ed7d0: tbz             w0, #0, #0x7ed7d8
    //     0x7ed7d4: ldur            x5, [x0, #7]
    // 0x7ed7d8: r0 = LoadInt32Instr(r1)
    //     0x7ed7d8: sbfx            x0, x1, #1, #0x1f
    // 0x7ed7dc: mov             x1, x5
    // 0x7ed7e0: cmp             x1, x0
    // 0x7ed7e4: b.hs            #0x7ed9a8
    // 0x7ed7e8: LoadField: r0 = r4->field_f
    //     0x7ed7e8: ldur            w0, [x4, #0xf]
    // 0x7ed7ec: DecompressPointer r0
    //     0x7ed7ec: add             x0, x0, HEAP, lsl #32
    // 0x7ed7f0: ArrayLoad: r1 = r0[r5]  ; Unknown_4
    //     0x7ed7f0: add             x16, x0, x5, lsl #2
    //     0x7ed7f4: ldur            w1, [x16, #0xf]
    // 0x7ed7f8: DecompressPointer r1
    //     0x7ed7f8: add             x1, x1, HEAP, lsl #32
    // 0x7ed7fc: LoadField: r0 = r1->field_7
    //     0x7ed7fc: ldur            w0, [x1, #7]
    // 0x7ed800: DecompressPointer r0
    //     0x7ed800: add             x0, x0, HEAP, lsl #32
    // 0x7ed804: r16 = "Mekke"
    //     0x7ed804: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7ed808: ldr             x16, [x16, #0xdf0]
    // 0x7ed80c: stp             x16, x0, [SP]
    // 0x7ed810: r0 = ==()
    //     0x7ed810: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x7ed814: tbnz            w0, #4, #0x7ed898
    // 0x7ed818: ldur            x2, [fp, #-8]
    // 0x7ed81c: LoadField: r0 = r2->field_13
    //     0x7ed81c: ldur            w0, [x2, #0x13]
    // 0x7ed820: DecompressPointer r0
    //     0x7ed820: add             x0, x0, HEAP, lsl #32
    // 0x7ed824: stur            x0, [fp, #-0x18]
    // 0x7ed828: r1 = Function '<anonymous closure>':.
    //     0x7ed828: add             x1, PP, #0x12, lsl #12  ; [pp+0x12408] AnonymousClosure: (0x7edbf8), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] GezilecekYerlerScreen::<anonymous closure> (0x7ed77c)
    //     0x7ed82c: ldr             x1, [x1, #0x408]
    // 0x7ed830: r2 = Null
    //     0x7ed830: mov             x2, NULL
    // 0x7ed834: r0 = AllocateClosure()
    //     0x7ed834: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ed838: r1 = Null
    //     0x7ed838: mov             x1, NULL
    // 0x7ed83c: stur            x0, [fp, #-0x20]
    // 0x7ed840: r0 = MaterialPageRoute()
    //     0x7ed840: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x7ed844: mov             x4, x0
    // 0x7ed848: ldur            x0, [fp, #-0x20]
    // 0x7ed84c: stur            x4, [fp, #-0x28]
    // 0x7ed850: StoreField: r4->field_a3 = r0
    //     0x7ed850: stur            w0, [x4, #0xa3]
    // 0x7ed854: r3 = true
    //     0x7ed854: add             x3, NULL, #0x20  ; true
    // 0x7ed858: StoreField: r4->field_a7 = r3
    //     0x7ed858: stur            w3, [x4, #0xa7]
    // 0x7ed85c: r5 = false
    //     0x7ed85c: add             x5, NULL, #0x30  ; false
    // 0x7ed860: StoreField: r4->field_97 = r5
    //     0x7ed860: stur            w5, [x4, #0x97]
    // 0x7ed864: StoreField: r4->field_9b = r3
    //     0x7ed864: stur            w3, [x4, #0x9b]
    // 0x7ed868: StoreField: r4->field_9f = r5
    //     0x7ed868: stur            w5, [x4, #0x9f]
    // 0x7ed86c: mov             x1, x4
    // 0x7ed870: r2 = Null
    //     0x7ed870: mov             x2, NULL
    // 0x7ed874: r3 = Null
    //     0x7ed874: mov             x3, NULL
    // 0x7ed878: r0 = ModalRoute()
    //     0x7ed878: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7ed87c: ldur            x16, [fp, #-0x18]
    // 0x7ed880: stp             x16, NULL, [SP, #8]
    // 0x7ed884: ldur            x16, [fp, #-0x28]
    // 0x7ed888: str             x16, [SP]
    // 0x7ed88c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7ed88c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7ed890: r0 = push()
    //     0x7ed890: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7ed894: b               #0x7ed990
    // 0x7ed898: ldur            x0, [fp, #-0x10]
    // 0x7ed89c: ldur            x2, [fp, #-8]
    // 0x7ed8a0: r3 = true
    //     0x7ed8a0: add             x3, NULL, #0x20  ; true
    // 0x7ed8a4: r5 = false
    //     0x7ed8a4: add             x5, NULL, #0x30  ; false
    // 0x7ed8a8: LoadField: r1 = r2->field_f
    //     0x7ed8a8: ldur            w1, [x2, #0xf]
    // 0x7ed8ac: DecompressPointer r1
    //     0x7ed8ac: add             x1, x1, HEAP, lsl #32
    // 0x7ed8b0: LoadField: r4 = r1->field_b
    //     0x7ed8b0: ldur            w4, [x1, #0xb]
    // 0x7ed8b4: DecompressPointer r4
    //     0x7ed8b4: add             x4, x4, HEAP, lsl #32
    // 0x7ed8b8: LoadField: r1 = r0->field_f
    //     0x7ed8b8: ldur            w1, [x0, #0xf]
    // 0x7ed8bc: DecompressPointer r1
    //     0x7ed8bc: add             x1, x1, HEAP, lsl #32
    // 0x7ed8c0: LoadField: r0 = r4->field_b
    //     0x7ed8c0: ldur            w0, [x4, #0xb]
    // 0x7ed8c4: r6 = LoadInt32Instr(r1)
    //     0x7ed8c4: sbfx            x6, x1, #1, #0x1f
    //     0x7ed8c8: tbz             w1, #0, #0x7ed8d0
    //     0x7ed8cc: ldur            x6, [x1, #7]
    // 0x7ed8d0: r1 = LoadInt32Instr(r0)
    //     0x7ed8d0: sbfx            x1, x0, #1, #0x1f
    // 0x7ed8d4: mov             x0, x1
    // 0x7ed8d8: mov             x1, x6
    // 0x7ed8dc: cmp             x1, x0
    // 0x7ed8e0: b.hs            #0x7ed9ac
    // 0x7ed8e4: LoadField: r0 = r4->field_f
    //     0x7ed8e4: ldur            w0, [x4, #0xf]
    // 0x7ed8e8: DecompressPointer r0
    //     0x7ed8e8: add             x0, x0, HEAP, lsl #32
    // 0x7ed8ec: ArrayLoad: r1 = r0[r6]  ; Unknown_4
    //     0x7ed8ec: add             x16, x0, x6, lsl #2
    //     0x7ed8f0: ldur            w1, [x16, #0xf]
    // 0x7ed8f4: DecompressPointer r1
    //     0x7ed8f4: add             x1, x1, HEAP, lsl #32
    // 0x7ed8f8: LoadField: r0 = r1->field_7
    //     0x7ed8f8: ldur            w0, [x1, #7]
    // 0x7ed8fc: DecompressPointer r0
    //     0x7ed8fc: add             x0, x0, HEAP, lsl #32
    // 0x7ed900: r16 = "Medine"
    //     0x7ed900: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x7ed904: ldr             x16, [x16, #0xe00]
    // 0x7ed908: stp             x16, x0, [SP]
    // 0x7ed90c: r0 = ==()
    //     0x7ed90c: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x7ed910: tbnz            w0, #4, #0x7ed990
    // 0x7ed914: ldur            x0, [fp, #-8]
    // 0x7ed918: LoadField: r3 = r0->field_13
    //     0x7ed918: ldur            w3, [x0, #0x13]
    // 0x7ed91c: DecompressPointer r3
    //     0x7ed91c: add             x3, x3, HEAP, lsl #32
    // 0x7ed920: stur            x3, [fp, #-0x10]
    // 0x7ed924: r1 = Function '<anonymous closure>':.
    //     0x7ed924: add             x1, PP, #0x12, lsl #12  ; [pp+0x12410] AnonymousClosure: (0x7ed9b0), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] GezilecekYerlerScreen::<anonymous closure> (0x7ed77c)
    //     0x7ed928: ldr             x1, [x1, #0x410]
    // 0x7ed92c: r2 = Null
    //     0x7ed92c: mov             x2, NULL
    // 0x7ed930: r0 = AllocateClosure()
    //     0x7ed930: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ed934: r1 = Null
    //     0x7ed934: mov             x1, NULL
    // 0x7ed938: stur            x0, [fp, #-8]
    // 0x7ed93c: r0 = MaterialPageRoute()
    //     0x7ed93c: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x7ed940: mov             x4, x0
    // 0x7ed944: ldur            x0, [fp, #-8]
    // 0x7ed948: stur            x4, [fp, #-0x18]
    // 0x7ed94c: StoreField: r4->field_a3 = r0
    //     0x7ed94c: stur            w0, [x4, #0xa3]
    // 0x7ed950: r0 = true
    //     0x7ed950: add             x0, NULL, #0x20  ; true
    // 0x7ed954: StoreField: r4->field_a7 = r0
    //     0x7ed954: stur            w0, [x4, #0xa7]
    // 0x7ed958: r1 = false
    //     0x7ed958: add             x1, NULL, #0x30  ; false
    // 0x7ed95c: StoreField: r4->field_97 = r1
    //     0x7ed95c: stur            w1, [x4, #0x97]
    // 0x7ed960: StoreField: r4->field_9b = r0
    //     0x7ed960: stur            w0, [x4, #0x9b]
    // 0x7ed964: StoreField: r4->field_9f = r1
    //     0x7ed964: stur            w1, [x4, #0x9f]
    // 0x7ed968: mov             x1, x4
    // 0x7ed96c: r2 = Null
    //     0x7ed96c: mov             x2, NULL
    // 0x7ed970: r3 = Null
    //     0x7ed970: mov             x3, NULL
    // 0x7ed974: r0 = ModalRoute()
    //     0x7ed974: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7ed978: ldur            x16, [fp, #-0x10]
    // 0x7ed97c: stp             x16, NULL, [SP, #8]
    // 0x7ed980: ldur            x16, [fp, #-0x18]
    // 0x7ed984: str             x16, [SP]
    // 0x7ed988: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7ed988: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7ed98c: r0 = push()
    //     0x7ed98c: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7ed990: r0 = Null
    //     0x7ed990: mov             x0, NULL
    // 0x7ed994: LeaveFrame
    //     0x7ed994: mov             SP, fp
    //     0x7ed998: ldp             fp, lr, [SP], #0x10
    // 0x7ed99c: ret
    //     0x7ed99c: ret             
    // 0x7ed9a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ed9a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ed9a4: b               #0x7ed7a4
    // 0x7ed9a8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7ed9a8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7ed9ac: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7ed9ac: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] MedineGezilecekYerlerScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7ed9b0, size: 0x40
    // 0x7ed9b0: EnterFrame
    //     0x7ed9b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7ed9b4: mov             fp, SP
    // 0x7ed9b8: AllocStack(0x8)
    //     0x7ed9b8: sub             SP, SP, #8
    // 0x7ed9bc: CheckStackOverflow
    //     0x7ed9bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ed9c0: cmp             SP, x16
    //     0x7ed9c4: b.ls            #0x7ed9e8
    // 0x7ed9c8: r0 = MedineGezilecekYerlerScreen()
    //     0x7ed9c8: bl              #0x7edbec  ; AllocateMedineGezilecekYerlerScreenStub -> MedineGezilecekYerlerScreen (size=0x10)
    // 0x7ed9cc: mov             x1, x0
    // 0x7ed9d0: stur            x0, [fp, #-8]
    // 0x7ed9d4: r0 = MedineGezilecekYerlerScreen()
    //     0x7ed9d4: bl              #0x7ed9f0  ; [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] MedineGezilecekYerlerScreen::MedineGezilecekYerlerScreen
    // 0x7ed9d8: ldur            x0, [fp, #-8]
    // 0x7ed9dc: LeaveFrame
    //     0x7ed9dc: mov             SP, fp
    //     0x7ed9e0: ldp             fp, lr, [SP], #0x10
    // 0x7ed9e4: ret
    //     0x7ed9e4: ret             
    // 0x7ed9e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ed9e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ed9ec: b               #0x7ed9c8
  }
  [closure] MekkeGezilecekYerlerScreen <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7edbf8, size: 0x40
    // 0x7edbf8: EnterFrame
    //     0x7edbf8: stp             fp, lr, [SP, #-0x10]!
    //     0x7edbfc: mov             fp, SP
    // 0x7edc00: AllocStack(0x8)
    //     0x7edc00: sub             SP, SP, #8
    // 0x7edc04: CheckStackOverflow
    //     0x7edc04: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7edc08: cmp             SP, x16
    //     0x7edc0c: b.ls            #0x7edc30
    // 0x7edc10: r0 = MekkeGezilecekYerlerScreen()
    //     0x7edc10: bl              #0x7edfd0  ; AllocateMekkeGezilecekYerlerScreenStub -> MekkeGezilecekYerlerScreen (size=0x10)
    // 0x7edc14: mov             x1, x0
    // 0x7edc18: stur            x0, [fp, #-8]
    // 0x7edc1c: r0 = MekkeGezilecekYerlerScreen()
    //     0x7edc1c: bl              #0x7edc38  ; [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] MekkeGezilecekYerlerScreen::MekkeGezilecekYerlerScreen
    // 0x7edc20: ldur            x0, [fp, #-8]
    // 0x7edc24: LeaveFrame
    //     0x7edc24: mov             SP, fp
    //     0x7edc28: ldp             fp, lr, [SP], #0x10
    // 0x7edc2c: ret
    //     0x7edc2c: ret             
    // 0x7edc30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7edc30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7edc34: b               #0x7edc10
  }
}
